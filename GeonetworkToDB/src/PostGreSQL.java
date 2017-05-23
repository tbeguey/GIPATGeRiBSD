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

    private ArrayList<Line> lines;

    public PostGreSQL(){
        c = null;
        stmt = null;
        lines = new ArrayList<>();
    }

    /**
     * Etablit la connection avec la base PostGre
     */
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
    public void createTable(String table){
        try {
            String sql = "CREATE TABLE IF NOT EXISTS" + table + " (id serial PRIMARY KEY, uuid text UNIQUE, title text, data xml, isharvested character(1), source text); "; // notre requete
            stmt.executeUpdate(sql); // est éxécuté sur le statement
            System.out.println("Table created");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean rowExists(String id){
        String query = "select exists(select 1 from metadata where uuid = '" + id + "');";
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
     * Stocke les lignes récupéré grâce au template passé en parametre
     * @param path
     */
    public void getLines(String path){
        try {
            String sql = "with template as(\n" +
                    "select data::xml as data,\n" +
                    path +
                    "isharvested as harvested,\n" +
                    "source as source,\n" +
                    "id as id \n" +
                    "from metadata_init)\n" +
                    "\n" +
                    "select uuid, title, data, harvested, source, id from template where uuid is not null AND title is not null;";

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
                SQLXML data = c.createSQLXML();
                data.setString(dataString);

                String harvested = rs.getString(4);
                harvested = harvested.replace("'", "''");

                String source = rs.getString(5);
                source = source.replace("'", "''");

                int id = rs.getInt(6);

                String query = "DELETE FROM metadata_init where id = '" + id + "';"; //supprime de metadata_id la ligne qu'on vient d'ajouter dans metadata.
                stmt.executeUpdate(query);

                Line line = new Line(uuid, title, data, harvested, source);
                lines.add(line);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Ajoute une ligne à la nouvelle table
     * @param table
     * @param line
     */
    public void addLine(String table, Line line){
        try {
            if(!rowExists(line.getUuid())){
                String sql = "INSERT INTO " + table + "(uuid, title, data, isharvested, source) VALUES( '" + line.getUuid() + "', '" + line.getTitle() + "', '" + line.getData()
                        + "', '" + line.getHarvested() + "', '" + line.getSource() + "');";
                stmt.executeUpdate(sql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Line> getLines() { return lines; }
}
