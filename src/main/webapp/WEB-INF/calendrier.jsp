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
        <title>Calendrier</title>
    </head>
    <body>
        <header class="header-bar">
            <%@ include file="enTete.jsp" %>
        </header>
        <div class="container">
            <ul class="collection">
                <li class="collection-item avatar">
                    <img src="img/office.jpg" alt="" class="circle">
                    <span class="title">Titre de la formation</span>
                    <p>Lieu de la session<br>
                        <p class="aDroite">21 jan 2015</p>
                    </p>
                    <a href="#!" class="secondary-content"><i class="material-icons">today</i></a>
                </li>
                <li class="collection-item avatar">
                    <img src="img/office.jpg" alt="" class="circle">
                    <span class="title">Title</span>
                    <p>First Line <br>
                        <p class="aDroite">21 jan 2015</p>
                    </p>
                    <a href="#!" class="secondary-content"><i class="material-icons">today</i></a>
                </li>
                <li class="collection-item avatar">
                    <img src="img/office.jpg" alt="" class="circle">
                    <span class="title">Title</span>
                    <p>First Line <br>
                        <p class="aDroite">21 jan 2015</p>
                    </p>
                    <a href="#!" class="secondary-content"><i class="material-icons">today</i></a>
                </li>
                <li class="collection-item avatar">
                    <i class="material-icons circle red">play_arrow</i>
                    <span class="title">Title</span>
                    <p>First Line <br>
                        <p class="aDroite">21 jan 2015</p>
                    </p>
                    <a href="#!" class="secondary-content"><i class="material-icons">today</i></a>
                </li>
                <li class="collection-item avatar">
                    <i class="material-icons circle red">play_arrow</i>
                    <span class="title">Title</span>
                    <p>First Line <br>
                        <p class="aDroite">25 jan 2015</p>
                    </p>
                    <a href="#!" class="secondary-content"><i class="material-icons">today</i></a>
                </li>
            </ul>
            <div class="aDroite">
                <a class="btn waves-effect waves-teal btn-flat">More...</a>
            </div>
        </div>
        <footer>
            <%@ include file="piedDePage.jsp" %>
        </footer>
        <script type="text/javascript" src="./js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="./materialize/js/materialize.js"></script>
        <script type="text/javascript" src="./js/js.js"></script>
    </body>
</html>
