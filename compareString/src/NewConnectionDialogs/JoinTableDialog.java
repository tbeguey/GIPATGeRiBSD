package NewConnectionDialogs;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.util.Pair;

import javax.xml.crypto.Data;
import java.util.ArrayList;

public class JoinTableDialog extends Dialog<ArrayList<Pair<String, Pair<String, String>>>>{

    private ObservableList<String> optionsTables;

    private PostGreSQL postGreSQL;
    private DatabaseConnection databaseConnection;

    private ArrayList<Pair<ComboBox, Pair<ComboBox, ComboBox>>> joins = new ArrayList<>();

    private VBox wrapperScroll;

    public JoinTableDialog(DatabaseConnection d){
        setTitle("Configuration des jointures");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(800);
        dialogPane.setPrefHeight(600);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        Text text = new Text("Vous souhaitez accéder à certains champs depuis une jointure ? \n" +
                "Vous n'avez qu'à cliquer sur le bouton ci-dessous. \n" +
                "Tout d'abord choisissez la table concernée, \n" +
                "puis les deux champs suivants correspondent aux clés pour effectuer cette joitnure. \n" +
                "Sinon vous n'avez qu'a Valider pour passer cette étape.");


        databaseConnection = d;
        postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> tables = postGreSQL.getTables();
        tables.remove(databaseConnection.getTable());

        optionsTables = FXCollections.observableArrayList(
                tables
        );

        Button newJoinButton = new Button();
        newJoinButton.setText("Nouvelle jointure");
        newJoinButton.setOnMouseClicked(event -> {
            addJoin();
        });


        wrapperScroll = new VBox();
        wrapperScroll.setSpacing(10);
        ScrollPane scrollPane = new ScrollPane(wrapperScroll);
        scrollPane.setHbarPolicy(ScrollPane.ScrollBarPolicy.NEVER);

        wrapper.getChildren().addAll(text, newJoinButton, scrollPane);

        wrapper.setAlignment(Pos.CENTER);

        dialogPane.setContent(wrapper);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);


        setResultConverter((ButtonType dialogButton) ->{
            postGreSQL.deconnection();
            if(dialogButton == okButtonType) {
                ArrayList<Pair<String, Pair<String, String>>> arrayList = new ArrayList<>();

                for (Pair<ComboBox, Pair<ComboBox, ComboBox>> p : joins) {
                    Pair<String, String> pair = new Pair<>(p.getValue().getKey().getValue().toString(), p.getValue().getValue().getValue().toString());
                    Pair<String, Pair<String, String>> pairPair = new Pair<>(p.getKey().getValue().toString(), pair);

                    arrayList.add(pairPair);
                }

                return arrayList;
            }
            else
                return null;
        });
    }

    public void addJoin(){
        ComboBox comboBoxTable = new ComboBox(optionsTables);
        comboBoxTable.getSelectionModel().selectFirst();


        ArrayList<String> columnsFirst = postGreSQL.getColumns((String) comboBoxTable.getValue());
        ObservableList<String> optionsFirst = FXCollections.observableArrayList(
                columnsFirst
        );

        ComboBox comboBoxFirst = new ComboBox(optionsFirst);
        comboBoxFirst.getSelectionModel().selectFirst();

        ArrayList<String> columnsSecond = postGreSQL.getColumns(databaseConnection.getTable());
        for (Pair<ComboBox, Pair<ComboBox, ComboBox>> p : joins) {
            columnsSecond.addAll(postGreSQL.getColumns((String) p.getKey().getValue()));
        }
        ObservableList<String> optionsSecond = FXCollections.observableArrayList(
                columnsSecond
        );

        ComboBox comboBoxSecond = new ComboBox(optionsSecond);
        comboBoxSecond.getSelectionModel().selectFirst();

        comboBoxTable.valueProperty().addListener((observable, oldValue, newValue) -> {
            ArrayList<String> columnsFirstFinal = postGreSQL.getColumns((String) comboBoxTable.getValue());
            ObservableList<String> optionsFirstFinal = FXCollections.observableArrayList(
                    columnsFirstFinal
            );
            comboBoxFirst.setItems(optionsFirstFinal);
            comboBoxFirst.getSelectionModel().selectFirst();
        });

        Pair<ComboBox, ComboBox> comboBoxComboBoxPair = new Pair<>(comboBoxFirst, comboBoxSecond);
        Pair<ComboBox,Pair<ComboBox, ComboBox>> pairPair = new Pair<>(comboBoxTable, comboBoxComboBoxPair);

        joins.add(pairPair);

        HBox hBox = new HBox();
        hBox.setSpacing(15);
        hBox.getChildren().addAll(comboBoxTable, comboBoxFirst, comboBoxSecond);

        wrapperScroll.getChildren().add(hBox);
    }
}
