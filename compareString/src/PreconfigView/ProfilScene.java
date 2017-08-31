package PreconfigView;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Main.Main;
import View.TextFieldDialog;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Optional;

/**
 * Scène pour la préconfiguration des profils
 */
public class ProfilScene extends Scene{

    public ProfilScene(){
        super(new Group(), Main.WIDTH, Main.HEIGHT);
        Group group = (Group) getRoot();

        VBox wrapper = new VBox();
        wrapper.setSpacing(40);
        wrapper.setPadding(new Insets(Main.WIDTH / 20,0,0, Main.WIDTH / 20));

        Text title = new Text("Préconfiguration");
        title.setFont(new Font(30));

        Text text = new Text("Dans quel but allez vous vous servir de ce logiciel de comparaison ? \n" +
                "Nous appelerons cela un profil.");

        DatabaseConnection databaseConnection = new DatabaseConnection("NewProfil", "172.30.100.12", "5432","admpostgres", "admpostgres", "bsd", null, "", null);
        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);

        ArrayList<String> profilArrayList = new ArrayList<>();
        for (int i=0;i<postGreSQL.getSchemas().size(); i++) {
            String s = postGreSQL.getSchemas().get(i);
            if (s.endsWith("_connexions"))
                profilArrayList.add(s.replace("_connexions", ""));
        }
        final ObservableList<String>[] optionsProfil = new ObservableList[1];
        optionsProfil[0] = FXCollections.observableArrayList(profilArrayList);

        ComboBox<String> profilComboBox = new ComboBox(optionsProfil[0]);
        profilComboBox.getSelectionModel().selectFirst();

        Button addProfil = new Button("Ajouter un profil");
        addProfil.setOnMouseClicked(event -> {
            Optional<String> result = new TextFieldDialog("Nouveau profil").showAndWait();
            result.ifPresent(res -> {
                try {
                    postGreSQL.createProfil(res);
                    profilArrayList.add(res);
                    optionsProfil[0] = FXCollections.observableArrayList(profilArrayList);
                    profilComboBox.setItems(optionsProfil[0]);
                    profilComboBox.getSelectionModel().selectLast();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            });
        });

        HBox profilBox = new HBox();
        profilBox.setSpacing(10);
        profilBox.getChildren().addAll(profilComboBox, addProfil);

        Button next = new Button("Suivant");
        next.setOnMouseClicked(event -> {
            postGreSQL.deconnection();
            Scene scene = new ConnexionScene(profilComboBox.getValue());
            Main.getStage().setScene(scene);
        });

        wrapper.getChildren().addAll(title, text, profilBox, next);
        wrapper.setAlignment(Pos.CENTER);

        group.getChildren().add(wrapper);
    }
}
