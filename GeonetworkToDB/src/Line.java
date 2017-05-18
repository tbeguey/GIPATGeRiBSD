import java.sql.SQLXML;

/**
 * Created by tbeguey on 15/05/2017.
 */
public class Line {

    private String uuid, title, harvested, source;
    private SQLXML data;

    public Line(String u, String t, SQLXML d, String h, String s){
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

    public SQLXML getData() {
        return data;
    }

    public String getHarvested() {
        return harvested;
    }

    public String getSource() {
        return source;
    }
}
