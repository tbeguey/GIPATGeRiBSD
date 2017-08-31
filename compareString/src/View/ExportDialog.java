package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Utils.CSVUtils;
import Utils.Category;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.DirectoryChooser;
import javafx.stage.FileChooser;
import javafx.util.Pair;

import java.io.File;
import java.util.ArrayList;
import java.util.Optional;

/**
 * Boite de dialogue pour les choix d'export
 */
public class ExportDialog extends Dialog<ArrayList<Pair<Boolean,ArrayList<String>>>>{

    private ObservableList<String> options;

    public ExportDialog(){
        setTitle("Type d'export");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(50);
        dialogPane.setContent(wrapper);

        Text text = new Text("A présent, les résultats que vous avez sélectionné peuvent être si vous le souhaitez \n" +
                "exporter en base, il vous suffit de choisir le table correspondante.\n" +
                "Si vous le souhaitez vous pouvez aussi exportez les résultats \n" +
                "selon leur catégorie dans un fichier csv");
        wrapper.getChildren().add(text);

        DatabaseConnection databaseConnection = new DatabaseConnection("Communs", "172.30.100.12", "5432","admpostgres", "admpostgres", "bsd", "communs", "", null);
        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> tables = postGreSQL.getTables();

        options = FXCollections.observableArrayList(
                tables
        );

        ComboBox<String> comboBox = new ComboBox<>(options);
        comboBox.getSelectionModel().selectFirst();
        comboBox.setDisable(true);

        Button buttonNewTable = new Button("+");
        buttonNewTable.setDisable(true);
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

        RadioButton radioButtonBD = new RadioButton("Export en base");
        radioButtonBD.setOnMouseClicked(event -> {
            if(!radioButtonBD.isSelected()){
                comboBox.setDisable(true);
                buttonNewTable.setDisable(true);
            }
            else{
                comboBox.setDisable(false);
                buttonNewTable.setDisable(false);
            }
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

        DirectoryChooser directoryChooser = new DirectoryChooser();
        directoryChooser.setTitle("Enregistrer sous");

        Text fileName = new Text("");

        Button openFileChooser = new Button("Parcourir (fichier existant)");
        openFileChooser.setDisable(true);
        openFileChooser.setOnMouseClicked(event -> {
            file[0] = fileChooser.showOpenDialog(null);
            fileName.setText(file[0].getName());
        });

        Button openDirectoryChooser = new Button("Parcourir (créer et enregistrer fichier)");
        openDirectoryChooser.setDisable(true);
        openDirectoryChooser.setOnMouseClicked(event -> {
            File directory = directoryChooser.showDialog(null);
            Optional<String> title = new TextFieldDialog("Nom du fichier").showAndWait();
            title.ifPresent(res -> {
                file[0] = new File(directory + "/" + res);
            });
            fileName.setText(file[0].getName());
        });


        HBox fileBox = new HBox();
        fileBox.setSpacing(10);
        fileBox.getChildren().addAll(openFileChooser, openDirectoryChooser, fileName);

        VBox wrapperCategory = new VBox();
        wrapperCategory.setSpacing(5);
        Category[] categories = {Category.TFavorable, Category.Favorable, Category.Passable, Category.Défavorable, Category.TDéfavorable};
        ArrayList<RadioButton> radioButtons = new ArrayList<>();
        for (int i = 0; i < categories.length; i++) {
            RadioButton radioButton = new RadioButton(categories[i].toString());
            wrapperCategory.getChildren().add(radioButton);
            radioButtons.add(radioButton);
        }
        ScrollPane scrollPane = new ScrollPane(wrapperCategory);
        scrollPane.setDisable(true);

        RadioButton radioButtonCSV = new RadioButton("Export en CSV");
        radioButtonCSV.setOnMouseClicked(event -> {
            if(!radioButtonCSV.isSelected()){
                openFileChooser.setDisable(true);
                openDirectoryChooser.setDisable(true);
                scrollPane.setDisable(true);

            }
            else{
                openFileChooser.setDisable(false);
                openDirectoryChooser.setDisable(false);
                scrollPane.setDisable(false);
            }
        });

        VBox wrapperCSV = new VBox();
        wrapperCSV.setSpacing(10);
        wrapperCSV.getChildren().addAll(radioButtonCSV, fileBox, scrollPane);

        wrapper.getChildren().addAll(wrapperBD, wrapperCSV);


        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        setResultConverter((ButtonType dialogButton) -> {

            if(dialogButton == okButtonType) {
                ArrayList<Pair<Boolean, ArrayList<String>>> arrayList = new ArrayList<>();

                ArrayList<String> comboBoxValue = new ArrayList<>();
                comboBoxValue.add(comboBox.getValue());
                Pair<Boolean, ArrayList<String>> pairBD = new Pair<>(radioButtonBD.isSelected(), comboBoxValue);
                arrayList.add(pairBD);

                ArrayList<String> categoriesSelected = new ArrayList<>();
                if(radioButtonCSV.isSelected()){
                    categoriesSelected.add(file[0].getAbsolutePath());
                    for (RadioButton rb : radioButtons) {
                        if(rb.isSelected())
                            categoriesSelected.add(rb.getText());
                    }
                }
                Pair<Boolean, ArrayList<String>>  pairCSV = new Pair<>(radioButtonCSV.isSelected(), categoriesSelected);
                arrayList.add(pairCSV);

                postGreSQL.deconnection();
                return arrayList;
            }
            else
                return null;

        });

        wrapper.setAlignment(Pos.CENTER);
    }
}
