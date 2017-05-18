import java.io.File;

public class Main {

    // Tout le long du programme ne prends pas en compte les "balises" try / catch, elles permettent de lever des exceptions en cas d'erreurs, c'est des trucs obligatoires mais pas vraiment importants..
    // Regarde uniquement ce qu'il y a l'interieur du try et a l'exterieur de tout

    public static void main(String args[]) {
        PostGreSQL postGreSQL = new PostGreSQL(); // On créer un objet de type PostGreSQL (classe que j'ai créer)
        postGreSQL.connection(); // On se connecte
        postGreSQL.dropTable(); // On détruit la table
        postGreSQL.createTable(); // On la recrée

        File root = new File("D:/THEO_BEGUEY/geoserver/pigma-geoserver-datadir-master/pigma-geoserver-datadir-master/workspaces"); // La racine sur laquel on va faire notre recherche

        Utils.listeRepertoire(root, postGreSQL); // On parcourt les fichiers
        postGreSQL.deconnection(); // On se déconnecte
    }
}