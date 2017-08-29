package PreconfigView;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import View.TextFieldDialog;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Optional;


/**
 * Dialog de gestion des mots inutiles
 */
public class UselessDialog extends Dialog<ArrayList<String>>{

    private VBox wrapperWords;

    private PostGreSQL postGreSQL;

    public UselessDialog(String profil){
        setTitle("Configuration des mots inutiles");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        DatabaseConnection databaseConnection = new DatabaseConnection("inutiles", "172.30.100.12", "5432", "admpostgres", "admpostgres", "bsd", profil + "_inutiles", null, null);
        postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> tables = new ArrayList<>();
        tables.add("null");
        tables.addAll(postGreSQL.getTables());

        final ObservableList<String>[] options = new ObservableList[1];
        options[0] = FXCollections.observableArrayList(tables);

        ComboBox<String> comboBox = new ComboBox(options[0]);
        comboBox.getSelectionModel().selectFirst();
        comboBox.valueProperty().addListener((observable, oldValue, newValue) -> {
            RefreshWords(comboBox.getValue());
        });

        Text text = new Text("Liste à utiliser : ");

        VBox listBox = new VBox();
        listBox.setSpacing(10);
        listBox.getChildren().addAll(text, comboBox);

        wrapperWords = new VBox();
        wrapperWords.setSpacing(5);


        ScrollPane scrollPane = new ScrollPane(wrapperWords);
        scrollPane.setMaxHeight(100);
        scrollPane.setPrefWidth(300);

        HBox hBox = new HBox();
        hBox.setSpacing(20);
        hBox.getChildren().addAll(listBox, scrollPane);

        Button newListButton = new Button("Nouvelle liste");
        newListButton.setOnMouseClicked(event -> {
            Optional<String> result = new TextFieldDialog("Nom de la liste").showAndWait();
            result.ifPresent(res ->{
                postGreSQL.createUselessList(res);
                tables.add(res);
                options[0] = FXCollections.observableArrayList(tables);
                comboBox.setItems(options[0]);
                comboBox.getSelectionModel().selectLast();
            });
        });

        Button importListButton = new Button("Importer une liste");
        importListButton.setOnMouseClicked(event -> {

        });

        Button exportListButton = new Button("Exporter cette liste");
        exportListButton.setOnMouseClicked(event -> {

        });

        HBox buttonsBox = new HBox();
        buttonsBox.setSpacing(5);
        buttonsBox.getChildren().addAll(newListButton, importListButton, exportListButton);

        HBox addBox = new HBox();
        addBox.setSpacing(10);

        TextField textField = new TextField();
        textField.setPromptText("Mot inutile à ajouter");
        textField.setPrefWidth(300);

        Button add = new Button("Ajouter");
        add.setOnMouseClicked(event -> {
            if(comboBox.getValue() != "null"){
                try {
                    if(!postGreSQL.uselessContainsWord(textField.getText(), comboBox.getValue())){
                        postGreSQL.addWordToUseless(textField.getText(), comboBox.getValue());
                        textField.clear();
                        RefreshWords(comboBox.getValue());
                    }
                    else {
                        Alert alert = new Alert(Alert.AlertType.ERROR);
                        alert.setContentText("Le mot '" + textField.getText() + "' fait déja parti de cette liste");
                        alert.showAndWait();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        });


        addBox.getChildren().addAll(textField, add);

        wrapper.setAlignment(Pos.CENTER);

        wrapper.getChildren().addAll(hBox, buttonsBox, addBox);
        dialogPane.setContent(wrapper);

        dialogPane.getButtonTypes().addAll(ButtonType.OK);

        setResultConverter((ButtonType dialogButton) -> {
            ArrayList<String> arrayList = new ArrayList<>();

            try {
                arrayList = postGreSQL.getWords(comboBox.getValue());
            } catch (SQLException e) {
                e.printStackTrace();
            }

            return arrayList;
        });
    }

    /**
     * Vide la liste et réalimente la liste selon la table sélectionnée dans la liste déroulante
     * @param table
     */
    private void RefreshWords(String table){
        wrapperWords.getChildren().clear(); // vide la liste
        try {
            if(table != null){
                if(!table.equals("null")){
                    ArrayList<String> words = postGreSQL.getWords(table);
                    for (String s : words){
                        Text t = new Text(s);
                        wrapperWords.getChildren().add(t);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
