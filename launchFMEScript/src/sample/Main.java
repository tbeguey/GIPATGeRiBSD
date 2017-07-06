package sample;

import javafx.application.Application;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{

        FileChooser fileChooser = new FileChooser();
        fileChooser.setTitle("Choissiez le script FME à éxécuter");
        File f = fileChooser.showOpenDialog(primaryStage);

        ProcessBuilder builder = new ProcessBuilder(
                "cmd.exe", "/c", "cd \"C:\\Apps\\FME_2015_32_bits\" && fme.exe " + f);
        builder.redirectErrorStream(true);
        Process p = builder.start();
        BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
        String line;
        while (true) {
            line = r.readLine();
            if (line == null) { break; }
            System.out.println(line);
        }
    }


    public static void main(String[] args) {
        launch(args);
    }
}
