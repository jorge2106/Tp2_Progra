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

    public void createTable() {
        try {
            String Query = "CREATE TABLE  bills "
                    + "(name VARCHAR(50), "
                    + "eMail VARCHAR(50), "
                    + "consultation VARCHAR(250), "
                    + "billId INT(50) NOT NULL AUTO_INCREMENT, "
                    + "userId INT(50), "
                    + "PRIMARY KEY (billId), "
                    + "FOREIGN KEY (userId) REFERENCES users(id))";
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
            String Query = "INSERT INTO consultatios VALUES("
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

    public String getUserLogin() {
        String professorToString = "";
        try {
//            String Query = "SELECT users FROM  "
//                    + "WHERE  \"" +  + "\"";
            Statement st = connection.createStatement();
            java.sql.ResultSet resultSet;

            resultSet = st.executeQuery("");
            while (resultSet.next()) {
                professorToString += ("Nombre: " + resultSet.getString("name") + " "
                        + resultSet.getString("lastName")
                        + "\nCedula: " + resultSet.getString("identityCard") + " "
                        + "\nSalario: " + resultSet.getInt("salary"));
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return professorToString;
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
