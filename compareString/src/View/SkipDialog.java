package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;

import java.util.ArrayList;


/**
 * Dialogue permettant d'utiliser les résultats précédents
 */
public class SkipDialog extends Dialog<ArrayList<String>> {

    private ArrayList<String> labelsColumns;

    public SkipDialog(){
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefHeight(300);
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);
        dialogPane.setContent(wrapper);
        wrapper.setAlignment(Pos.CENTER);

        Text text = new Text("Vous avez la possibilité d'utiliser des résultats précédents. \n" +
                "Par exemple, si vous avez déjà effectuer cette vérification mais que vous\n" +
                "ne voulez pas voir les résultats que vous avez déjà parcourus.\n" +
                "Ou bien vous pouvez retravaillez uniquement sur ceux où un résultat existe déja.\n" +
                "Sinon il vous suffit de ne rien cocher pour passer cette étape.");
        wrapper.getChildren().add(text);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        DatabaseConnection databaseConnection = new DatabaseConnection("Communs", "172.30.100.12", "5432","admpostgres", "admpostgres", "bsd", "communs", "",  null);
        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> tables = postGreSQL.getTables();

        ObservableList<String> options = FXCollections.observableArrayList(
                tables
        );

        Text textComboBox = new Text("Table de résultats associés : ");

        ComboBox<String> comboBox = new ComboBox<>(options);
        comboBox.getSelectionModel().selectFirst();

        HBox hBox = new HBox();
        hBox.setSpacing(10);
        hBox.getChildren().addAll(textComboBox, comboBox);

        VBox wrapperColumns = new VBox();
        wrapperColumns.setSpacing(5);
        ScrollPane scrollPane = new ScrollPane(wrapperColumns);

        ArrayList<RadioButton> radioButtons = new ArrayList<>();

        labelsColumns = postGreSQL.getBooleans(comboBox.getValue());
        for (String s : labelsColumns) {
            RadioButton radioButton = new RadioButton(s);
            radioButton.setSelected(true);
            radioButtons.add(radioButton);

            wrapperColumns.getChildren().add(radioButton);
        }

        comboBox.valueProperty().addListener((observable, oldValue, newValue) -> {
            wrapperColumns.getChildren().clear();
            radioButtons.clear();

            labelsColumns = postGreSQL.getBooleans(comboBox.getValue());
            for (String s : labelsColumns) {
                RadioButton radioButton = new RadioButton(s);
                radioButton.setSelected(true);
                radioButtons.add(radioButton);

                wrapperColumns.getChildren().add(radioButton);
            }

        });

        RadioButton radioButtonRemove = new RadioButton("Voulez vous enlever les titres déja validés ?");
        RadioButton radioButtonKeep = new RadioButton("Voulez vous garder uniquement les titres déja en correspondance ?");

        radioButtonKeep.setOnMouseClicked(event -> {
            if(radioButtonKeep.isSelected()){
                wrapper.getChildren().add(scrollPane);
                radioButtonRemove.setSelected(false);
            }
            else
                wrapper.getChildren().remove(scrollPane);

        });

        radioButtonRemove.setOnMouseClicked(event -> {
            if(radioButtonRemove.isSelected()){
                radioButtonKeep.setSelected(false);
                wrapper.getChildren().remove(scrollPane);
            }
        });

        wrapper.getChildren().addAll(hBox, radioButtonRemove, radioButtonKeep);

        setResultConverter((ButtonType dialogButton) -> {
            ArrayList<String> arrayList = new ArrayList<>();
            postGreSQL.deconnection();
            if(dialogButton == okButtonType){
                arrayList.add(comboBox.getValue());
                arrayList.add(Boolean.toString(radioButtonRemove.isSelected()));
                arrayList.add(Boolean.toString(radioButtonKeep.isSelected()));

                for (RadioButton radioButton : radioButtons){
                    if(radioButton.isSelected())
                        arrayList.add(radioButton.getText());
                }

                return arrayList;
            }
            else
                return null;

        });
    }
}
