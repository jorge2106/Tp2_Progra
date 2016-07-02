/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagersXML;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
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
import org.xml.sax.SAXException;

/**
 *
 * @author Justin
 */
public class AdminManager {

    private String xmlFile;
    private FileInputStream file;
    private DocumentBuilderFactory builderFactory;
    private DocumentBuilder builder;
    private Document xmlDocument;
    private XPath xPath;

    public AdminManager(String xmlFile) {
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
    
    public boolean updateProduct(int code, String name, String shortDescription,
            String longDescription, int price, int cant) {
        try {
            String expression = String.format("/Products/Category/Product[@code='%d']", code);
            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {
                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;
                    //Set the node value
                    element.getElementsByTagName("Name").item(0).getChildNodes().
                            item(0).setNodeValue(name);
                    
                    element.getElementsByTagName("ShortDescription").item(0).
                            getChildNodes().item(0).setNodeValue(shortDescription);
                    
                    element.getElementsByTagName("LongDescription").item(0).
                            getChildNodes().item(0).setNodeValue(longDescription);
                    
                    element.getElementsByTagName("Price").item(0).getChildNodes().
                            item(0).setNodeValue("" + price);
                    
                    element.getElementsByTagName("Cant").item(0).getChildNodes().
                            item(0).setNodeValue("" + cant);

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

    public boolean addNewProduct(String name, int code, String shortDescription,
            String longDescription, int price, int cant, String urlPict, String category) {
        try {
            String expression = String.format("/Products/Category/Product[@code='%d']", code);
            String codeFound = (String) xPath.compile(expression).evaluate(xmlDocument);
            
            if (codeFound.equals("")) {
                Element newProduct = xmlDocument.createElement("Product");
                
                newProduct.setAttribute("code", "" + code);

                Element newName = xmlDocument.createElement("Name");
                newName.appendChild(xmlDocument.createTextNode(name));

                Element newShortDescription = xmlDocument.createElement("ShortDescription");
                newShortDescription.appendChild(xmlDocument.createTextNode(shortDescription));

                Element newLongDescription = xmlDocument.createElement("LongDescription");
                newLongDescription.appendChild(xmlDocument.createTextNode(longDescription));

                Element newPrice = xmlDocument.createElement("Price");
                newPrice.appendChild(xmlDocument.createTextNode("" + price));
                
                Element newCant = xmlDocument.createElement("Cant");
                newCant.appendChild(xmlDocument.createTextNode("" + cant));
                
                Element newTendence = xmlDocument.createElement("Tendence");
                newTendence.appendChild(xmlDocument.createTextNode("0"));
                
                Element newUrlPict = xmlDocument.createElement("ImgUrl");
                newUrlPict.appendChild(xmlDocument.createTextNode(urlPict));

                newProduct.appendChild(newName);
                newProduct.appendChild(newShortDescription);
                newProduct.appendChild(newLongDescription);
                newProduct.appendChild(newUrlPict);
                newProduct.appendChild(newTendence);
                newProduct.appendChild(newCant);
                newProduct.appendChild(newPrice);

                Node RootNode = xmlDocument.getElementsByTagName("Category").item(0);
                RootNode.appendChild(newProduct);

                // write the DOM object to the file
                TransformerFactory transformerFactory = TransformerFactory.newInstance();

                Transformer transformer = transformerFactory.newTransformer();
                DOMSource domSource = new DOMSource(xmlDocument);

                StreamResult streamResult = new StreamResult(new File(xmlFile));
                transformer.transform(domSource, streamResult);
                return true;
            }
        } catch (XPathExpressionException ex) {
            System.err.println("addNewProduct method, XPathExpressionException: " 
                    + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (TransformerException ex) {
            System.err.println("addNewProduct method, TransformerException: " 
                    + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return false;
    }
    
    public boolean deleteProduct(int code) {
        try {
            String expression = String.format("/Products/Category/Product[@code='%d']", code);

            Node node = (Node) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODE);

            if (node != null) {

                Node RootNode = xmlDocument.getElementsByTagName("Products").item(0);
                RootNode.removeChild(node);

                // write the DOM object to the file
                TransformerFactory transformerFactory = TransformerFactory.newInstance();

                Transformer transformer = transformerFactory.newTransformer();
                DOMSource domSource = new DOMSource(xmlDocument);

                StreamResult streamResult = new StreamResult(new File(xmlFile));
                transformer.transform(domSource, streamResult);
                return true;
            }
        } catch (XPathExpressionException ex) {
            System.err.println("deleteProduct method, XPathExpressionException: " 
                    + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        } catch (TransformerException ex) {
            System.err.println("deleteProduct method, TransformerException: " 
                    + ex.getMessage() + "\n" + Arrays.toString(ex.getStackTrace()));
        }
        return false;
    }
}
