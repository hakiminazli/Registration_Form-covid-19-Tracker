<%-- 
    Document   : deleteresult
    Created on : Dec 28, 2020, 2:30:45 PM
    Author     : GATES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.VCD" %>

<%
    VCD vcd = (VCD)session.getAttribute("deletedvcd");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shoping Cart Add Result</title>
        
        <style>
            h1 {text-align: center;}
            p {text-align: center;}
            div {text-align: center;}
        </style>        
    </head>
    <body bgcolor="#33CCFF">
        <h1>Delete Result</h1>
        
        <p>VCD title = [<%= vcd.getTitle() %>] removed from your shopping cart!</p>
        
        <p>
            <a href="viewcart.jsp">view</a>&nbsp;
            <a href="index.html">shopping</a>&nbsp;
            <a href="checkout.jsp">checkout</a>&nbsp;
            <a href="logout.jsp">logout/remove</a>
        </p>       
    </body>
</html>
