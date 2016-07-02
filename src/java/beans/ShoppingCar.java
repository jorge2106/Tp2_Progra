/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author Jorge
 */
public class ShoppingCar implements Serializable {
    
    private ArrayList<InCar> carProducts = new ArrayList<>();
    private double subTotal;
    private double shippingCost;
    private double total;

    public ShoppingCar() {
    }

    public ShoppingCar(double subTotal, double shippingCost, double total, ArrayList<InCar> products) {
        this.subTotal = subTotal;
        this.shippingCost = shippingCost;
        this.total = total;
        carProducts = products;
    }

    public ArrayList<InCar> getCarProducts() {
        return carProducts;
    }

    public void setCarProducts(ArrayList<InCar> carProducts) {
        this.carProducts = carProducts;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public double getShippingCost() {
        return shippingCost;
    }

    public void setShippingCost(double shippingCost) {
        this.shippingCost = shippingCost;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    
    
    
    
}
