package Main;

import Element.StringCompared;
import Utils.Utils;
import View.MyScene;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.util.ArrayList;


public class Main extends Application {

    public static final double WIDTH = 400;
    public static final double HEIGHT = 600;

    public static void main(String[] args) {
        launch(args);
    }

    /**
     * Démarre l'interface graphique
     * @param primaryStage
     * @throws Exception
     */
    @Override
    public void start(Stage primaryStage) throws Exception {
        Stage stage = primaryStage;
        stage.setTitle("Valider les comparaisons");
        stage.setResizable(false);
        stage.setWidth(WIDTH);
        stage.setHeight(HEIGHT);

        Scene scene = new MyScene();
        stage.setScene(scene);
        stage.show();

        StringCompared stringCompared = new StringCompared("COMMUNE DE MIALET _24", "1", "");
        StringCompared text = new StringCompared("Miallet", "2", "");
        /*stringCompared.getArrayList().forEach(System.out::println);
        text.getArrayList().forEach(System.out::println);

        ArrayList
        System.out.println();*/
    }
}
