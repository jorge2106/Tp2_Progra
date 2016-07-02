/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerDataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Jorge
 */
public class MySQLManager {

    private Connection connection;

    public void connectionToDB() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/econeatworkdb", "root", "database");
            System.out.println("Conexión Exitosa");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQLManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void createTableBills() {
        try {
            String Query = "CREATE TABLE  bills "
                    + "(purchase VARCHAR(2000), "
                    + "subtotal INT(50), "
                    + "total INT(50), "
                    + "billId INT(50) NOT NULL AUTO_INCREMENT, "
                    + "userId INT(50), "
                    + "PRIMARY KEY (billId), "
                    + "FOREIGN KEY (userId) REFERENCES users(identityCard))";
            Statement st = connection.createStatement();
            st.executeUpdate(Query);
        } catch (SQLException ex) {
            Logger.getLogger(MySQLManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void createTableConsultations() {
        try {
            String Query = "CREATE TABLE  consultations "
                    + "(name VARCHAR(50), "
                    + "eMail VARCHAR(50), "
                    + "consultation VARCHAR(250), "
                    + "id INT(50) NOT NULL AUTO_INCREMENT, "
                    + "PRIMARY KEY (id))";
            Statement st = connection.createStatement();
            st.executeUpdate(Query);
        } catch (SQLException ex) {
            Logger.getLogger(MySQLManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void addNewUser(String name, String lastName, int identityCard,
            String phone, String email, String password) {
        try {
            String Query = "INSERT INTO users VALUES("
                    + "\"" + name + "\", "
                    + "\"" + lastName + "\", "
                    + "\"" + identityCard + "\", "
                    + "\"" + phone + "\", "
                    + "\"" + email + "\", "
                    + "\"" + password + "\")";
            Statement st = connection.createStatement();
            st.executeUpdate(Query);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(null, "No se permiten numeros en este espacio", "Error", JOptionPane.ERROR_MESSAGE);
        } catch (IllegalArgumentException ex) {
            JOptionPane.showMessageDialog(null, "No se permiten letras en este espacio", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    public void addNewConsultation(String userName, String eMail, String consultation) {
        try {
            String Query = "INSERT INTO consultations (name,eMail,consultation) VALUES("
                    + "\"" + userName + "\", "
                    + "\"" + eMail + "\", "
                    + "\"" + consultation + "\")";
            Statement st = connection.createStatement();
            st.executeUpdate(Query);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(null, "No se permiten numeros en este espacio", "Error", JOptionPane.ERROR_MESSAGE);
        } catch (IllegalArgumentException ex) {
            JOptionPane.showMessageDialog(null, "No se permiten letras en este espacio", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    public void deleteMyAccount(String eMail) {
        try {
            String Query = "DELETE FROM  users WHERE email= '" + eMail + "'";
            Statement st = connection.createStatement();
            st.executeUpdate(Query);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    public boolean validateUserLogIn(String eMail, String password) {
        try {
            String Query = "SELECT email, password FROM  users "
                    + "WHERE email='" + eMail + "' AND password='" + password + "'";
            System.out.println(Query);
            Statement st = connection.createStatement();
            java.sql.ResultSet resultSet;
            resultSet = st.executeQuery(Query);
            if (resultSet.next()) {
               return true;
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return false;
    }

    public void delete() {
        try {
//            String Query = "DELETE FROM  WHERE  = \"" +  + "\"";
            Statement st = connection.createStatement();
            st.executeUpdate("");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    public void update() {
        try {
//            String Query = "UPDATE  SET = \"" +  + "\", "
//                    + "= \"" +  + "\", "
//                    + "= \"" +  + "\", "
//                    + "= \"" +  + "\" "
//                    + "WHERE  = \"" +  + "\"";
            Statement st = connection.createStatement();
            st.executeUpdate("");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}
