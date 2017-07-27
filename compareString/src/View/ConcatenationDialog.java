package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.util.Pair;

import java.util.ArrayList;

public class ConcatenationDialog extends Dialog<String> {

    private ArrayList<ComboBox> comboBoxes;

    private VBox wrapper;

    public ConcatenationDialog(DatabaseConnection databaseConnection){
        setTitle("Concaténation des colonnes - " + databaseConnection.getTitle());
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);
        dialogPane.setPrefHeight(400);

        wrapper = new VBox();
        wrapper.setSpacing(10);
        dialogPane.setContent(wrapper);

        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> columns = new ArrayList<>();
        columns.add("null");
        columns.addAll(postGreSQL.getColumns(databaseConnection.getTable()));
        if(databaseConnection.getJoins() != null) {
            for (Pair<String, Pair<String, String>> p : databaseConnection.getJoins()) {
                columns.addAll(postGreSQL.getColumns(p.getKey()));
            }
        }

        ObservableList<String> options = FXCollections.observableArrayList(
                columns
        );

        comboBoxes = new ArrayList<>();
        for (int i = 0; i < 2; i++) {
           addCombobox(options);
        }

        Button newCombobox = new Button("Ajouter");
        newCombobox.setOnMouseClicked(event -> {
            wrapper.getChildren().remove(newCombobox);
            addCombobox(options);
            wrapper.getChildren().add(newCombobox);
        });

        wrapper.setAlignment(Pos.CENTER);
        wrapper.getChildren().add(newCombobox);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        setResultConverter((ButtonType dialogButton) -> {

            if(dialogButton == okButtonType) {
                return postGreSQL.createConcatenation(comboBoxes);
            }
            else
                return null;

        });

    }

    private void addCombobox(ObservableList<String> options){
        ComboBox comboBox = new ComboBox(options);
        comboBox.getSelectionModel().selectFirst();
        comboBoxes.add(comboBox);
        wrapper.getChildren().add(comboBox);
    }
}
