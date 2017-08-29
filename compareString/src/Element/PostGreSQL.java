package Element;

import NewConnectionDialogs.ColumnsDialog;
import Utils.Utils;
import View.SkipDialog;
import javafx.scene.control.ComboBox;
import javafx.util.Pair;

import java.sql.*;
import java.util.*;


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


    /**
     * Verifie si la ligne existe
     * @param columnName
     * @param id
     * @return
     * @throws SQLException
     */
    private boolean rowExists(String columnName, String id) throws SQLException {
        String query = "select exists(select 1 from " + db.getSchema() + "." + db.getTable() + " where " + columnName + " = '" + id + "');";
        PreparedStatement pst = c.prepareStatement(query);
        ResultSet rs = pst.executeQuery();
        rs.next();
        return rs.getBoolean(1);
    }

    /**
     * Vérifie si la case qu'on doit update n'a pas déja une valeur
     * @param columnNameSource
     * @param id
     * @param columnNameDestination
     * @return
     * @throws SQLException
     */
    private boolean isValueNull(String columnNameSource, String id, String columnNameDestination) throws SQLException {
        String query = "select exists(select 1 from " + db.getSchema() + "." + db.getTable() + " where " + columnNameSource + " = '" + id + "' and " + columnNameDestination + " is null);";
        PreparedStatement pst = c.prepareStatement(query);
        ResultSet rs = pst.executeQuery();
        rs.next();
        return rs.getBoolean(1);
    }
    /**
     * Insere ou modifie les lignes de correspondances
     * @param arrayListCheckedToExport
     * @param tableNameSource
     * @param tableNameDestination
     * @param booleanColumn
     */
    public void insertUpdateLines(ArrayList<ArrayList<StringCompared>> arrayListCheckedToExport, String tableNameSource, String tableNameDestination, String booleanColumn) throws SQLException {
        String columnNameSource = "id" + tableNameSource;
        String columnNameDestination = "id" + tableNameDestination;

        ArrayList<String> doublonsIdSource = new ArrayList<>();
        ArrayList<String> doublonsIdDestination = new ArrayList<>();
        for (int i = 0; i < arrayListCheckedToExport.size(); i++){
            ArrayList<StringCompared> arrayList = arrayListCheckedToExport.get(i);

            String sourceId = arrayList.get(0).getUuid();
            String destinationId = arrayList.get(1).getUuid();

            String sql;

            if(!doublonsIdSource.contains(sourceId))
                doublonsIdSource.add(sourceId);
            else
                System.out.println("DOUBLONS source : " + sourceId);

            if(!doublonsIdDestination.contains(destinationId))
                doublonsIdDestination.add(destinationId);
            else
                System.out.println("DOUBLONS destination : " + destinationId);


            boolean sourceExists = rowExists(columnNameSource, sourceId);
            if(sourceExists){
                boolean valueNull = isValueNull(columnNameSource, sourceId, columnNameDestination);
                if(valueNull){
                    sql = "UPDATE " + db.getTable() + " SET " + booleanColumn + " = true, date_derniere_modification = current_date, " + columnNameDestination + " = '" + destinationId + "' where " + columnNameSource + " = '" + sourceId + "';";
                }
                else{
                    sql = "UPDATE " + db.getTable() + " SET " + booleanColumn + " = true, date_derniere_modification = current_date where " + columnNameSource + " = '" + sourceId + "' and " + columnNameDestination + " = '" + destinationId + "';";
                }
            }
            else{
                boolean destinationExists = rowExists(columnNameDestination, destinationId);
                if(destinationExists){
                    boolean valueNull = isValueNull(columnNameDestination, destinationId, columnNameSource);
                    if(valueNull){
                        sql = "UPDATE " + db.getTable() + " SET " + booleanColumn + " = true, date_derniere_modification = current_date, " + columnNameSource + " = '" + sourceId + "' where " + columnNameDestination + " = '" + destinationId + "';";
                    }
                    else{
                        sql = "UPDATE " + db.getTable() + " SET " + booleanColumn + " = true, date_derniere_modification = current_date where " + columnNameSource + " = '" + sourceId + "' and " + columnNameDestination + " = '" + destinationId + "';";
                        //En toute logique c'est impossible de rentrer dans ce cas
                    }
                }
                else{
                    sql = "INSERT INTO " + db.getTable() + " (" + columnNameSource + ", " + columnNameDestination + ", date_derniere_modification, " + booleanColumn + ") VALUES ('" + sourceId + "', '" + destinationId + "', current_date, true);";
                }
            }


            System.out.println(sql);
            stmt.executeUpdate(sql);
        }
    }

    /**
     * Apparente les enregistrements sélectionnés
     * @param arrayListLikened
     * @param tableNameDestination
     */
    public void likenedLines(ArrayList<ArrayList<StringCompared>> arrayListLikened, String tableNameDestination){
        String columnNameDestination = "idparent_" + tableNameDestination;
        for (int i = 0; i < arrayListLikened.size(); i++) {
            ArrayList<StringCompared> arrayList = arrayListLikened.get(i);

            String sourceId = arrayList.get(0).getUuid();
            String destinationId = arrayList.get(1).getUuid();

            String sql = "UPDATE " + db.getTable() + " SET " + columnNameDestination + " = '" + destinationId + "' WHERE " + db.getColumns().get(0) + " = '" + sourceId + "';" ;

            System.out.println(sql);
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * Liste les bases de données présentes dans une connexion serveur.
     * @return
     */
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

    /**
     Liste les schémas
     * @return
     */
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

    /**
     * Liste les tables
     * @return
     */
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

    /**
     * Créer la table à partir du contenu du fichier Excel
     * @param headers
     */
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

    /**
     * Insere les valeurs dans notre table crée précédemment
     * @param values
     * @throws SQLException
     * @throws ClassNotFoundException
     */
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

    /**
     * Ajoute une nouvelle colonne (si elle n'existe pas déja) d'id dans notre table correspondance choisi
     * @param correspondanceTable
     */
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
            String sql = "ALTER TABLE communs." + correspondanceTable + " ADD COLUMN id" + db.getTable() + " text;"; // ajoute la colonne id
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            sql = "DELETE FROM " + db.getSchema() + "." + db.getTable() + " where " + db.getColumns().get(0) + " is null;"; // supprime toutes les enreigistrements dont l'id est null
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            // supprime les doublons d'id
            sql = "DELETE FROM " + db.getSchema() + "." + db.getTable() + " where ctid not in (select min(ctid) from " + db.getSchema() + "." + db.getTable() + " group by " + db.getColumns().get(0) + ");";
            try {
                stmt.executeUpdate(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            // vérifie que la contrainte n'existe pas déja
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
                sql = "ALTER TABLE " + db.getSchema() + "." + db.getTable() + " ADD CONSTRAINT id_" + db.getTable() + "_pk PRIMARY KEY(" + db.getColumns().get(0) + ");"; // ajoute la contrainte de clé primaire à la table source
                try {
                    stmt.executeUpdate(sql);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            // ajoute la clé étrangere dans la table de correspondance
            sql = "ALTER TABLE communs." + correspondanceTable + " ADD CONSTRAINT " + db.getTable() + "_fk FOREIGN KEY (id" + db.getTable() + ") REFERENCES " + db.getSchema() + "." + db.getTable() + ";";
            try {
                stmt.execute(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    /**
     * Si elle n'existe pas déja, crééer la colonne de booleen.
     * @param columnName
     */
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

    /**
     * Créer un nouveau champ selon la concaténation des X colonnes choisis dans la boite de dialogue (ConcatenationDialog)
     * @param comboBoxes
     * @return
     */
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

    /**
     * Créer un profil avec les schémas associés.
     * @param profilName
     * @throws SQLException
     */
    public void createProfil(String profilName) throws SQLException {
        String schema_connexions = profilName + "_connexions";
        String schema_inutiles = profilName + "_inutiles";
        String schema_semblables = profilName + "_semblables";

        String sql = "CREATE SCHEMA IF NOT EXISTS " + schema_connexions;
        stmt.execute(sql);

        sql = "CREATE SCHEMA IF NOT EXISTS " + schema_inutiles;
        stmt.execute(sql);

        sql = "CREATE SCHEMA IF NOT EXISTS " + schema_semblables;
        stmt.execute(sql);

        deconnection();
        db.setSchema(schema_connexions);
        connection();

        sql = "CREATE TABLE IF NOT EXISTS connexions (id_connexion serial, titre text, ip text, port text, utilisateur text, mot_de_passe text, base text, schema text, table_principale text, jointures integer[]);";
        stmt.execute(sql);

        sql = "CREATE TABLE IF NOT EXISTS jointures (id_jointure serial, table_principale text, cle_un text, cle_deux text);";
        stmt.execute(sql);
    }

    public ArrayList<String> getTitles() throws SQLException {
        ArrayList<String> titles = new ArrayList<>();

        String sql = "SELECT titre from " + db.getSchema() + "." + db.getTable();
        PreparedStatement pst = c.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            titles.add(rs.getString(1));
        }

        return titles;
    }

    public void insertConnection(DatabaseConnection databaseConnection) throws SQLException {
        String sql = "INSERT INTO connexions (titre, ip, port, utilisateur, mot_de_passe, base, schema, table_principale) VALUES('"
                + databaseConnection.getTitle() + "', '"
                + databaseConnection.getIp() + "', '"
                + databaseConnection.getPort() + "', '"
                + databaseConnection.getUser() + "', '"
                + databaseConnection.getPassword() + "', '"
                + databaseConnection.getDatabase() + "', '"
                + databaseConnection.getSchema() + "', '"
                + databaseConnection.getTable() + "') RETURNING id_connexion;";

        ResultSet rs = stmt.executeQuery(sql);
        rs.next();
        int id_connexion = rs.getInt(1);

        if(databaseConnection.getJoins() != null){
            ArrayList<Integer> id_jointures = new ArrayList<>();
            for (Pair<String, Pair<String, String>> pair : databaseConnection.getJoins()) {
                sql = "INSERT INTO jointures(table_principale, cle_un, cle_deux) VALUES('"
                        + pair.getKey() + "', '"
                        + pair.getValue().getKey() + "', '"
                        + pair.getValue().getValue() + "') RETURNING id_jointure";
                rs = stmt.executeQuery(sql);
                rs.next();
                id_jointures.add(rs.getInt(1));
            }

            String jointures = "{";
            for (int i=0; i<id_jointures.size(); i++) {
                if(i != 0)
                    jointures += ", ";
                jointures += id_jointures.get(i);
            }
            jointures += "}";

            sql = "UPDATE connexions SET jointures = '" + jointures + "' where id_connexion = '" + id_connexion + "';";
            stmt.execute(sql);
        }
    }

    public ArrayList<DatabaseConnection> getConnections() throws SQLException {
        ArrayList<DatabaseConnection> databaseConnections = new ArrayList<>();

        String sql = "SELECT titre, ip, port, utilisateur, mot_de_passe, base, schema, table_principale, jointures FROM " + db.getTable();
        PreparedStatement pst = c.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            String title = rs.getString(1);
            String ip = rs.getString(2);
            String port = rs.getString(3);
            String user = rs.getString(4);
            String password = rs.getString(5);
            String database = rs.getString(6);
            String schema = rs.getString(7);
            String table = rs.getString(8);
            Array join = rs.getArray(9);

            ArrayList<Pair<String,Pair<String,String>>> jointures = null;
            if(join != null){
                jointures = new ArrayList<>();
                Integer[] str_join = (Integer[]) join.getArray();
                for (Integer i : str_join) {
                    String query = "SELECT table_principale, cle_un, cle_deux from jointures where id_jointure = '" + i.toString() + "';";
                    PreparedStatement p = c.prepareStatement(query);
                    ResultSet r = p.executeQuery();
                    while (r.next()){
                        String t = r.getString(1);
                        String c1 = r.getString(2);
                        String c2 = r.getString(3);

                        Pair<String, String> pair = new Pair<>(c1, c2);
                        Pair<String, Pair<String, String>> pairPair = new Pair<>(t, pair);
                        jointures.add(pairPair);
                    }
                }
            }
            DatabaseConnection d = new DatabaseConnection(title, ip, port, user, password, database, schema, table, jointures);
            databaseConnections.add(d);
        }

        return databaseConnections;
    }

    /**
     * Récupère tous les mots de la table (liste) sélectionnée
     * @param table
     * @return
     * @throws SQLException
     */
    public ArrayList<String> getWords(String table) throws SQLException {
        ArrayList<String> words = new ArrayList<>();

        String sql = "SELECT mot FROM " + table;
        PreparedStatement pst = c.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            words.add(rs.getString(1));
        }
        return words;
    }

    /**
     * Ajoute une liste de mot inutile
     */
    public void createUselessList(String table){
        String sql = "CREATE TABLE " + table + " (id serial, mot text);";

        try {
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Vérifie si le mot est déja présent dans la liste des inutiles
     * @param word
     * @param table
     * @return
     * @throws SQLException
     */
    public boolean uselessContainsWord(String word, String table) throws SQLException {
        String sql = "SELECT exists (select 1 from " + table + " where mot = '" + word + "');";
        PreparedStatement pst = c.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        rs.next();

        return rs.getBoolean(1);
    }

    /**
     * Ajoute un mot à la liste inutile selectionnée
     * @param word
     * @param table
     * @throws SQLException
     */
    public void addWordToUseless(String word, String table) throws SQLException {
        String sql = "INSERT INTO " + table + " (mot) VALUES('" + word +"');";

        stmt.execute(sql);
    }

    /**
     * Créer une liste de semblables
     * @param table
     */
    public void createSameList(String table){
        String sql = "CREATE TABLE " + table + " (id serial, cle text, mots text[]);";
        try {
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Recupere toutes les clés de la liste semblables selectionnées
     * @param table
     * @return
     */
    public ArrayList<String> getKeys(String table){
        ArrayList<String> keys = new ArrayList<>();

        String sql = "SELECT cle FROM " + table;
        try {
            PreparedStatement pst = c.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                keys.add(rs.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return keys;
    }

    /**
     * Recupere l'ensemble d'une liste semblables selectionnées
     * @param table
     * @return
     * @throws SQLException
     */
    public Map<String, ArrayList<String>> getSames(String table) throws SQLException {
        Map<String, ArrayList<String>> sames = new HashMap<>();

        String sql = "SELECT cle, mots FROM " + table;
        PreparedStatement pst = c.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()){
            String key = rs.getString(1);
            Array words_array = rs.getArray(2);

            ArrayList<String> words = new ArrayList<>();
            String[] str_word = (String[]) words_array.getArray();
            words.addAll(Arrays.asList(str_word));

            sames.put(key, words);
        }

        return sames;
    }

    /**
     * Ajoute une ligne de semblables
     * @param key
     * @param table
     */
    public void addKeyToSame(String key, String table){
        String sql = "INSERT INTO " + table + " (cle) VALUES('" + key + "');";

        try {
            stmt.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Vérifie si le mot semblable n'existe pas déja, s'il n'est pas déjà associé
     * @param word
     * @param table
     * @return
     * @throws SQLException
     */
    public boolean sameContainsWord(String word, String table) throws SQLException {
        String sql = "select exists (select 1 from " + table + " where '" + word + "' = ANY(mots));";
        PreparedStatement pst = c.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        rs.next();

        return rs.getBoolean(1);
    }

    /**
     * Ajoute un mot dans le tableau de semblables correspondant à la clé
     * @param word
     * @param table
     * @param key
     * @throws SQLException
     */
    public void addWordToSame(String word, String table, String key) throws SQLException {
        String sql = "UPDATE " + table + " SET mots = array_append(mots, '" + word + "') where cle = '" + key + "';";

        stmt.execute(sql);
    }


}
