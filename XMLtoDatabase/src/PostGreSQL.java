import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;


/**
 * Classe de Manipulation de PostGre
 */
public class PostGreSQL {

    /**
     * La connection
     */
    private Connection c;

    /**
     * Le statement permet la liaison entre le java et le postgre, c'est sur lui qu'on va appliquer les méthodes d'éxecution de nos requetes SQL
     */
    private Statement stmt;

    private ArrayList<Line> linesOnInit, linesOnFinal;

    public PostGreSQL(){
        c = null;
        stmt = null;
        linesOnInit = new ArrayList<>();
        linesOnFinal = new ArrayList<>();
    }

    /**
     * Etablit la connection avec la base PostGre
     */
    public void connection(){
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://172.30.100.12:5432/bsd", // url comportant le nom de l'hote, le port et la base qu'on souhaite accéder (ici elle est créer automatiquement)
                    "admpostgres", "admpostgres"); // nom d'utilisateur + mot de passe

            stmt = c.createStatement();

            System.out.println("Opened database successfully");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
        }
    }

    /**
     * Toujours déconnecter à la fin du programme
     */
    public void deconnection(){
        try {
            stmt.close();
            c.close();
            System.out.println("Closed database successfully");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void dropTable(String table){
        try {
            String sql = "DROP TABLE " + table;
            stmt.executeUpdate(sql); // est éxécuté sur le statement
            System.out.println("Table drop");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Créer la table test
     */
    public void createTable(String table){
        try {
            String sql = "CREATE TABLE " + table + " (idCouche text UNIQUE," +
                    "idNamespace text," +
                    "FEATURETYPE text," +
                    "NAME text," +
                    "TITLE text," +
                    "ABSTRACT text," +
                    "WORKSPACE text)"; // notre requete
            stmt.executeUpdate(sql); // est éxécuté sur le statement
            System.out.println("Table created");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean rowExists(String id, String table){
        String query = "select exists(select 1 from " + table + " where idcouche = '" + id + "');";
        try {
            PreparedStatement pst = c.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            while (rs.next()){
                return rs.getBoolean(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * On ajoute une ligne (INSERT)
     * @param xml le fichier xml qu'on souhaite ajouté
     */
    public void addLineInInit(File xml, String workspace){
        try {
            String content = "";
            String name = "";
            String title = "";
            String abstr = "";
            String idCouche = "";
            String idNameSpace = "";

            try {
                content = Utils.readFile(xml.toString());
                content = content.replace("'", "''");
            } catch (IOException e) {
                e.printStackTrace();
            }

            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder;
            try {
                builder = factory.newDocumentBuilder();
                Document document = builder.parse(xml);
                Element root = document.getDocumentElement();
                XPathFactory xpf = XPathFactory.newInstance();
                XPath path = xpf.newXPath();

                if(xml.getName().equals("featuretype.xml")){
                    name = path.evaluate("/featureType/name[1]", root);
                    name = name.replace("'", "''");

                    title = path.evaluate("/featureType/title[1]", root);
                    title = title.replace("'", "''");

                    abstr = path.evaluate("/featureType/abstract[1]", root);
                    abstr = abstr.replace("'", "''");

                    idCouche = path.evaluate("/featureType/id[1]", root);
                    idCouche = idCouche.replace("'", "''");

                    idNameSpace = path.evaluate("/featureType/namespace/id[1]", root);
                    idNameSpace = idNameSpace.replace("'", "''");
                }
                else{
                    name = path.evaluate("/coverage/name[1]", root);
                    name = name.replace("'", "''");

                    title = path.evaluate("/coverage/title[1]", root);
                    title = title.replace("'", "''");

                    abstr = null;

                    idCouche = path.evaluate("/coverage/id[1]", root);
                    idCouche = idCouche.replace("'", "''");

                    idNameSpace = path.evaluate("/coverage/namespace/id[1]", root);
                    idNameSpace = idNameSpace.replace("'", "''");
                }

            } catch (ParserConfigurationException e) {
                e.printStackTrace();
            } catch (SAXException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            } catch (XPathExpressionException e) {
                e.printStackTrace();
            }


            if(!rowExists(idCouche, "geoserver.geoserver_xml_init")){
                String sql = "INSERT INTO geoserver.geoserver_xml_init VALUES ('" + idCouche + "', '" + idNameSpace + "', '" + content + "', '" + name + "', '" + title + "', '" + abstr + "', '" + workspace + "');";
                Line line = new Line(idCouche, idNameSpace, content, name, title, abstr, workspace);
                linesOnInit.add(line);
                stmt.executeUpdate(sql);

                System.out.println("insert done : " + xml);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void getLinesOnFinal(){
        String sql = "SELECT idcouche from geoserver.geoserver_xml;";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                Line l = new Line(id, null,null,null,null,null, null);
                linesOnFinal.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteLinesOnFinal(){
        for (Line lineFinal : linesOnFinal) {
            boolean exists = false;
            for (Line lineInit :linesOnInit) {
                if(lineFinal.getIdCouche().equals(lineInit.getIdCouche())){
                    exists = true;
                    break;
                }
            }
            if(!exists){
                String sql = "UPDATE communs.correspondance SET idgeoserver = null where idgeoserver = '" + lineFinal.getIdCouche() + "';";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                sql = "DELETE FROM geoserver.geoserver_xml where idCouche = '" + lineFinal.getIdCouche() + "';";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println("Donnée supprimée");
            }
        }
    }

    public void insertOrUpdateLines(){
        for (Line l : linesOnInit) {
            String sql;
            if (rowExists(l.getIdCouche(), "geoserver.geoserver_xml")){
                sql = "UPDATE geoserver.geoserver_xml SET title = '" + l.getTitle() + "' where idcouche = '" + l.getIdCouche() + "';";

            }
            else{
                sql = "INSERT INTO geoserver.geoserver_xml VALUES ('" + l.getIdCouche() + "', '" + l.getIdNameSpace() + "', '" + l.getContent() + "', '" + l.getName() + "', '" + l.getTitle() + "', '" + l.getAbstr() + "', '" + l.getWorkspace() + "');";
            }
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
