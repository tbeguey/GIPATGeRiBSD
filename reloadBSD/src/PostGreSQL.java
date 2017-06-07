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
            String sql = "CREATE TABLE " + table + " (id integer, titre character varying(254));";
            System.out.println(sql);

            stmt.executeUpdate(sql); // est éxécuté sur le statement
            System.out.println("Table created");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean rowExists(String id, String table){
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

    public void getLinesOnInit(String table, String idColumnName, String titleColumnName){
        String sql = "SELECT " + idColumnName +", " + titleColumnName + " from " + table + ";";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                String title = rs.getString(2);
                Line l = new Line(id, title);
                linesOnInit.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void getLinesOnFinal(String table){
        String sql = "SELECT id, titre from " + table + ";";
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                String title = rs.getString(2);
                Line l = new Line(id, title);
                linesOnFinal.add(l);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteLinesOnFinal(String nameCorrespondance, String table){
        for (Line lineFinal : linesOnFinal) {
            boolean exists = false;
            for (Line lineInit :linesOnInit) {
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

    public void insertOrUpdateLines(String table){
        for (Line l : linesOnInit) {
            String sql;
            if (rowExists(l.getId(), table)){
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
