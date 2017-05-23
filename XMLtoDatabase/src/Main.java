import javafx.application.Application;
import javafx.stage.DirectoryChooser;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

import java.io.File;

public class Main extends Application{

    // Tout le long du programme ne prends pas en compte les "balises" try / catch, elles permettent de lever des exceptions en cas d'erreurs, c'est des trucs obligatoires mais pas vraiment importants..
    // Regarde uniquement ce qu'il y a l'interieur du try et a l'exterieur de tout

    public static void main(String args[]) {
        launch();
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        PostGreSQL postGreSQL = new PostGreSQL(); // On créer un objet de type PostGreSQL (classe que j'ai créer)
        postGreSQL.connection(); // On se connecte
        postGreSQL.createTable(); // On la recrée si elle existe pas

        DirectoryChooser directoryChooser = new DirectoryChooser();
        directoryChooser.setTitle("Choisir le dossier à parcourir");
        File root = directoryChooser.showDialog(primaryStage); // La racine sur laquel on va faire notre recherche

        Utils.listeRepertoire(root, postGreSQL); // On parcourt les fichiers
        postGreSQL.deconnection(); // On se déconnecte
    }
}