<%-- 
    Document   : calendrier
    Created on : 12 nov. 2015, 10:14:08
    Author     : java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="./css/styles.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="./materialize/css/materialize.css"  media="screen,projection"/>
        <title>Login</title>
    </head>
    <body>
        <header class="header-bar">
            <%@ include file="enTete.jsp" %>
        </header>
        <div class="container">
            <div class="row login">
                <form class=" col s6 offset-s4 login form_login" method="POST">
                <div class="input-field">
                    <i class="material-icons prefix">perm_identity</i>
                    <input id="login" type="text"  name= "login" value=""class="validate">
                    <label for="login">Login</label>
                </div>
                <div class="input-field">
                    <i class="material-icons prefix">lock_outline</i>
                    <input id="motDePasse" type="password" name="motDePasse" value="" class="validate">
                    <label for="motDePasse">Mot de passe</label>
                </div>
                <div class="">
                    <button id="login_val_btn" class="waves-effect waves-light cyan btn-flat" value="user">Connexion</button>
                    <button id="login_can_btn" class="waves-effect waves-light red btn-flat">Annuler</button>
                </div>
            </form>
            </div>
            <div class="row"></div>
            <div class="row"></div>
        </div>
        <footer>
            <%@ include file="piedDePage.jsp" %>
        </footer>
        <script type="text/javascript" src="./js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="./materialize/js/materialize.js"></script>
        <script type="text/javascript" src="./js/js.js"></script>
    </body>
</html>
