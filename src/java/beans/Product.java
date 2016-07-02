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
    private int code;
    private String shortDescription;
    private String longDescription;
    private int tendence;
    private int price;
    private String urlPict;

    public Product() {
    }

    public Product(String name, int code, String shortDescription, String longDescription, int tendence, int price, String urlPict) {
        this.name = name;
        this.code = code;
        this.shortDescription = shortDescription;
        this.longDescription = longDescription;
        this.tendence = tendence;
        this.price = price;
        this.urlPict = urlPict;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCode() {
        return code;
    }

    public void setCod(int code) {
        this.code = code;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getUrlPict() {
        return urlPict;
    }

    public void setUrlPict(String urlPict) {
        this.urlPict = urlPict;
    }  
    
}
