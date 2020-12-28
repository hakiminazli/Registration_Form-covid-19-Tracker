<%-- 
    Document   : logout
    Created on : Dec 28, 2020, 2:36:56 PM
    Author     : GATES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% session.invalidate(); %>
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
        <h1>Shopping Cart Empty!</h1>
        <p>
            Please come again or click <a href="index.html">here</a> to shop/refill your cart
        </p>
    </body>
</html>
