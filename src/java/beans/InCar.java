/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Jorge
 */
public class InCar {
    private String productName;
    private double price;
    private int cant;
    private double subtotal;

    public InCar() {
    }

    public InCar(String productName, double price, int cant, double subtotal) {
        this.productName = productName;
        this.price = price;
        this.cant = cant;
        this.subtotal = subtotal;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }
    
    

   

    

    @Override
    public String toString() {
        return  cant + " : " + productName + " : ‎₡" + price + " = ‎₡" + subtotal;
    }
    
    
    
    
}
