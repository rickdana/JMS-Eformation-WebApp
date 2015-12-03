/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.eformation.frontoffice.sevlet;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import fr.utbm.eformation.core.entity.*;
import fr.utbm.eformation.core.service.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author java
 */
@WebServlet(name = "Formation", urlPatterns = {"/formation"})
public class Formation extends HttpServlet {

    public Formation() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FormationService f = new FormationService();
        CourseSession courseSession = new CourseSession();
        //String var = (String) request.getAttribute("id");
        int id;
        id = Integer.parseInt(request.getParameter("id"));
        // System.out.println("l'id da la formation passée est :"+id);
        courseSession.toString();
        courseSession = f.getCourseSession(id);
        request.setAttribute("session", courseSession);
        this.getServletContext().getRequestDispatcher("/WEB-INF/formation.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = null;
        String lastName = null;
        String phone = null;
        String address = null;
        String email = null;
        String postalCode = null;
        String error = "Formulaire incorrecte :";
        
        firstName = (String)request.getParameter("firstName");
        lastName = (String)request.getParameter("lastName");
        phone = (String)request.getParameter("phone");
        address = (String)request.getParameter("address");
        email = (String)request.getParameter("email");
        postalCode = (String)request.getParameter("postalCode");
        Client c = new Client();
        if(isValidNumber(phone)){
           c.setPhone(phone); 
        }
        else{
            error = error+"<br/> Le numéro de téléphone inconrecte";
        }
        
        c.setFirstName(firstName);
        c.setLastName(lastName);
        
        c.setAddress(address);
        c.setEmail(email);
      
        System.out.println(firstName);
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/formation.jsp").forward(request, response);
    }
    
    /**
     * Verify is a string is a valid phone number
     *
     * @return true if the string is a valid phone number
     */
    private boolean isValidNumber(String num){
        return num.matches("^0[1-9]{9}");
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
