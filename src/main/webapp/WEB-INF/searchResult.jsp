<%--
    Document   : searchResult
    Created on : 1 déc. 2015, 15:06:42
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
        <link type="text/css" rel="stylesheet" href="./css/page.css"  media="screen,projection"/>

        <link type="text/css" rel="stylesheet" href="./css/styles.css"  media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="./materialize/css/materialize.css"  media="screen,projection"/>
        <title>E-formation</title>
    </head>
    <body>
        <div id="containerDiv">
            <div id="contentDiv">
                <header class="header-bar">
                    <%@ include file="includes/enTete.jsp" %>
                </header>
                <div class="container">
                    <div class="row">
                        <c:if test="${res == 0}">
                            <div class="row">
                                <div class="col s8 offset-s2 grid-example imgCenter">
                                    <img class="z-depth-2 responsive-img" src="/Projet_LO54/img/SearchIcon.jpg">
                                    <p>
                                    <h5>0 Résultat: Aucunes formations ne correspond à vos critères</h5>
                                    </p>
                                </div>

                            </div>
                        </c:if>
                        <c:if test="${res != 0}">
                            <c:forEach items="${resultList}" var="f" begin="0" end="5">
                                <div class="col s4">
                                    <div class="card">
                                        <div class="card-image waves-effect waves-block waves-light">
                                            <img class="activator" src="/Projet_LO54/img/office.jpg">
                                        </div>
                                        <div class="card-content">
                                            <span class="card-title activator grey-text text-darken-4"><i class="material-icons right">more_vert</i></span>
                                            <p><a href="<c:url value="/formation?id=${f.courseSessionId}"/>">En savoir plus !</a></p>
                                        </div>
                                        <div class="card-reveal">
                                            <span class="card-title grey-text text-darken-4"><c:out value="${f.course.title}" default="Titre de la formation"/><i class="material-icons right">close</i></span>
                                            <p>
                                                <b>Date :</b> <c:out value="${f.startDate}" /> - <c:out value="${f.endDate}" />
                                            </p>
                                            <p>
                                                <b>Ville :</b> <c:out value="${f.location.city}" /> 
                                            </p>
                                            <p class="regBtn">
                                                <a href="<c:url value="/formation?id=${f.courseSessionId}"/>" class="btn waves-effect waves-light" type="submit" name="action">S'inscrire
                                                    <i class="material-icons right">send</i>
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
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
                            <form id="searchForm" action="./search" method="POST">
                                <div class="input-field col s4">
                                    <i class="material-icons prefix">spellcheck</i>
                                    <input id="motCle" name="motCle" type="text" class="validate">
                                    <label for="motCle">Mots clés</label>
                                </div>

                                <div class="input-field col s4">
                                    <i class="material-icons prefix">schedule</i>
                                    <input id="date" name="date" type="date" class="datepicker validate">
                                </div>
                                <div class="input-field col s12">
                                    <select id="lieu"  name="lieu" class="browser-default">
                                        <option value="Choisir un lieu" disabled selected>Choisir un lieu</option>
                                        <c:forEach items="${sessionScope.locationList}" var="location">
                                            <option value="${location['city']}">${location['city']}</option> 
                                        </c:forEach>
                                    </select>

                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button id="sessionSearchBtn" class="btn waves-effect waves-light" type="submit" name="action">Rechercher
                                <i class="material-icons right">search</i>
                            </button>
                        </div>

                    </div>
                </div>
            </div>
            <div id="footerDiv">
                <%@ include file="includes/piedDePage.jsp" %>
            </div>
        </div>

        <script type="text/javascript" src="./js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="./materialize/js/materialize.js"></script>
        <script type="text/javascript" src="./js/js.js"></script>
    </body>
</html>