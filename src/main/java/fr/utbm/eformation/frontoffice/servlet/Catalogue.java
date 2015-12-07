
package fr.utbm.eformation.frontoffice.servlet;

import fr.utbm.eformation.core.entity.CourseSession;
import fr.utbm.eformation.core.entity.Location;
import fr.utbm.eformation.core.service.FormationService;
import fr.utbm.eformation.core.service.LocationService;
import java.io.IOException;
import java.util.List;
import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java
 */
//@WebServlet(name = "Catalogue", urlPatterns = {"/catalogue"})
public class Catalogue extends HttpServlet {
    public Catalogue() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FormationService f = new FormationService();
        LocationService l = new LocationService();
        List<CourseSession> courseSessionList;
        List<Location> locationList;
        //On recupère la liste complète des formation disponible
        courseSessionList = f.getAllFormations();

        /*On recupère toutes les localisations disponibles. 
         * la liste sera affiché dans une une liste déroulante dans le formulaire de recherche de formation
         */
        locationList = l.getListLocations();
        //System.out.println(list.size());
        HttpSession session = request.getSession();
        session.setAttribute("locationList", locationList);
        request.setAttribute("listFormation", courseSessionList);
        RequestDispatcher dis = getServletContext().getRequestDispatcher("/WEB-INF/catalogue.jsp");
        dis.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        RequestDispatcher dis;
        dis = getServletContext().getRequestDispatcher("/search");
        dis.forward(request, response);
        
 }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
