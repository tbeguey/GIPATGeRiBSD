public class DatabaseConnection {

    private String title, ip, port, user, password, database, schema, query;

    public DatabaseConnection(String t, String i, String p, String u, String pass, String d, String s, String q){
        title = t;
        ip = i;
        port = p;
        user = u;
        password = pass;
        database = d;
        schema = s;
        query = q;
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

    public String getQuery() {
        return query;
    }

    public String getPort() { return port; }

    @Override
    public String toString() {
        return title;
    }
}
