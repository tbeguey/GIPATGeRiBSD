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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


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

    public PostGreSQL(){
        c = null;
        stmt = null;
    }

    /**
     * Etablit la connection avec la base PostGre
     */
    public void connection(){
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://172.30.100.12:5432/bsd?currentSchema=geoserver", // url comportant le nom de l'hote, le port et la base qu'on souhaite accéder (ici elle est créer automatiquement)
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

    /**
     * Créer la table test
     */
    public void createTable(){
        try {
            String sql = "CREATE TABLE geoserver_xml (idCouche text UNIQUE," +
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

    /**
     * Détruit la table
     */
    public void dropTable(){
        try {
            String sql = "DROP TABLE geoserver_xml";
            stmt.executeUpdate(sql);
            System.out.println("Table droped");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * On ajoute une ligne (INSERT)
     * @param xml le fichier xml qu'on souhaite ajouté
     */
    public void addLine(File xml, String workspace){
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


            String sql = "INSERT INTO geoserver_xml VALUES ('" + idCouche + "', '" + idNameSpace + "', '" + content + "', '" + name + "', '" + title + "', '" + abstr + "', '" + workspace + "');";

            stmt.executeUpdate(sql);

            System.out.println("insert done : " + xml);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
