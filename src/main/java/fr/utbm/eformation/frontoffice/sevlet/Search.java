/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.eformation.frontoffice.sevlet;

import fr.utbm.eformation.core.entity.CourseSession;
import fr.utbm.eformation.core.entity.Location;
import fr.utbm.eformation.core.service.FormationService;
import fr.utbm.eformation.core.service.LocationService;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author java
 */
public class Search extends HttpServlet {

    public Search() {
        super();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dis = getServletContext().getRequestDispatcher("/WEB-INF/searchResult.jsp");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        FormationService f = new FormationService();
        LocationService l = new LocationService();
        List<CourseSession> resultList;
        List<Location> locationList;
        Location lieu = null;
        String motCle = null;
        String d = null;
        Date date = null;
        String ville = null;
        SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");


        /*
         recupère les paramètre de la recherche
         */
        motCle = request.getParameter("motCle");
        if (motCle.equals("")) {
            motCle = null;
        }
        d = request.getParameter("date");
        System.out.println("---------> date : " + d);
        ville = request.getParameter("lieu");

        if (!d.equals("")) {
            try {
                /*String[] splitDate = d.split("-");
                 System.out.println(splitDate[1] + "-" + splitDate[2] + "-" + splitDate[0]);
                 date = new Date(splitDate[1] + "/" + splitDate[2] + "/" + splitDate[0]);*/
                date = formater.parse(d);
                System.out.println("------------> La DATE :" + date.toString() + " motCle : " + motCle);
            } catch (ParseException ex) {
                Logger.getLogger(Catalogue.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (!ville.equals("Choose your option")) {
            lieu = new Location();
            lieu.setCity(ville);

        }

        System.out.println("---------> Mot clé : " + motCle);

        System.out.println("---------> Lieu  : " + ville);

        resultList = f.searchFormations(motCle, date, lieu);
        System.out.println("---------> Nombre de résultas : " + resultList.size());
        if (resultList.size() == 0) {
            System.out.println("Aucun résultat ne correspond aux critères sélectionés");
        }
        request.setAttribute("res", resultList.size());
        //request.setAttribute("resultList", resultList);
        RequestDispatcher dis = getServletContext().getRequestDispatcher("/WEB-INF/searchResult.jsp");
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
