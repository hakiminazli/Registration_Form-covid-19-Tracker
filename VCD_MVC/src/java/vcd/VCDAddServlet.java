/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vcd;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.VCD;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

/**
 *
 * @author GATES
 */
public class VCDAddServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();
        
        String vcdData = request.getParameter("vcd");
        int quantity = Integer.parseInt(request.getParameter("qty"));
        VCD vcd = getVCD(vcdData, quantity);
        
        ArrayList shoppingCart = (ArrayList)session.getAttribute("shoppingcart");
        
        if (shoppingCart == null) {

            shoppingCart = new ArrayList();
            shoppingCart.add(vcd);

        } else {

            boolean match = false;
            for(int i=0; i < shoppingCart.size(); i++) {

                VCD aVCD = (VCD)shoppingCart.get(i);

                if (aVCD.getTitle().equals(vcd.getTitle())) {
                    //meaning same vcd already exist in cart
                    //just change quantity, no need to add new vcd into cart
                    aVCD.setQuantity(aVCD.getQuantity() + vcd.getQuantity());

                    //update cart vcd content
                    shoppingCart.set(i, aVCD);
                    match = true;
                }
            }

            if (!match) {
                shoppingCart.add(vcd);
            }
        } 
        
        //update session
        session.setAttribute("shoppingcart", shoppingCart); 
        
        session.setAttribute("addedvcd", vcd);
        
        //redirect to addresult.jsp
        try (PrintWriter out = response.getWriter()) {    
            out.println("<script>");
            out.println("    window.location = '/VCD_MVC/addresult.jsp'");
            out.println("</script>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    VCD getVCD(String vcdData, int quantity) {

        StringTokenizer t = new StringTokenizer(vcdData, "|");
        
        String title = t.nextToken();
        String actor = t.nextToken();

        String price = t.nextToken();
        price = price.replace('R',' ').trim();
        price = price.replace('M',' ').trim();

        VCD vcd = new VCD();
        vcd.setTitle(title);
        vcd.setActor(actor);
        vcd.setPrice((new Double(price)).doubleValue());
        vcd.setQuantity(quantity);
        return vcd;        
    }

}
