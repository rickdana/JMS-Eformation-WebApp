package fr.utbm.eformation.frontoffice.servlet;

import fr.utbm.eformation.core.entity.*;
import fr.utbm.eformation.core.service.*;
import fr.utbm.eformation.frontoffice.form.ClientForm;
import fr.utbm.eformation.jms.sender.SessionRegJmsSender;
import java.io.IOException;
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
        try{
            id = Integer.parseInt(request.getParameter("id"));     
            courseSession = f.getCourseSession(id);
            request.setAttribute("session", courseSession);
            this.getServletContext().getRequestDispatcher("/WEB-INF/formation.jsp").forward(request, response);
        }catch(Exception e){
            request.setAttribute("erreur", "Votre requ&ecirc;te n'a pas aboutit");
            this.getServletContext().getRequestDispatcher("/WEB-INF/error/error.jsp").forward(request, response);
            
        }
         
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        FormationService fs = new FormationService();
        ClientService customerService = new ClientService();
        
        CourseSession cs = null;
        String result = null;
        
        ClientForm cf = new ClientForm();
        cf.hydrateFields(request);
        Client c = cf.buildClient();
        
        
        
        if (c != null ){
            //specify session and save client 
            int idSession = Integer.parseInt(request.getParameter("sessionId"));
            cs = fs.getCourseSession(idSession);
            c.setSession(cs);
            customerService.addClient(c);          
            
            SessionRegJmsSender senderJMS = new SessionRegJmsSender();
            senderJMS.regNotification(c);
            
            result = "Votre enregistrement à cette session a été pris en compte.";         
        }else{
            // error
            result = "Il y a des erreurs dans votre formulaire. Veuillez vérifier les champs.";
        }
        
        request.setAttribute("result", result);        
        this.getServletContext().getRequestDispatcher("/WEB-INF/ajax/response.jsp").forward(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
