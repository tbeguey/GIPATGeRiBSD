public class Main {

    public static void main(String args[]){


        PostGreSQL postGreSQLBSD = new PostGreSQL();
        postGreSQLBSD.connection();
        postGreSQLBSD.getLinesOnInit("bsd.type_donnees_echange_init", "no_type_donnees_echange", "type_donnees_echange_libelle");
        postGreSQLBSD.getLinesOnFinal("bsd.type_donnees_echange");
        postGreSQLBSD.deleteLinesOnFinal("idbsd", "bsd.type_donnees_echange");
        postGreSQLBSD.insertOrUpdateLines("bsd.type_donnees_echange");
        postGreSQLBSD.dropTable("bsd.type_donnees_echange_init");
        postGreSQLBSD.deconnection();
    }
}
