public class Line {

    private String id, title;

    public Line(String i, String t){
        id = i;
        title = t;

        if(id != null && title != null){
            id = id.replace("'", "''");
            title = title.replace("'", "''");
        }
    }

    public String getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

}
