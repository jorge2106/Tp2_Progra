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
    private int code;
    private int cantProduct;
    private int cantTobuy;
    private double subtotal;

    public InCar() {
    }

    public InCar(String productName, double price, int code, int cantProducts, int cantToBuy, double subtotal) {
        this.productName = productName;
        this.price = price;
        this.cantProduct = cantProducts;
        this.cantTobuy = cantToBuy;
        this.code = code;
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

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public int getCantProduct() {
        return cantProduct;
    }

    public void setCantProduct(int cantProduct) {
        this.cantProduct = cantProduct;
    }

    public int getCantTobuy() {
        return cantTobuy;
    }

    public void setCantTobuy(int cantTobuy) {
        this.cantTobuy = cantTobuy;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    @Override
    public String toString() {
        return cantProduct + " : " + productName + " : ‎₡" + price + " = ‎₡" + subtotal;
    }

}
