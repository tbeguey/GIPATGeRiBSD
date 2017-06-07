public class Main {

    public static void main(String args[]){
        PostGreSQL postGreSQLCartogip = new PostGreSQL();
        postGreSQLCartogip.connection();
        postGreSQLCartogip.getLinesOnInit("cartogip.couche_init", "id_couche", "couche_libelle", "couche_schema");
        postGreSQLCartogip.getLinesOnFinal("cartogip.couche");
        postGreSQLCartogip.deleteLinesOnFinal("idcartogip", "cartogip.couche");
        postGreSQLCartogip.insertOrUpdateLines("cartogip.couche");
        postGreSQLCartogip.dropTable("cartogip.couche_init");
        postGreSQLCartogip.deconnection();
    }
}
