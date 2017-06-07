public class Line {

    private String idCouche, idNameSpace, content, name, title, abstr, workspace;

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

    public String getTitle() {
        return title;
    }

    public String getAbstr() {
        return abstr;
    }

    public String getWorkspace() {
        return workspace;
    }
}
