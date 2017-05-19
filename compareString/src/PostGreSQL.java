import java.sql.*;
import java.util.ArrayList;


/**
 * Classe de Manipulation de PostGre (PENSER A RAJOUTER LE JAR AU PROJET SI CE N'EST PAS FAIT)
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
    public void connection(String database){
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://" + database, // url comportant le nom de l'hote, le port et la base qu'on souhaite accéder (ici elle est créer automatiquement)
                    "admpostgres", "admpostgres"); // nom d'utilisateur + mot de passe

            stmt = c.createStatement();

            System.out.println("Opened database successfully : " + database);
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
     * Récupere les titres, id, etc... d'une table
     * @return
     */
    public ArrayList<StringCompared> getTitleByTableName(String database){
        ArrayList<StringCompared> compareds = new ArrayList<>();
        String sql = "";
        switch (database){
            case "GeoNetwork":
                sql = "SELECT title, uuid, isharvested, source FROM metadata";
                break;
            case "GeoServer":
                sql = "SELECT title, idcouche FROM geoserver_xml";
                break;
            case "Cartogip":
                sql = "SELECT couche_libelle, id_couche, couche_schema FROM couche";
                break;
            case "BSD":
                sql = "SELECT type_donnees_echange_libelle, no_type_donnees_echange FROM type_donnee_echange";
                break;
        }

        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()){
                String title = rs.getString(1);
                String id = rs.getString(2);

                if(database == "GeoNetwork"){
                    String harvested = rs.getString(3);
                    String workspace = rs.getString(4);
                    if(harvested.equals("n"))
                        title = workspace + " - " + title;
                }
                else if(database == "Cartogip"){
                    String workspace = rs.getString(3);
                    if(workspace != null){
                        if(workspace.equals("foretdata") || workspace.equals("geotracking") || workspace.equals("dynamic_bois") || workspace.startsWith("ap_"))
                            title = null;
                        else
                            title = workspace + " - " + title;
                    }
                }


                if(title != null){
                    StringCompared stringCompared = new StringCompared(title, id);
                    compareds.add(stringCompared);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return compareds;
    }

    public boolean tableExits(String tableName){
        String sql = "select exists ( select 1 from information_schema.tables where table_name = '" + tableName + "');";

        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()){
                return rs.getBoolean(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public void createTable(String tableName){
        try {
            String sql = "CREATE TABLE " + tableName +
                    "(id SERIAL," +
                    "sourceTitle text," +
                    "sourceId text," +
                    "destinationTitle text," +
                    "destinationId text)";
            stmt.executeUpdate(sql); // est éxécuté sur le statement
            System.out.println("Table created");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean rowExists(String tableName, String sourceTitle, String sourceId, String destinationTitle, String destinationId){
        String query = "select exists(select 1 from " + tableName + " where sourceTitle = " + sourceTitle + " AND sourceId = " + sourceId
                + " AND destinationTitle = " + destinationTitle + " AND destinationId = " + destinationId + ");";
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

    public void addLines(ArrayList<ArrayList<String>> arrayListWriter, String tableName){
        try {
            for (int i = 0; i < arrayListWriter.size(); i++){
                ArrayList<String> arrayList = arrayListWriter.get(i);
                for (int j = 0; j < arrayList.size(); j++) {
                    arrayList.set(j, arrayList.get(j).replace("'", "''"));
                }

                String sourceTitle = "'" + arrayList.get(0) + "'";
                String sourceId = "'" + arrayList.get(1) + "'";
                String destinationTitle = "'" + arrayList.get(2) + "'";
                String destinationId = "'" + arrayList.get(3) + "'";

                if(!rowExists(tableName, sourceTitle, sourceId, destinationTitle, destinationId)){
                    String sql = "INSERT INTO " + tableName + "(sourceTitle, sourceId, destinationTitle, destinationId)" +
                            " VALUES(" + sourceTitle + ", " +
                            sourceId + ", " +
                            destinationTitle + ", " +
                            destinationId  + ");";
                    stmt.executeUpdate(sql);
                }
        }
    } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
