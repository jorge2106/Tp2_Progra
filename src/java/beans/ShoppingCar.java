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
    
    private ArrayList<Purchase> carProducts = new ArrayList<>();
    private int subTotal;
    private int shippingCost;
    private int total;

    public ShoppingCar() {
    }

    public ShoppingCar(int subTotal, int shippingCost, int total) {
        this.subTotal = subTotal;
        this.shippingCost = shippingCost;
        this.total = total;
    }

    public ArrayList<Purchase> getCarProducts() {
        return carProducts;
    }

    public void setCarProducts(ArrayList<Purchase> carProducts) {
        this.carProducts = carProducts;
    }

    public int getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(int subTotal) {
        this.subTotal = subTotal;
    }

    public int getShippingCost() {
        return shippingCost;
    }

    public void setShippingCost(int shippingCost) {
        this.shippingCost = shippingCost;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
    
    
    
    
    
}
