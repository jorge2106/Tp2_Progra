/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerDataBase;

/**
 *
 * @author Jorge
 */
public class Main {
    public static void main(String[] args) {
        MySQLManager manager = new MySQLManager();
        manager.connectionToDB();
        System.out.println(manager.validateUserLogIn("jorge.arrieta@ucrso.info", "jorge"));
    }
}
