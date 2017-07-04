package sample;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;


public class Main extends Application {

    public static final int WIDTH = 300;
    public static final int HEIGHT = 200;

    @Override
    public void start(Stage primaryStage) throws Exception{
        Stage stage = primaryStage;
        stage.setTitle("Rafraichissement des bases");
        stage.setResizable(false);
        stage.setWidth(WIDTH);
        stage.setHeight(HEIGHT);

        Scene scene = new MyScene();
        stage.setScene(scene);
        stage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
