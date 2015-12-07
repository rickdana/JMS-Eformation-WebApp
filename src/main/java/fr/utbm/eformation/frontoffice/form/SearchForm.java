
package fr.utbm.eformation.frontoffice.form;

import fr.utbm.eformation.core.entity.Location;
import fr.utbm.eformation.frontoffice.servlet.Catalogue;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 * Manage search form
 * @author java
 */
public class SearchForm {
    private String lieu = null;
    private String motCle = null;
    private String d = null;
    
    private SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
    
    
    public void hydrateFields(HttpServletRequest request){
        motCle = request.getParameter("motCle");
        lieu = request.getParameter("lieu");
        d = request.getParameter("date");
    }
    
    public Date getParseDate(){
        Date date = null ;
        if (!d.equals("")) {
            try {
                
                date = formater.parse(d);
                //System.out.println("------------> La DATE :" + date.toString() + " motCle : " + motCle);
            } catch (ParseException ex) {
                Logger.getLogger(Catalogue.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return date;
    }
    
    public Location getLocation(){
        Location ville = null;
        if (lieu != null) {
            if (!lieu.equals("Choisir un lieu")) {
                ville = new Location();
                ville.setCity(lieu);

            }
        }
        return ville;
    }
    
    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }

    public String getMotCle() {
        return motCle;
    }

    public void setMotCle(String motCle) {
        this.motCle = motCle;
    }

    public String getD() {
        return d;
    }

    public void setD(String d) {
        this.d = d;
    }
    
    
    
    
    
}
