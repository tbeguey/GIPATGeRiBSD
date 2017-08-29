package PreconfigView;

import Element.DatabaseConnection;
import Element.StringCompared;
import Main.Main;
import View.MyScene;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

/**
 * Scene pour gérer les mots inutiles et mots semblables
 */
public class SameUselessScene extends Scene {

    public static ArrayList<String> useless = new ArrayList<>();
    public static Map<String, ArrayList<String>> same = new HashMap<>();

    public SameUselessScene(DatabaseConnection databaseConnection, String profil){
        super(new Group(), Main.WIDTH, Main.HEIGHT);

        Group group = (Group) getRoot();

        VBox wrapper = new VBox();
        wrapper.setSpacing(30);
        wrapper.setPadding(new Insets(Main.WIDTH / 20,0,0, Main.WIDTH / 20));

        Text titleScene = new Text("Préconfiguration");
        titleScene.setFont(new Font(30));

        Text text = new Text("Lors des comparaisons, vous pensez que certains mots, dis inutiles, \n" +
                "vont pollués vos comparaisons ? (ex: 'de', 'à', etc...) \n" +
                "Un dictionnaire de mot peut être établi, vous pouvez importer/exporter une liste.\n" +
                "De plus il existe aussi un dictionnaire de mots semblables, il peut être \n" +
                "utiliser pour les accronymes par exemple : \n" +
                "Vous allez dire que : TBM = Transports Bordeaux Métropole.");

        Button uselessButton = new Button("Gérer mots inutiles");
        uselessButton.setOnMouseClicked(event -> {
            Optional<ArrayList<String>> result = new UselessDialog(profil).showAndWait();
            result.ifPresent(res -> {
                useless = res;
            });
        });

        Button sameButton = new Button("Gérer mots semblables");
        sameButton.setOnMouseClicked(event -> {
            Optional<Map<String, ArrayList<String>>> result = new SameDialog(profil).showAndWait();
            result.ifPresent(res -> {
                same = res;
            });
        });

        HBox utilsHbox = new HBox();
        utilsHbox.setSpacing(10);
        utilsHbox.getChildren().addAll(uselessButton, sameButton);

        Button next = new Button("Suivant");
        next.setOnMouseClicked(event -> {
            StringCompared.initializeWords();
            Scene scene = new MyScene(databaseConnection);
            Main.getStage().setHeight(Main.HEIGHT+100);
            Main.getStage().setScene(scene);
        });

        wrapper.getChildren().addAll(titleScene, text, utilsHbox, next);
        wrapper.setAlignment(Pos.CENTER);

        group.getChildren().add(wrapper);
    }
}
