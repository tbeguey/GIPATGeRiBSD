package Element;

import NewConnectionDialogs.ColumnsDialog;
import Utils.Utils;
import View.SkipDialog;
import javafx.scene.control.ComboBox;

import javax.xml.crypto.Data;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


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

            c = DriverManager.getConnection(url , // url comportant le nom de l'hote, le port et la base qu'on souhaite accéder
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
    public ArrayList<StringCompared> getTitleByTableName(boolean except){
        ArrayList<StringCompared> compareds = new ArrayList<>();
        try {
            ColumnsDialog columnsDialog = new ColumnsDialog(db);
            Optional<ArrayList<String>> resultColumns = columnsDialog.showAndWait();
            resultColumns.ifPresent(db::setColumns);
            db.createSelectQuery();

            if(except){
                Optional<ArrayList<String>> result = new SkipDialog().showAndWait();
                result.ifPresent(res -> {
                    String columnCorrespondance = res.get(0);
                    Boolean remove = Boolean.parseBoolean(res.get(1));
                    Boolean keep = Boolean.parseBoolean(res.get(2));
                    ArrayList<String> columns = new ArrayList<>();
                    for (int i = 3; i < res.size(); i++) {
                        columns.add(res.get(i));
                    }
                    if(remove)
                        db.exceptCommunsQuery(columnCorrespondance);

                    if(keep){
                        db.joinCommuns(columnCorrespondance, columns);
                    }
                });
            }

            PreparedStatement pst = c.prepareStatement(db.getQuery());
            ResultSet rs = pst.executeQuery();
            while (rs.next()){
                String id = rs.getString(1);
                String strong_word = rs.getString(2);
                String title = rs.getString(3);

                /*String harvested = rs.getString(4);

                switch (db.getTitle()){ // pas top
                    case "Geonetwork":
                        if (harvested.equals("n"))
                            title = null;
                        break;
                    case "Cartogip":
                        if(workspace != null){
                            if(workspace.equals("foretdata") || workspace.equals("geotracking") || workspace.equals("dynamic_bois") || workspace.startsWith("ap_"))
                                title = null;
                        }
                        break;
                }*/


                if(title != null && id != null){
                    StringCompared stringCompared = new StringCompared(title, id, strong_word);
                    compareds.add(stringCompared);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return compareds;
    }


    private boolean rowExists(String columnName, String id){
        String query = "select exists(select 1 from " + db.getSchema() + "." + db.getTable() + " where " + columnName + " = '" + id + "');";
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

    public void insertUpdateLines(ArrayList<ArrayList<String>> arrayListCheckedToExport, String columnNameSource, String columnNameDestination, String booleanColumn){
        for (int i = 0; i < arrayListCheckedToExport.size(); i++){
            ArrayList<String> arrayList = arrayListCheckedToExport.get(i);
            for (int j = 0; j < arrayList.size(); j++) {
                if(arrayList.get(j) != null)
                    arrayList.set(j, arrayList.get(j).replace("'", "''"));
            }

            String sourceId = arrayList.get(0);
            String destinationId = arrayList.get(3);

            boolean exists = rowExists(columnNameSource, sourceId);

            String sql;

            if(!exists){
                exists = rowExists(columnNameDestination, destinationId);

                if (!exists)
                    sql = "INSERT INTO " + db.getTable() + " (" + columnNameSource + ", " + columnNameDestination + ", date_derniere_modification, " + booleanColumn + ") VALUES('" + sourceId + "', '" + destinationId + "', current_date, true);"; //insert
                else
                    sql = "UPDATE " + db.getTable() + " SET " + columnNameSource + " = '" + sourceId + "', date_derniere_modification = current_date, " + booleanColumn + " = true where " + columnNameDestination + " = '" + destinationId + "';"; // update selon la destination
            }
            else
                sql = "UPDATE " + db.getTable() + " SET " + columnNameDestination + " = '" + destinationId + "', date_derniere_modification = current_date, " + booleanColumn + " = true where " + columnNameSource + " = '" + sourceId + "';"; // update selon la source

            System.out.println(sql);
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
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

    public ArrayList<String> getBooleans(String table){
        ArrayList<String> columns = new ArrayList<>();

        try {
            String sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS where table_name ='" + table + "' AND table_schema='" + db.getSchema() + "' AND data_type = 'boolean';";
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                columns.add(rs.getString(1));
            }
            } catch (SQLException e) {
            e.printStackTrace();
        }

        return columns;
    }

    public void addParent(StringCompared parent, StringCompared child){
        String sql = "UPDATE " + db.getTable() + " SET idparent = '" + parent.getUuid() + "' WHERE ";
        switch (db.getTable()){
            case "geoserver_xml":
                sql += "idcouche";
                break;
            case "metadata":
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

    public void createTableExcel(List<String> headers){
        String sql = "CREATE TABLE " + db.getSchema() + "." + db.getTable();
        sql += " (";

        for (int i = 0; i < headers.size(); i++) {

            sql += Utils.SQLFormat(headers.get(i), true);

            sql += " text";

            if(i != headers.size() - 1)
                sql += ", ";
        }

        sql += ");";

        System.out.println(sql);

        try {
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void InsertRowInDB(List<String> values) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO " + db.getSchema() + "." + db.getTable();

        sql += " VALUES (";

        for (int i = 0; i < values.size(); i++) {
            String val = Utils.SQLFormat(values.get(i), false);
            if(val.isEmpty())
                val = null;

            if(!(val == null))
                sql += "'";

            sql += val;

            if(!(val == null))
                sql += "'";

            if(i != values.size() - 1)
                sql += ", ";
        }

        sql += ");";

        try {
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void newIdColumnCorrespondance(String correspondanceTable){
        String requis = "SELECT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='" + correspondanceTable +
                "' AND TABLE_SCHEMA = 'communs' AND COLUMN_NAME = 'id" + db.getTable() + "');";
        Boolean exists = true;

        try {
            PreparedStatement pst = c.prepareStatement(requis);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                exists = rs.getBoolean(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        if(!exists){
            String sql = "ALTER TABLE communs." + correspondanceTable + " ADD COLUMN id" + db.getTable() + " text;";
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            sql = "DELETE FROM " + db.getSchema() + "." + db.getTable() + " where " + db.getColumns().get(0) + " is null;";
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            sql = "DELETE FROM " + db.getSchema() + "." + db.getTable() + " where ctid not in (select min(ctid) from " + db.getSchema() + "." + db.getTable() + " group by " + db.getColumns().get(0) + ");";
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            requis = "SELECT EXISTS(SELECT 1 FROM information_schema.constraint_column_usage where table_name='" + db.getTable() +"' and table_schema='" +
            db.getSchema() + "' and constraint_name='id_" + db.getTable() + "_pk');";
            exists = true;
            try {
                PreparedStatement pst = c.prepareStatement(requis);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    exists = rs.getBoolean(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            if(!exists){
                sql = "ALTER TABLE " + db.getSchema() + "." + db.getTable() + " ADD CONSTRAINT id_" + db.getTable() + "_pk PRIMARY KEY(" + db.getColumns().get(0) + ");";
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            sql = "ALTER TABLE communs." + correspondanceTable + " ADD CONSTRAINT " + db.getTable() + "_fk FOREIGN KEY (id" + db.getTable() + ") REFERENCES " + db.getSchema() + "." + db.getTable() + ";";
            try {
                stmt.execute(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    public void newBooleanColumnCorrespondance(String columnName){
        String requis = "SELECT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='" + db.getTable() +
                "' AND TABLE_SCHEMA = 'communs' AND COLUMN_NAME = '" + columnName + "');";
        Boolean exists = false;

        try {
            PreparedStatement pst = c.prepareStatement(requis);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                exists = rs.getBoolean(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(!exists) {
            String sql = "ALTER TABLE communs." + db.getTable() + " ADD COLUMN " + columnName + " boolean";

            try {
                stmt.execute(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void addTableCorrespondance(String title){
        String sql = "CREATE TABLE communs." + title + " (id serial PRIMARY KEY, date_derniere_modification date);";
        try {
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public String createConcatenation(ArrayList<ComboBox> comboBoxes){
        String columnsForQuery = "";
        String columnName = "";
        for (int i = 0; i < comboBoxes.size(); i++) {
            if(i != 0){
                columnsForQuery += ", ";
                columnName += "_";
            }

            columnsForQuery += comboBoxes.get(i).getValue();
            columnName += comboBoxes.get(i).getValue();
        }

        String sql = "ALTER TABLE " + db.getSchema() + "." + db.getTable() + " ADD COLUMN " + columnName + " text;";

        try {
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        sql = "SELECT " + columnsForQuery + " FROM " + db.getSchema() + "." + db.getTable();

        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String title = "";
                for (int i = 1; i <= comboBoxes.size(); i++) {
                    title += rs.getString(i) + " ";
                }

                String update = "UPDATE " + db.getSchema() + "." + db.getTable() + " SET " + columnName + "='" + title + "' WHERE ";
                for (int i = 1; i <= comboBoxes.size(); i++) {
                    if(i != 1)
                        update += " AND ";
                    update += comboBoxes.get(i-1).getValue() + "='" + rs.getString(i) + "'";
                }
                stmt.execute(update);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return columnName;
    }

}
