<%-- 
    Document   : error
    Created on : 4 déc. 2015, 12:36:02
    Author     : java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="./css/page.css"  media="screen,projection"/>

        <link type="text/css" rel="stylesheet" href="./css/styles.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="./materialize/css/materialize.css"  media="screen,projection"/>

        <title>Erreur</title>
    </head>
    <body>
        <div id='containerDiv'>
            <header class="header-bar">
                <%@ include file="../includes/enTete.jsp" %>
            </header>
            <div class="container">
                <div class="row">
                    <div class="col s8 offset-s2 grid-example" style="text-align: center;">
                        <img class="z-depth-2 responsive-img" src="/Projet_LO54/img/error.jpg">
                    </div>
                </div>

            </div>
        </div>

        <div id='footerDiv'>
            <%@ include file="../includes/piedDePage.jsp" %>
        </div>

        <script type="text/javascript" src="./js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="./materialize/js/materialize.js"></script>
        <script type="text/javascript" src="./js/js.js"></script>
    </body>
</html>
