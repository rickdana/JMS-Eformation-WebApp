/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.utbm.eformation.frontoffice.form;

import java.io.Serializable;

/**
 *
 * @author java
 */
public class LoginBean implements Serializable {
    // URL vers la JSP eFormation
    public static final String loginSucces = "/WEB-INF/eFormation.jsp";
    
    // URL vers la JSP d'erreur
    public static final String loginFalse = "/WEB-INF/login.jsp";
    
    //URL vers la page d'erreur par défaut
    public static final String defaulError = "/WEB-INF/error.jsp";
    
    private String login;
    private String password;
    private boolean isLoggedIn;
    
    /**
     * Cette fonction permettra de comparer le login et le pass de 
     * l'user à celui retourner pas la BD 
     * @return
     * La fonction retournera l'URL de la page correspondante
     * Si login true, retourne URL vers la page de gestion des eformation 
     * si login false retour vers la page de login 
     * si autre cas retour vers la page par défaut d'erreur
     */
    public String doFilter(){
        String link = loginFalse;
        //login true
        if(this.login.equals("login") && this.password.equals("password")){
            this.isLoggedIn = true;
            link = loginSucces;
            return link;
        }
        return link;
    }
    /**
     * Getter & Setter
     * @return 
     */
    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public static String getLoginSucces() {
        return loginSucces;
    }

    public static String getLoginFalse() {
        return loginFalse;
    }

    public static String getDefaulError() {
        return defaulError;
    }
    

    public boolean isIsLoggedIn() {
        return isLoggedIn;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setIsLoggedIn(boolean isLoggedIn) {
        this.isLoggedIn = isLoggedIn;
    }
    
    
    
}
