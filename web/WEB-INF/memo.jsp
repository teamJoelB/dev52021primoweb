<%-- 
    Document   : newjspmemo
    Created on : 22 oct. 2021, 12:00:15
    Author     : joelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Memos</title>

        <link rel="stylesheet" href="css/style.css" >

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">


        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

    </head>
    <body>
         <%@include file="menu.jsp" %>
        <div class="container mt-5">
            <div class="row">
                <c:forEach items="${memos}" var="m">
                    <div class="col-sm-4">
                        <div class="card p-3 my-shadow">
                            <div class="row">
                                <div class="col-sm-8">
                                    <p class="text-secondary" style="font-size: large">${m.u.prenom}  ${m.u.nom} </p>
                                </div>
                                <div class="col-sm-4">
                                    <p class="grey-text">2021-12-02</p>
                                </div>
                            </div>
                            <div>
                                <p class="text-primary max-length">${m.memo}</p>
                            </div>
                        </div>
                            <br>
                    </div>


                </c:forEach>
            </div>
        </div>
    </body>
</html>
