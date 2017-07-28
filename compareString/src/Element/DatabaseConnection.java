package Element;

import javafx.util.Pair;

import java.util.ArrayList;

public class DatabaseConnection {

    private String title, ip, port, user, password, database, schema, table;
    private ArrayList<String> columns;
    private ArrayList<Pair<String, Pair<String, String>>> joins;

    private String query;

    public DatabaseConnection(String t, String i, String p, String u, String pass){
        title = t;
        ip = i;
        port = p;
        user = u;
        password = pass;
    }

    public DatabaseConnection(String t, String i, String p, String u, String pass, String d, String s, String tb, ArrayList<Pair<String, Pair<String, String>>> j){
        title = t;
        ip = i;
        port = p;
        user = u;
        password = pass;
        database = d.toLowerCase();
        schema = s.toLowerCase();
        table = tb.toLowerCase();
        columns = new ArrayList<>();
        joins = j;
    }

    public void createSelectQuery(){
        query = "SELECT ";

        for (int i=0; i< columns.size(); i++) {
            if(i !=0)
                query += ", ";
            else
                query += table + ".";

            query += columns.get(i);
        }


        query += " FROM ";
        query += schema;
        query += ".";
        query += table;


        if(joins != null){
            for (Pair<String, Pair<String, String>> p : joins) {
                query += " JOIN " + schema + "." + p.getKey() + " ON " + p.getValue().getKey() + " = " + p.getValue().getValue();
            }
        }

        System.out.println(query);
    }

    public void exceptCommunsQuery(String columnCorrespondance){
        String tmp = query;
        query += " EXCEPT ";
        query += tmp;
        query += " JOIN communs." + columnCorrespondance + " on " + table + "." + columns.get(0) + " = " + "id" + table;

        System.out.println(query);
    }

    public void joinCommuns(String columnCorrespondance, ArrayList<String> booleans){
        query += " JOIN communs." + columnCorrespondance + " on " + table + "." + columns.get(0) + " = " + "id" + table;
        query += " WHERE ";
        for (int i = 0; i<booleans.size(); i++){
            if(i != 0)
                query += " AND ";

            query += booleans.get(i) + " = true";
        }

        System.out.println(query);
    }

    public String getTitle() {
        return title;
    }

    public String getIp() {
        return ip;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }

    public String getDatabase() {
        return database;
    }

    public String getSchema() {
        return schema;
    }

    public String getPort() { return port; }

    public String getTable() { return table; }

    public ArrayList<String> getColumns() {
        return columns;
    }

    public String getQuery() { return query; }

    @Override
    public String toString() {
        return title;
    }

    public void setDatabase(String database) {
        this.database = database.toLowerCase();
    }

    public void setSchema(String schema) {
        this.schema = schema.toLowerCase();
    }

    public void setTable(String table) {
        this.table = table.toLowerCase();
    }

    public void setColumns(ArrayList<String> columns) {
        this.columns = columns;
    }

    public void setJoins(ArrayList<Pair<String, Pair<String, String>>> joins) {
        this.joins = joins;
    }

    public ArrayList<Pair<String, Pair<String, String>>> getJoins() {
        return joins;
    }

}
