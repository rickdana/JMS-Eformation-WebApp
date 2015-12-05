/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.eformation.frontoffice.form;

import fr.utbm.eformation.core.entity.Client;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author java
 */
public class CustomerForm {
    private String firstName = null;
    private String lastName = null;
    private String phone = null;
    private String address = null;
    private String email = null;
   
    
    public void hydrateFields(HttpServletRequest request){
        this.firstName = (String)request.getParameter("firstName");
        this.lastName = (String)request.getParameter("lastName");
        this.phone = (String)request.getParameter("phone");
        this.address = (String)request.getParameter("address");
        this.email = (String)request.getParameter("email");
        
    }
    public boolean valideFieldForm(){
       
        boolean v1 = false;
        boolean v2 = false;
        boolean v3 = false;
        if (this.firstName != null && this.lastName!= null  && this.address!= null){
            v1 = true;
        }
        if (this.phone != null){
            v2 = this.isValidNumber(this.phone);
        }
        if (this.email != null){
            v3 = this.isValideEmail(this.email);
        }
        
        return v1 && v2 && v3;                 
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
     * Verify is a string is a valid email
     *
     * @return true if the string is a valid email
     */
    private boolean isValideEmail(String mail){
        String pattern = "^\\w+[\\w-\\.]*\\@\\w+((-\\w+)|(\\w*))\\.[a-z]{2,3}$";
        return mail.matches(pattern);
        //return true;
    }
    
    public Client buildClient(){
        Client c = null;
        if (this.valideFieldForm()){
            c = new Client();
            c.setFirstName(this.firstName);
            c.setLastName(this.lastName);
            c.setAddress(this.address);
            c.setEmail(this.email);
            c.setPhone(this.phone); 
        }
        return c;
    }
    
}
