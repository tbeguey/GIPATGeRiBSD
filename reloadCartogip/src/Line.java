public class Line {

    private String id, title, schema;

    public Line(String i, String t, String s){
        id = i;
        title = t;
        schema = s;

        if(id != null && title != null){
            id = id.replace("'", "''");
            title = title.replace("'", "''");
            if(schema != null)
                schema = schema.replace("'", "''");
        }
    }

    public String getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getSchema() { return schema; }
}
