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
public class Product implements Serializable {
    
    private String name;
    private int cod;
    private String shortDescription;
    private String longDescription;
    private int tendence;
    private String urlPict;

    public Product() {
    }

    public Product(String name, int cod, String shortDescription, String longDescription, int tendence, String urlPict) {
        this.name = name;
        this.cod = cod;
        this.shortDescription = shortDescription;
        this.longDescription = longDescription;
        this.tendence = tendence;
        this.urlPict = urlPict;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getLongDescription() {
        return longDescription;
    }

    public void setLongDescription(String longDescription) {
        this.longDescription = longDescription;
    }

    public int getTendence() {
        return tendence;
    }

    public void setTendence(int tendence) {
        this.tendence = tendence;
    }

    public String getUrlPict() {
        return urlPict;
    }

    public void setUrlPict(String urlPict) {
        this.urlPict = urlPict;
    }  
    
}
