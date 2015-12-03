<%-- 
    Document   : formation
    Created on : 29 oct. 2015, 22:15:53
    Author     : java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="./css/styles.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="./materialize/css/materialize.css"  media="screen,projection"/>
        
        <title>JSP Page</title>
    </head>
    <body>
        <header class="header-bar">
            <%@ include file="enTete.jsp" %>
        </header>
        <div class="container">
            <div class="row">
                <div class="col s8 offset-s2 grid-example">
                    <img class="img-box z-depth-2 responsive-img" src="/Projet_LO54/img/office.jpg">
                </div>
            </div>
            <div class="row">
                <div class="col s10 offset-s1">
                    <h4><c:out value="${session.course.title}" default="Titre de la formation"/> </h4>
                    <p class="text-align">
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod 
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                        fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in 
                        culpa qui officia deserunt mollit anim id est laborum."
                    </p>
                </div>
            </div>
            <div id="openModalReg" class="fixed-action-btn" style="bottom: 45px; right: 24px;">
                <a class="btn-floating btn-large waves-effect waves-light modal-trigger red" href="#modal1">
                    <i class="large material-icons">note_add</i>
                </a>            
            </div>
            <!-- Modal Structure -->
            <div id="modal2" class="modal">
                <div class="modal-content">
                    <h4>Modal Header</h4>
                    <div class="row">
                        <form class="col s12" method="POST">
                            <div class="row">
                                <div class="input-field col s6">
                                    <input placeholder="Prénom" id="first_name" type="text" class="validate">
                                    <label for="first_name">Prénom</label>
                                </div>
                                <div class="input-field col s6">
                                    <input placeholder="Nom" id="last_name" type="text" class="validate" required>
                                    <label for="last_name">Nom</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                     <input placeholder="0x xx xx xx xx" id="tel" type="tel" class="validate">
                                     <label for="tel">N° téléphone</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input placeholder="adresse@email.com" id="email" type="email" class="validate" required>
                                    <label for="email">Email</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input placeholder="25 rue dupont" id="adresse" type="text" class="validate" required>
                                    <label for="adresse">Adresse</label>
                                </div>
                            </div>
                            
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="modalValideBtnReg" class="btn waves-effect waves-light" type="submit" name="action">S'inscrire
                        <i class="material-icons right">send</i>
                    </button>
                </div>

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
