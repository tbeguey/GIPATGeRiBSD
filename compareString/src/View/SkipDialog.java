package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;

import java.util.ArrayList;


public class SkipDialog extends Dialog<ArrayList<String>> {

    private ArrayList<String> labelsColumns;

    public SkipDialog(){
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefHeight(200);
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);
        dialogPane.setContent(wrapper);
        wrapper.setAlignment(Pos.CENTER);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        DatabaseConnection databaseConnection = new DatabaseConnection("Communs", "172.30.100.12", "5432","admpostgres", "admpostgres", "bsd", "communs", null, null, null);
        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> tables = postGreSQL.getTables();

        ObservableList<String> options = FXCollections.observableArrayList(
                tables
        );

        ComboBox<String> comboBox = new ComboBox<>(options);
        comboBox.getSelectionModel().selectFirst();


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

        wrapper.getChildren().addAll(comboBox, radioButtonRemove, radioButtonKeep);

        setResultConverter((ButtonType dialogButton) -> {
            ArrayList<String> arrayList = new ArrayList<>();
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
