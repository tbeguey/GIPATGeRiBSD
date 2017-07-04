package sample;

public class Line {

    private String uuid, title, harvested, source, data;

    public Line(String u, String t, String d, String h, String s){
        uuid = u;
        title = t;
        data = d;
        harvested = h;
        source = s;
    }

    public String getUuid() {
        return uuid;
    }

    public String getTitle() {
        return title;
    }

    public String getData() {
        return data;
    }

    public String getHarvested() {
        return harvested;
    }

    public String getSource() {
        return source;
    }



    private String idCouche, idNameSpace, content, name, abstr, workspace;

    public Line(String ic, String in, String c, String n, String t, String a, String w){
        idCouche = ic;
        idNameSpace = in;
        content = c;
        name = n;
        title = t;
        abstr = a;
        workspace = w;
    }


    public String getIdCouche() {
        return idCouche;
    }

    public String getIdNameSpace() {
        return idNameSpace;
    }

    public String getContent() {
        return content;
    }

    public String getName() {
        return name;
    }

    public String getAbstr() {
        return abstr;
    }

    public String getWorkspace() {
        return workspace;
    }

    private String id, schema;

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

    public String getSchema() { return schema; }

    public Line(String i, String t){
        id = i;
        title = t;

        if(id != null && title != null){
            id = id.replace("'", "''");
            title = title.replace("'", "''");
        }
    }
}
