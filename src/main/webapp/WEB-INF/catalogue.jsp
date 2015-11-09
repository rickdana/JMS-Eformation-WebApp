<%-- 
    Document   : catalogue
    Created on : 28 oct. 2015, 12:40:59
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
        <title>JSP Page</title>
    </head>
    <body>
        <header class="header-bar">
            <%@ include file="enTete.jsp" %>
        </header>
        <div class="container">
            <div class="row">
                <div class="col s4">
                      <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="/Projet_LO54/img/office.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Titre de la formation<i class="material-icons right">more_vert</i></span>
                            <p><a href="/Projet_LO54/formation">En savoir plus !</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Titre de la formation<i class="material-icons right">close</i></span>
                            <p>Ceci est un petit résumé !...</p>
                            <p class="regBtn">
                                <a href="/Projet_LO54/formation" class="btn waves-effect waves-light" type="submit" name="action">S'inscrire
                                    <i class="material-icons right">send</i>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                      <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="/Projet_LO54/img/office.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                      <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="/Projet_LO54/img/office.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s4">
                      <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="/Projet_LO54/img/office.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                      <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="/Projet_LO54/img/office.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                      <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="/Projet_LO54/img/office.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="openModal" class="fixed-action-btn" style="bottom: 45px; right: 24px;">
                <a class="btn-floating btn-large waves-effect waves-light modal-trigger red" href="#modal1">
                    <i class="large material-icons">search</i>
                </a>            
            </div>
            <!-- Modal Structure -->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <h4>Modal Header</h4>
                    <form method="post">
                        <div class="input-field col s4">
                            <i class="material-icons prefix">spellcheck</i>
                            <input id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Mots clés</label>
                        </div>

                        <div class="input-field col s4">
                            <i class="material-icons prefix">schedule</i>
                            <input id="datepicker" type="date" class="datepicker">
                        </div>
                        <div class="input-field col s12">
                            <select class="browser-default">
                                <option value="" disabled selected>Choose your option</option>
                                <option value="1">Option 1</option>
                                <option value="2">Option 2</option>
                                <option value="3">Option 3</option>
                            </select>

                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button id="modalValideBtn" class="btn waves-effect waves-light" type="submit" name="action">Rechercher
                        <i class="material-icons right">search</i>
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
