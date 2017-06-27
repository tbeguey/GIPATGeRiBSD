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
            c = DriverManager.getConnection("jdbc:postgresql://" + db.getIp() + ":" + db.getPort() + "/" + db.getDatabase() + "?"
                            +"currentSchema=" + db.getSchema(), // url comportant le nom de l'hote, le port et la base qu'on souhaite accéder (ici elle est créer automatiquement)
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
            PreparedStatement pst = c.prepareStatement(db.getQuery());
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

    public void setDatabase(DatabaseConnection d){
        deconnection();
        db = d;
        connection();
    }
}
