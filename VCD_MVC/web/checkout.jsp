<%-- 
    Document   : checkout
    Created on : Dec 28, 2020, 2:35:22 PM
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
        <h1>Checkout</h1>
        
        <%
            ArrayList shoppingCart = (ArrayList)session.getAttribute("shoppingcart");
            if (shoppingCart != null && (shoppingCart.size() > 0)) {
        %>
                <div>
                <table border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
                    <thead>
                        <tr>
                            <th>VCD TITLE</th>
                            <th>ACTOR</th>
                            <th>PRICE</th>
                            <th>QUANTITY</th>        
                        </tr>
                    </thead>
                    <tbody>
        <%                
                        double total = 0;     
                        
                        for (int index=0; index < shoppingCart.size();index++) {
                            VCD vcd = (VCD)shoppingCart.get(index);
        %>                    
                            <tr>
                                <td><%= vcd.getTitle() %></td>
                                <td><%= vcd.getActor() %></td>
                                <td><%= vcd.getPrice() %></td>
                                <td><%= vcd.getQuantity() %></td>
                            </tr>
        <%                    
                            total = total + vcd.getPrice() * vcd.getQuantity();
                        }
                        
                        total += 0.005;
                        String amount = new Double(total).toString();
                        int n = amount.indexOf('.');
                        amount = amount.substring(0, n+3);  

                        //clear shoppingcart
                        session.invalidate();    
        %>                
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td style="font-weight: bold">TOTAL</td>
                            <td style="font-weight: bold"><%= amount %></td>
                            <td>&nbsp;</td>
                        </tr>
                    </tbody>    
                <table>  
                </div>    
                <p>
                    <a href="index.html">Shop some more!</a>&nbsp;
                </p>  
        <%        
            } else {
        %>
                <p>Shopping Cart Empty!</p>
                <p>
                    <a href="index.html">continue shopping?</a>&nbsp;
                </p>    
        <%
            }
        %>
    </body>
</html>
