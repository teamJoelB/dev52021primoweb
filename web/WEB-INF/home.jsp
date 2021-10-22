<%-- 
    Document   : hhome
    Created on : 20 oct. 2021, 11:00:57
    Author     : joelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        
        <%@include file="menu.jsp" %>
        
        <div class="container mt-5">
        <h1 style="color: steelblue; text-align: center">Bonjour nous somme sur la page de home ( ${name.prenom} ${name.nom} )</h1>
    </div>
    </body>
</html>
