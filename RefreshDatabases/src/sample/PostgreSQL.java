package sample;


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

public class PostgreSQL {

    private Connection c;
    private Statement stmt;

    private ArrayList<Line> linesInit, linesFinal;


    public void connection(String urlDB, String user, String password){
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://" + urlDB, // url comportant le nom de l'hote, le port et la base qu'on souhaite accéder (ici elle est créer automatiquement)
                    user, password); // nom d'utilisateur + mot de passe

            stmt = c.createStatement();

            System.out.println("Opened database successfully");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
        }
    }

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

    public void createTableGeonetwork(String table){
        try {
            String sql = "CREATE TABLE IF NOT EXISTS " + table + " (id serial PRIMARY KEY, uuid text UNIQUE, title text, data text, isharvested character(1), source text); "; // notre requete
            stmt.executeUpdate(sql); // est éxécuté sur le statement
            System.out.println("Table created");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean rowExistsGeonetwork(String id, String table){
        String query = "select exists(select 1 from " + table + " where uuid = '" + id + "');";
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

    public void getLinesOnInitGeonetwork(String path){
        try {
            String sql = "with template as(\n" +
                    "select data::xml as data,\n" +
                    path +
                    "isharvested as harvested,\n" +
                    "source as source\n" +
                    "from geonetwork.metadata_init)\n" +
                    "\n" +
                    "select uuid, title, data, harvested, source from template where uuid is not null AND title is not null;";

            // La requete précendente crée un template où nous pouvons trouvé nos données, le path (le chemin d'acces des données dans le XML) est le seul a changé, dans tout cela nous recuperons uniquement
            // ceux dont l'uuid et le titre (les deux champs récupérés grâce au path) ne sont pas nuls.

            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()){
                String uuid = rs.getString(1);
                uuid = uuid.replace("'", "''");

                String title = rs.getString(2);
                title = title.replace("'", "''");

                SQLXML dataTMP = rs.getSQLXML(3); // Passe par l'intermédire d'une donnée temporaire pour effectué le replace
                String dataString = dataTMP.getString();
                dataString = dataString.replace("'", "''");

                String harvested = rs.getString(4);

                String source = rs.getString(5);
                source = source.replace("'", "''");

                Line line = new Line(uuid, title, dataString, harvested, source);
                linesInit.add(line);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertLineGeonetwork(String table){
        for (Line l : linesInit) {
            try {
                String sql;
                if(!rowExistsGeonetwork(l.getUuid(), table)){
                    sql = "INSERT INTO " + table + "(uuid, title, data, isharvested, source) VALUES( '" + l.getUuid() + "', '" + l.getTitle() + "', '" + l.getData()
                            + "', '" + l.getHarvested() + "', '" + l.getSource() + "');";
                }
                else{
                    sql = "UPDATE " + table + " SET title = '" + l.getTitle() + "', data = '" + l.getData() + "'  where uuid = '" + l.getUuid() + "';";
                }
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void getLinesOnFinalGeonetwork(){
        String sql = "SELECT uuid from geonetwork.metadata;";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                Line l = new Line(id, null, null, null, null);
                linesFinal.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteLinesOnFinalGeonetwork(){
        for (Line lineFinal : linesFinal) {
            boolean exists = false;
            for (Line lineInit :linesInit) {
                if(lineFinal.getUuid().equals(lineInit.getUuid())){
                    exists = true;
                    break;
                }
            }
            if(!exists){
                String sql = "UPDATE communs.correspondance SET idgeonetwork = null where idgeonetwork = '" + lineFinal.getUuid() + "';";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                sql = "DELETE FROM geonetwork.metadata where uuid = '" + lineFinal.getUuid() + "';";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println("Donnée supprimée");
            }
        }
    }

    public void createTableGeoserver(String table){
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

    public boolean rowExistsGeoserver(String id, String table){
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

    public void addLineInInitGeoserver(File xml, String workspace){
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


            if(!rowExistsGeoserver(idCouche, "geoserver.geoserver_xml_init")){
                String sql = "INSERT INTO geoserver.geoserver_xml_init VALUES ('" + idCouche + "', '" + idNameSpace + "', '" + content + "', '" + name + "', '" + title + "', '" + abstr + "', '" + workspace + "');";
                Line line = new Line(idCouche, idNameSpace, content, name, title, abstr, workspace);
                linesInit.add(line);
                stmt.executeUpdate(sql);

                System.out.println("insert done : " + xml);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void getLinesOnFinalGeoserver(){
        String sql = "SELECT idcouche from geoserver.geoserver_xml;";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                Line l = new Line(id, null,null,null,null,null, null);
                linesFinal.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteLinesOnFinalGeoserver(){
        for (Line lineFinal : linesFinal) {
            boolean exists = false;
            for (Line lineInit :linesInit) {
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

    public void insertOrUpdateLinesGeoserver(){
        for (Line l : linesInit) {
            String sql;
            if (rowExistsGeoserver(l.getIdCouche(), "geoserver.geoserver_xml")){
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

    public boolean rowExistsCartogipBSD(String id, String table){
        String query = "select exists(select 1 from " + table + " where id = '" + id + "');";
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

    public void getLinesOnInitCartogip(String table, String idColumnName, String titleColumnName, String schemaColumnName){
        String sql = "SELECT " + idColumnName +", " + titleColumnName + ", " + schemaColumnName;

        sql += " from " + table + ";";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                String title = rs.getString(2);
                String schema = rs.getString(3);
                Line l = new Line(id, title, schema);
                linesInit.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void getLinesOnFinalCartogip(String table){
        String sql = "SELECT id, titre from " + table + ";";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                String title = rs.getString(2);
                Line l = new Line(id, title, null);
                linesFinal.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteLinesOnFinalCartogip(String nameCorrespondance, String table){
        for (Line lineFinal : linesFinal) {
            boolean exists = false;
            for (Line lineInit :linesInit) {
                if(lineFinal.getId().equals(lineInit.getId())){
                    exists = true;
                    break;
                }
            }
            if(!exists){
                String sql = "UPDATE communs.correspondance SET " + nameCorrespondance + " = null where + " + nameCorrespondance + " = '" + lineFinal.getId() + "';";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                sql = "DELETE FROM " + table + " where id = '" + lineFinal.getId() + "';";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println("Donnée supprimée");
            }
        }
    }

    public void insertOrUpdateLinesCartogip(String table){
        for (Line l : linesInit) {
            String sql;
            if (rowExistsCartogipBSD(l.getId(), table)){
                sql = "UPDATE " + table + " SET titre = '" + l.getTitle() + "' where id  = '" + l.getId() + "';";

            }
            else{
                sql = "INSERT INTO " + table + " VALUES ('" + l.getId() + "', '" + l.getTitle() + "', '" + l.getSchema() + "');";
            }
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void getLinesOnInitBSD(String table, String idColumnName, String titleColumnName){
        String sql = "SELECT " + idColumnName +", " + titleColumnName + " from " + table + ";";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                String title = rs.getString(2);
                Line l = new Line(id, title);
                linesInit.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void getLinesOnFinalBSD(String table){
        String sql = "SELECT id, titre from " + table + ";";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                String title = rs.getString(2);
                Line l = new Line(id, title);
                linesFinal.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteLinesOnFinalBSD(String nameCorrespondance, String table){
        for (Line lineFinal : linesFinal) {
            boolean exists = false;
            for (Line lineInit :linesInit) {
                if(lineFinal.getId().equals(lineInit.getId())){
                    exists = true;
                    break;
                }
            }
            if(!exists){
                String sql = "UPDATE communs.correspondance SET " + nameCorrespondance + " = null where + " + nameCorrespondance + " = '" + lineFinal.getId() + "';";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                sql = "DELETE FROM " + table + " where id = '" + lineFinal.getId() + "';";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                System.out.println("Donnée supprimée");
            }
        }
    }

    public void insertOrUpdateLinesBSD(String table){
        for (Line l : linesInit) {
            String sql;
            if (rowExistsCartogipBSD(l.getId(), table)){
                sql = "UPDATE " + table + " SET titre = '" + l.getTitle() + "' where id  = '" + l.getId() + "';";

            }
            else{
                sql = "INSERT INTO " + table + " VALUES ('" + l.getId() + "', '" + l.getTitle() + "');";
            }
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
