
package fr.utbm.eformation.frontoffice.servlet;

import fr.utbm.eformation.core.entity.CourseSession;
import fr.utbm.eformation.core.entity.Location;
import fr.utbm.eformation.core.service.FormationService;
import fr.utbm.eformation.core.service.LocationService;
import fr.utbm.eformation.frontoffice.form.SearchForm;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FormationService f = new FormationService();
        LocationService l = new LocationService();
        List<CourseSession> resultList;
        List<Location> locationList;
        
        SearchForm sf = new SearchForm();
        
        sf.hydrateFields(request);
        
        resultList = f.searchFormations(sf.getMotCle(), sf.getParseDate(), sf.getLocation());
        System.out.println("---------> Nombre de résultas : " + resultList.size());
       /* if (resultList.size() == 0) {
            System.out.println("Aucun résultat ne correspond aux critères sélectionés");
        }*/

        request.setAttribute("res", resultList.size());
        request.setAttribute("resultList", resultList);
        ServletContext context = this.getServletContext();
        //System.out.println("Current context :"+context.);
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
