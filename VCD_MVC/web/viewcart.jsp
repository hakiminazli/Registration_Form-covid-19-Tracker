<%-- 
    Document   : viewcart
    Created on : Dec 28, 2020, 2:25:23 PM
    Author     : GATES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.VCD" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            h1 {text-align: center;}
            p {text-align: center;}
            div {text-align: center;}
        </style>        
    </head>
    <body bgcolor="#33CCFF">
        <h1>View Cart</h1>
        
        <div>
            <%
                ArrayList shoppingCart = (ArrayList)session.getAttribute("shoppingcart");
            %>    
                <table border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
                    <thead>
                        <tr>
                            <th>VCD TITLE</th>
                            <th>ACTOR</th>
                            <th>PRICE</th>
                            <th>QUANTITY</th>
                            <th>OPERATION</th>
                        </tr>
                    </thead>
                    <tbody>
            <%
                if (shoppingCart != null && (shoppingCart.size() > 0)) {
                
                    for (int index=0; index < shoppingCart.size();index++) {
                        VCD vcd = (VCD)shoppingCart.get(index);
            %>
                        <tr>
                            <td><%= vcd.getTitle() %></td>
                            <td><%= vcd.getActor() %></td>
                            <td><%= vcd.getPrice() %></td>
                            <td><%= vcd.getQuantity() %></td>
                            <td><a href="VCDDeleteServlet?index=<%= index %>">DELETE</a></td>
                        </tr>
            <%
                    }
                }
            %>   
                    </tbody>
                </table>
        </div>
                    
        <p>
            <a href="index.html">shopping</a>&nbsp;
            <a href="checkout.jsp">checkout</a>&nbsp;
            <a href="logout.jsp">logout/remove</a>
        </p>                    
    </body>
</html>
