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
public class User implements Serializable {
    
    private String name;
    private String lastName;
    private int identityCard;
    private String phone;
    private String eMail;
    private String password;

    public User() {
    }

    public User(String name, String lastName, int identityCard, String phone, String eMail, String password) {
        this.name = name;
        this.lastName = lastName;
        this.identityCard = identityCard;
        this.phone = phone;
        this.eMail = eMail;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getIdentityCard() {
        return identityCard;
    }

    public void setIdentityCard(int identityCard) {
        this.identityCard = identityCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
        return "User{" + "name=" + name + ", lastName=" + lastName + ", identityCard=" + identityCard + ", phone=" + phone + ", eMail=" + eMail + ", password=" + password + '}';
    }
    
    
    
    
}
