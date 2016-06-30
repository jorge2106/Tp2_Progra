/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;

/**
 *
 * @author Jorge
 */
public class Sesion implements Serializable {

    private String eMail;
    private String password;

    public Sesion() {
    }

    public Sesion(String eMail, String password) {
        this.eMail = eMail;
        this.password = password;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Sesion{" + "eMail=" + eMail + ", password=" + password + '}';
    }

    public boolean isNull() {
        return eMail == null || password == null;
    }

}
