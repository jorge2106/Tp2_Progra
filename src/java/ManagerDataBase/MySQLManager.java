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
import java.util.ArrayList;
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
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MySQLManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public void createTableBills() {
        try {
            String Query = "CREATE TABLE  bills "
                    + "(purchase VARCHAR(10000), "
                    + "lender VARCHAR(50), "
                    + "cardNumber VARCHAR(50), "
                    + "address VARCHAR(300), "
                    + "subtotal DOUBLE, "
                    + "shippingCost DOUBLE, "
                    + "total DOUBLE, "
                    + "userId INT, "
                    + "billId INT NOT NULL AUTO_INCREMENT, "
                    + "FOREIGN KEY (userId) REFERENCES users(identityCard), "
                    + "PRIMARY KEY (billId))";
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
    
    public void createTableAdmin() {
        try {
            String Query = "CREATE TABLE  admins "
                    + "(email VARCHAR(50), "
                    + "password VARCHAR(50))";
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
    
    public boolean validateAdminLogIn(String eMail, String password) {
        try {
            String Query = "SELECT email, password FROM  admins "
                    + "WHERE email='" + eMail + "' AND password='" + password + "'";
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

    public String getUserId(String eMail) {
        String userId = "*";
        connectionToDB();
        try {
            String Query = "SELECT identityCard FROM users "
                    + "WHERE email= \"" + eMail + "\"";
            Statement st = connection.createStatement();
            java.sql.ResultSet resultSet;
            resultSet = st.executeQuery(Query);
            while (resultSet.next()) {
                userId = resultSet.getString("identityCard");
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return userId;
    }

    public ArrayList<String> getUserPurchase(String userId) {
        ArrayList<String> userPurchase = new ArrayList<>();
        connectionToDB();
        try {
            String Query = "SELECT purchase FROM bills "
                    + "WHERE userId= \"" + userId + "\"";
            Statement st = connection.createStatement();
            java.sql.ResultSet resultSet;
            resultSet = st.executeQuery(Query);
            while (resultSet.next()) {
                userPurchase.add(resultSet.getString("purchase"));
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        return userPurchase;
    }

    public void addNewBill(String purchase, String lender, String cardNumber,
            String address, double subtotal, double shippingCost, double total, String userId) {
        try {
            String Query = "INSERT INTO bills (purchase,lender,cardNumber,address,subtotal,shippingCost,total,userId) VALUES("
                    + "'" + purchase + "', "
                    + "'" + lender + "', "
                    + "'" + cardNumber + "', "
                    + "'" + address + "', "
                    + "'" + subtotal + "', "
                    + "'" + shippingCost + "', "
                    + "'" + total + "', "
                    + "'" + userId + "')";
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

    public void update(String name, String lastName, int identityCard,
            String phone, String email, String password, int idToUpdate) {
        try {
            String Query = "UPDATE users SET name= \"" + name + "\", lastName= \"" + lastName + "\", identityCard= \"" + identityCard + "\", phoneNumber= \"" + phone + "\", email= \"" + email + "\", password= \"" + password + "\" WHERE identityCard = \"" + idToUpdate + "\"";
            Statement st = connection.createStatement();
            st.executeUpdate(Query);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
}
