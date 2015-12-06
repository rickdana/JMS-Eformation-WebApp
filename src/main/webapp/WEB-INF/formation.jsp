<%-- 
    Document   : formation2
    Created on : 4 déc. 2015, 12:56:24
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
        <link type="text/css" rel="stylesheet" href="./css/page.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="./materialize/css/materialize.css"  media="screen,projection"/>
        
        <title>Inscription Formation</title>
    </head>
    <body>
        <div id="containerDiv">
            <div id="contentDiv">
                <header class="header-bar">
                    <%@ include file="includes/enTete.jsp" %>
                </header>
                <div class="container">             
                    <div class="row">
                        <div class="col s5 offset-s1">                            
                            <div>
                                <table id="detailSession">
                                    <thead><th>Début</th> <th>Fin</th>  <th>Ville</th></thead>
                                    <tr>
                                        <td class="dateSession">${session.startDate} </td> 
                                        <td class="dateSession">${session.endDate}</td> 
                                        <td>${session.location.city} </td>
                                    </tr>
                                </table>
                            </div>
                            <h4 class='formationTitle'><c:out value="${session.course.title}" default="Titre de la formation"/> </h4>
        
                            <!--<div>
                                <img class="img-box z-depth-2 responsive-img" src="/Projet_LO54/img/office.jpg">
                            </div> -->
                        </div>
                        <div class="col s5 offset-s1">
                            <div>
                                <h4 id='inscription'>Inscription</h4>
                                <div class="row" style='margin-top: 20px'>
                                    <form class="col s12"  onsubmit="return submitForm()" id='registerForm'>
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <input placeholder="Prénom" id="first_name" type="text" class="validate">
                                                <label for="first_name">Prénom</label>
                                            </div>
                                            <div class="input-field col s6">
                                                <input placeholder="Nom" id="last_name" type="text" class="validate" required>
                                                <label for="last_name">Nom <span>*</span></label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                 <input placeholder="0xxxxxxxxx" id="tel" type="tel" class="validate">
                                                 <label for="tel">N° téléphone</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input placeholder="adresse@email.com" id="email" type="email" class="validate" required>
                                                <label for="email">Email <span>*</span></label>
                                            </div>
                                            <input type="hidden" name='sessionId' id='sessionId' value='${session.courseSessionId}' />
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input placeholder="25 rue dupont" id="adresse" type="text" class="validate" required>
                                                <label for="adresse">Adresse <span>*</span></label>
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

                </div>
            </div>
            <div id="modal1" class="modal">
                <div class="row">
                    <div id='errorPicture'   class="col s3"><img class="img-box  responsive-img" src="/Projet_LO54/img/alertError.png"></div>
                    <div id='successPicture' class="col s3"><img class="img-box  responsive-img" src="/Projet_LO54/img/success.png"></div>
                    <div class="modal-content" id='modalContentDiv'></div>
                </div>
                <div class="modal-footer">
                  <a id='okLink' href="#" class=" modal-action modal-close waves-effect waves-green btn-flat">OK</a>
                </div>
            </div>
            <div id='footerDiv'>
                    <%@ include file="includes/piedDePage.jsp" %>
            </div>
        </div>
        <script type="text/javascript" src="./js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="./materialize/js/materialize.js"></script>
        <script type="text/javascript" src="./js/js.js"></script>
    </body>
</html>
