<%-- 
    Document   : inscription
    Created on : 21 oct. 2021, 12:21:35
    Author     : joelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscription</title>

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
        <div style="margin-top: 20px">
            <div style="margin: auto; width: 40%">
                <form action="inscription" method="POST">
                    <div class="card p-5 my-shadow">
                        <p class="lt-space text-secondary text-center">INSCRIPTION</p>
                        <div class="form-group">
                            <label class="grey-text">Nom</label>
                            <input name="nom" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="grey-text">Prenom</label>
                            <input name="prenom" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="grey-text">Login</label>
                            <input name="login" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="grey-text">Password</label>
                            <input name="password" type="password" class="form-control">
                        </div>
                        <button type="submit" class="btn purple-gradient btn-sm">inscription</button>
                        <button type="button" onclick="window.location.href='login'" class="btn btn-link">Vous avez déja un compte ?</button>
                        <p class="text-danger text-center">${msg}</p>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
