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
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
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
public class ProductsManager {

    private String xmlFile;
    private FileInputStream file;
    private DocumentBuilderFactory builderFactory;
    private DocumentBuilder builder;
    private Document xmlDocument;
    private XPath xPath;

    public ProductsManager(String xmlFile) {
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

    public ArrayList<Product> getCategoryList(String categoryName) {
        try {
            ArrayList<Product> products = new ArrayList<>();
            String expression = String.format("/Products/Product[@type='%s']", categoryName);

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
            System.err.println("XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }

    public Product getProduct(int id) {
        try {
            Product product = new Product();
            String expression = String.format("/Products/Product[@code='%d']", id);

            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {
                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    int code = Integer.parseInt(node.getAttributes().getNamedItem("code").getNodeValue());
                    String name = element.getElementsByTagName("Name")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String longDescription = element.getElementsByTagName("LongDescription")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String shortDescription = element.getElementsByTagName("ShortDescription")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    String urlPict = element.getElementsByTagName("ImgUrl")
                            .item(0).getChildNodes().item(0).getNodeValue();
                    int tendence = Integer.parseInt(element.getElementsByTagName("Tendence")
                            .item(0).getChildNodes().item(0).getNodeValue());
                    int cant = Integer.parseInt(element.getElementsByTagName("Cant")
                            .item(0).getChildNodes().item(0).getNodeValue());
                    int price = Integer.parseInt(element.getElementsByTagName("Price")
                            .item(0).getChildNodes().item(0).getNodeValue());
                    product = new Product(name, code, shortDescription, longDescription, tendence, price, cant, urlPict);
                }
            }
            return product;
        } catch (XPathExpressionException ex) {
            System.err.println("XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return null;
    }
    
    public boolean updateProductCant(int code, int cant, int tendence) {
        try {
            String expression = String.format("/Products/Product[@code='%d']", code);
            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {
                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;
                    //Set the node value                   
                    element.getElementsByTagName("Cant").item(0).getChildNodes().
                            item(0).setNodeValue("" + cant);
                    
                    element.getElementsByTagName("Tendence").item(0).getChildNodes().
                            item(0).setNodeValue("" + tendence);

                    // write the DOM object to the file
                    TransformerFactory transformerFactory = TransformerFactory.newInstance();

                    Transformer transformer = transformerFactory.newTransformer();
                    DOMSource domSource = new DOMSource(xmlDocument);

                    StreamResult streamResult = new StreamResult(new File(xmlFile));
                    transformer.transform(domSource, streamResult);
                }
                return true;
            }
        } catch (XPathExpressionException ex) {
            System.err.println("updateProduct method, XPathExpressionException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (TransformerException ex) {
            System.err.println("updateProduct method, TransformerException: " + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return false;
    }
}
