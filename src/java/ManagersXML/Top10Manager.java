/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagersXML;

import beans.Product;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 *
 * @author Jorge
 */
public class Top10Manager {

    private String xmlFile;
    private FileInputStream file;
    private DocumentBuilderFactory builderFactory;
    private DocumentBuilder builder;
    private Document xmlDocument;
    private XPath xPath;

    public Top10Manager(String xmlFile) {
        this.xmlFile = xmlFile;
        loadFile();
    }

    private void loadFile() {
        try {
            file = new FileInputStream(new File(xmlFile));
            builderFactory = DocumentBuilderFactory.newInstance();
            builder = builderFactory.newDocumentBuilder();
            xmlDocument = builder.parse(file);
            xPath = XPathFactory.newInstance().newXPath();
        } catch (ParserConfigurationException ex) {
            System.err.println("loadFile method, ParserConfigurationException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (SAXException ex) {
            System.err.println("loadFile method, SAXException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (IOException ex) {
            System.err.println("loadFile method, IOException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
    }

    private ArrayList<Product> getAllProducts() {
        try {
            ArrayList<Product> products = new ArrayList<>();
            String expression = "/Products/Category/Product";
            NodeList nodeList = (NodeList) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODESET);

            for (int i = 0; i < nodeList.getLength(); i++) {

                Node node = nodeList.item(i);

                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;
                    int code = Integer.parseInt(node.getAttributes().getNamedItem("code").getNodeValue());
                    String name = element.getElementsByTagName("Name")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String longDescription = element.getElementsByTagName("LongDescription")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String shortDescription = element.getElementsByTagName("ShortDescription")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    int tendence = Integer.parseInt(element.getElementsByTagName("Tendence")
                            .item(0).getChildNodes().item(0).getNodeValue());
                    int price = Integer.parseInt(element.getElementsByTagName("Price")
                            .item(0).getChildNodes().item(0).getNodeValue());
                    int cant = Integer.parseInt(element.getElementsByTagName("Cant")
                            .item(0).getChildNodes().item(0).getNodeValue());
                    String urlPict = element.getElementsByTagName("ImgUrl")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    products.add(new Product(name, code, shortDescription, longDescription, tendence, price, cant, urlPict));

                }
            }
            return products;

        } catch (XPathExpressionException ex) {
            System.err.println("getAllEmployees method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    public ArrayList<Product> getTop10() {
        ArrayList<Product> products = getAllProducts();
        Product[] productsVec = toVector(products);
        shellSort(productsVec);
        return getTop10(productsVec);
    }

    private void shellSort(Product[] vector) {
        for (int i = vector.length / 2; i > 0;
                i = i == 2 ? 1 : (int) (i / 2.2)) {
            for (int j = i; j < vector.length; j++) {
                int temp = vector[j].getTendence();
                int k = j;
                for (; k >= i && temp < vector[k - i].getTendence(); k -= i) {
                    vector[k] = vector[k - i];
                }
                vector[k].setTendence(temp);
            }
        }
    }

    private Product[] toVector(ArrayList<Product> products) {
        Product[] productsVec = new Product[products.size()];

        for (int i = 0; i < productsVec.length; i++) {
            productsVec[i] = products.get(i);
        }
        return productsVec;
    }

    private ArrayList<Product> getTop10(Product[] products) {
        ArrayList<Product> top10Products = new ArrayList<>();
        for (int i = products.length - 1; i > 0; i--) {
            if (top10Products.size() == 10) {
                return top10Products;
            }
            top10Products.add(products[i]);
        }
        return top10Products;
    }
}
