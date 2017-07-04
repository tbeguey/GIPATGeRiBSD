package Element;

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

    private DatabaseConnection db;

    public PostGreSQL(DatabaseConnection d){
        c = null;
        stmt = null;
        db = d;
        connection();
    }


    /**
     * Etablit la connection avec la base PostGre
     */
    public void connection(){
        try {
            Class.forName("org.postgresql.Driver");

            String url = "jdbc:postgresql://" + db.getIp() + ":" + db.getPort() + "/postgres";
            if(db.getDatabase() != null)
                url = "jdbc:postgresql://" + db.getIp() + ":" + db.getPort() + "/" + db.getDatabase();
            if(db.getSchema() != null)
                url += "?currentSchema=" + db.getSchema();

            c = DriverManager.getConnection(url , // url comportant le nom de l'hote, le port et la base qu'on souhaite accéder (ici elle est créer automatiquement)
                    db.getUser(), db.getPassword()); // nom d'utilisateur + mot de passe

            stmt = c.createStatement();

            System.out.println("Opened database successfully : " + db.getTitle());
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
    public ArrayList<StringCompared> getTitleByTableName(){
        ArrayList<StringCompared> compareds = new ArrayList<>();
        try {
            PreparedStatement pst = c.prepareStatement(db.createSelectQuery());
            ResultSet rs = pst.executeQuery();
            while (rs.next()){
                String title = rs.getString(1);
                String id = rs.getString(2);
                String workspace;

                switch (db.getTitle()){
                    case "Geonetwork":
                        String harvested = rs.getString(3);
                        workspace = rs.getString(4);
                        if (harvested.equals("n"))
                            title = workspace + " - " + title;
                        break;
                    case "Cartogip":
                        workspace = rs.getString(3);
                        if(workspace != null){
                            if(workspace.equals("foretdata") || workspace.equals("geotracking") || workspace.equals("dynamic_bois") || workspace.startsWith("ap_"))
                                title = null;
                            else
                                title = workspace + " - " + title;
                        }
                        break;
                    case "BSD":
                        workspace = rs.getString(3);
                        if(workspace != null)
                            title = workspace + " - " + title;
                        break;
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


    private boolean rowExists( String columnName, String id){
        String query = "select exists(select 1 from correspondance where " + columnName + " = '" + id + "');";
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

    public void insertUpdateLines(ArrayList<ArrayList<String>> arrayListCheckedToExport, String columnNameSource, String columnNameDestination){
        for (int i = 0; i < arrayListCheckedToExport.size(); i++){
            ArrayList<String> arrayList = arrayListCheckedToExport.get(i);
            for (int j = 0; j < arrayList.size(); j++) {
                arrayList.set(j, arrayList.get(j).replace("'", "''"));
            }

            String sourceId = arrayList.get(1);
            String destinationId = arrayList.get(3);

            boolean exists = rowExists(columnNameSource, sourceId);

            String sql;

            if(!exists){
                exists = rowExists(columnNameDestination, destinationId);

                if (!exists)
                    sql = "INSERT INTO correspondance (" + columnNameSource + ", " + columnNameDestination + ", date_derniere_modification) VALUES('" + sourceId + "', '" + destinationId + "', current_date);"; //insert
                else
                    sql = "UPDATE correspondance SET " + columnNameSource + " = '" + sourceId + "' and date_derniere_modification = current_date where " + columnNameDestination + " = '" + destinationId + "';"; // update selon la destination
            }
            else
                sql = "UPDATE correspondance SET " + columnNameDestination + " = '" + destinationId + "' and date_derniere_modification = current_date where " + columnNameSource + " = '" + sourceId + "';"; // update selon la source


            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void setDatabaseConnection(DatabaseConnection d){
        deconnection();
        db = d;
        connection();
    }

    public ArrayList<String> getDatabases(){
        ArrayList<String> databases = new ArrayList<>();

        try {
            PreparedStatement ps = c.prepareStatement("SELECT datname FROM pg_database WHERE datistemplate = false;");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                databases.add(rs.getString(1));
            }
            rs.close();
            ps.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return databases;
    }

    public ArrayList<String> getSchemas() {
        ArrayList<String> schemas = new ArrayList<>();

        try {
            PreparedStatement ps = c.prepareStatement("select schema_name from information_schema.schemata");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                schemas.add(rs.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return schemas;
    }

    public ArrayList<String> getTables(){
        ArrayList<String> tables = new ArrayList<>();

        try {
            PreparedStatement ps = c.prepareStatement("select table_name from information_schema.tables where table_schema='" + db.getSchema() + "';");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                tables.add(rs.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tables;
    }

    public ArrayList<String> getColumns(String table){
        ArrayList<String> columns = new ArrayList<>();

        try {
            ResultSet rs = stmt.executeQuery("SELECT * FROM " + table + " LIMIT 1");
            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();

            for (int i = 1; i <= columnCount; i++ ) {
                columns.add(rsmd.getColumnName(i));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return columns;
    }

    public void addParent(StringCompared parent, StringCompared child, String titleDatabase){
        String sql = "UPDATE " + db.getTable() + " SET idparent = '" + child.getUuid() + "' WHERE ";
            switch (titleDatabase){
                case "Geoserver":
                    sql += "idcouche";
                    break;
                case "Geonetwork":
                    sql += "uuid";
                    break;
                default:
                    sql += "id";
                    break;
            }

             sql += " = '" + child.getUuid() + "';";
        try {
            System.out.println(sql);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
