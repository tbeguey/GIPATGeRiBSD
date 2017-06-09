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

        StringCompared stringCompared = new StringCompared("DREAL NOUVELLE AQUITAINE - SITE DE BORDEAUX - SCOT", "0");
        StringCompared compared = new StringCompared("CR Aquitaine - EPCI Nouvelle Aquitaine", "1");
        stringCompared.removeCommonWords(compared);
        System.out.println(stringCompared.getTextWithoutCommon());
        System.out.println(compared.getTextWithoutCommon());
        System.out.println(Utils.leven(stringCompared.getTextWithoutCommon(), compared.getTextWithoutCommon()));
    }
}
