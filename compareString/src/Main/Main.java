package Main;

import PreconfigView.ProfilScene;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;


public class Main extends Application {

    public static final double WIDTH = 400;
    public static final double HEIGHT = 400;

    private static Stage stage;

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
        stage = primaryStage;
        stage.setTitle("Logiciel de comparaison de chaînes de caractères");
        stage.setResizable(false);
        stage.setWidth(WIDTH);
        stage.setHeight(HEIGHT);

        Scene scene = new ProfilScene();
        stage.setScene(scene);
        stage.show();
    }

    public static Stage getStage() { return stage; }
}
