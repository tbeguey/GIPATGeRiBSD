package PreconfigView;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Element.StringCompared;
import Utils.*;
import View.TextFieldDialog;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

/**
 * Dialogue de gestion des mots semblables
 */
public class SameDialog extends Dialog<Map<String, ArrayList<String>>> {

    private PostGreSQL postGreSQL;

    private ObservableList<String> optionsKey; // intermédiaire pour passer d'une List à une ComboBox

    public SameDialog(String profil){
        setTitle("Configuration des mots semblables");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        DatabaseConnection databaseConnection = new DatabaseConnection("semblables", "172.30.100.12", "5432", "admpostgres", "admpostgres", "bsd", profil + "_semblables", null, null);
        postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> tables = new ArrayList<>();
        tables.add("null");
        tables.addAll(postGreSQL.getTables());

        final ObservableList<String>[] options = new ObservableList[1];
        options[0] = FXCollections.observableArrayList(tables);

        ComboBox<String> comboBox = new ComboBox(options[0]);
        comboBox.getSelectionModel().selectFirst();


        Text text = new Text("Liste à utiliser : ");

        Button newList = new Button("Ajouter une liste");
        newList.setOnMouseClicked(event -> {
            Optional<String> result = new TextFieldDialog("Nouvelle liste").showAndWait();
            result.ifPresent(res -> {
                postGreSQL.createSameList(res);
                tables.add(res);
                options[0] = FXCollections.observableArrayList(res);
                comboBox.setItems(options[0]);
                comboBox.getSelectionModel().selectLast();
            });
        });

        HBox box = new HBox();
        box.setSpacing(10);
        box.getChildren().addAll(comboBox, newList);

        VBox listBox = new VBox();
        listBox.setSpacing(10);
        listBox.getChildren().addAll(text, box);

        ArrayList<String> keyOptions = new ArrayList<>();

        optionsKey = FXCollections.observableArrayList(
                keyOptions
        );

       ComboBox<String> keyComBox = new ComboBox(optionsKey);
       keyComBox.getSelectionModel().selectFirst();

       comboBox.valueProperty().addListener((observable, oldValue, newValue) -> {
           ArrayList<String> keys = postGreSQL.getKeys(comboBox.getValue());
           ObservableList<String> clearOptions = FXCollections.observableArrayList(keys);
           keyComBox.setItems(clearOptions);
           keyComBox.getSelectionModel().selectFirst();
       });

       Button newSameKey = new Button("+");
       newSameKey.setOnMouseClicked(event -> {
           Optional<String> result = new TextFieldDialog("Nouvelle liste").showAndWait();
           result.ifPresent(res -> {
               postGreSQL.addKeyToSame(res, comboBox.getValue());
               ArrayList<String> keys = postGreSQL.getKeys(comboBox.getValue());
               ObservableList<String> clearOptions = FXCollections.observableArrayList(keys);
               keyComBox.setItems(clearOptions);
               keyComBox.getSelectionModel().selectLast();
           });
       });

        HBox keyBox = new HBox();
        keyBox.setSpacing(10);
        keyBox.getChildren().addAll(keyComBox, newSameKey);

        TextField textField = new TextField();
        textField.setPromptText("Mot semblable");
        textField.setPrefWidth(300);

        Button add = new Button("Ajouter");
        add.setOnMouseClicked(event -> {
            try {
                if(!postGreSQL.sameContainsWord(textField.getText(), comboBox.getValue())){
                    postGreSQL.addWordToSame(textField.getText(), comboBox.getValue(), keyComBox.getValue());
                    textField.clear();
                }
                else{
                    Alert alert = new Alert(Alert.AlertType.ERROR);
                    alert.setContentText("Le mot '" + textField.getText() + "' fait déja parti d'une liste");
                    alert.showAndWait();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

        });


        HBox valueBox = new HBox();
        valueBox.setSpacing(10);
        valueBox.getChildren().addAll(textField, add);

        wrapper.setAlignment(Pos.CENTER);

        wrapper.getChildren().addAll(listBox, keyBox, valueBox);
        dialogPane.setContent(wrapper);

        dialogPane.getButtonTypes().addAll(ButtonType.OK);

        setResultConverter((ButtonType dialogButton) -> {
            Map<String, ArrayList<String>> map = new HashMap<>();

            try {
                map = postGreSQL.getSames(comboBox.getValue());
            } catch (SQLException e) {
                e.printStackTrace();
            }

            return map;
        });

    }
}
