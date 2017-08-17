package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.FileChooser;
import javafx.util.Pair;

import java.io.File;
import java.util.ArrayList;
import java.util.Optional;

public class ExportDialog extends Dialog<ArrayList<Pair<Boolean,String>>>{

    private ObservableList<String> options;

    public ExportDialog(){
        setTitle("Type d'export");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(50);
        dialogPane.setContent(wrapper);

        DatabaseConnection databaseConnection = new DatabaseConnection("Communs", "172.30.100.12", "5432","admpostgres", "admpostgres", "bsd", "communs", "", null);
        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> tables = postGreSQL.getTables();

        options = FXCollections.observableArrayList(
                tables
        );

        ComboBox<String> comboBox = new ComboBox<>(options);
        comboBox.getSelectionModel().selectFirst();

        RadioButton radioButtonBD = new RadioButton("Export en base");
        radioButtonBD.setOnMouseClicked(event -> {
            if(!radioButtonBD.isSelected())
                comboBox.setDisable(true);
            else
                comboBox.setDisable(false);
        });


        Button buttonNewTable = new Button("+");
        buttonNewTable.setOnMouseClicked(event -> {
            Optional<String> result = new TextFieldDialog("Nouvelle table de correspondance").showAndWait();
            result.ifPresent(res -> {
                postGreSQL.addTableCorrespondance(res);
                tables.add(res);
                options = FXCollections.observableArrayList(
                        tables
                );
                comboBox.setItems(options);
                comboBox.getSelectionModel().selectLast();
            });
        });

        HBox BDBox = new HBox();
        BDBox.setSpacing(10);
        BDBox.getChildren().addAll(comboBox, buttonNewTable);

        VBox wrapperBD = new VBox();
        wrapperBD.setSpacing(10);
        wrapperBD.getChildren().addAll(radioButtonBD, BDBox);

        FileChooser fileChooser = new FileChooser();
        fileChooser.setTitle("Fichier CSV");

        final File[] file = new File[1];

        Button openFileChooser = new Button("Parcourir");
        openFileChooser.setText("Parcourir");
        openFileChooser.setOnMouseClicked(event -> {
            file[0] = fileChooser.showOpenDialog(null);
        });

        RadioButton radioButtonCSV = new RadioButton("Export en CSV");
        radioButtonCSV.setOnMouseClicked(event -> {
            if(!radioButtonCSV.isSelected())
                openFileChooser.setDisable(true);
            else
                openFileChooser.setDisable(false);
        });

        VBox wrapperCSV = new VBox();
        wrapperCSV.setSpacing(10);
        wrapperCSV.getChildren().addAll(radioButtonCSV, openFileChooser);

        wrapper.getChildren().addAll(wrapperBD, wrapperCSV);


        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        setResultConverter((ButtonType dialogButton) -> {

            if(dialogButton == okButtonType) {
                ArrayList<Pair<Boolean, String>> arrayList = new ArrayList<>();

                Pair<Boolean, String> pairBD = new Pair<>(radioButtonBD.isSelected(), comboBox.getValue());
                arrayList.add(pairBD);

                Pair<Boolean, String>  pairCSV = new Pair<>(radioButtonCSV.isSelected(), file[0].getAbsolutePath());
                arrayList.add(pairCSV);

                return arrayList;
            }
            else
                return null;

        });

        wrapper.setAlignment(Pos.CENTER);
    }
}
