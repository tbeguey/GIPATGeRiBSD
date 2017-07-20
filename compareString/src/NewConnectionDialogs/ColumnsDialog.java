package NewConnectionDialogs;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.util.Pair;

import java.util.ArrayList;

public class ColumnsDialog extends Dialog<ArrayList<String>> {

    private ArrayList<ComboBox> comboBoxes;

    public ColumnsDialog(DatabaseConnection databaseConnection){
        setTitle("Choix des colonnes - " + databaseConnection.getTitle());
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(50);
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

        String[] labels = {"Identifiant", "Mot fort", "Titre"};
        comboBoxes = new ArrayList<>();

        for (int i=0; i<labels.length;i++) {

            ComboBox comboBox = new ComboBox(options);
            comboBox.getSelectionModel().selectFirst();

            Label label = new Label(labels[i] + " : ");
            label.setLabelFor(comboBox);

            HBox hbox = new HBox();
            hbox.setSpacing(10);
            hbox.getChildren().addAll(label, comboBox);

            wrapper.getChildren().add(hbox);

            comboBoxes.add(comboBox);
        }

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        setResultConverter((ButtonType dialogButton) -> {

            if(dialogButton == okButtonType) {
                ArrayList<String> arrayList = new ArrayList<>();

                for (ComboBox c : comboBoxes) {
                    arrayList.add(c.getValue().toString());
                }

                return arrayList;
            }
            else
                return null;

        });

        wrapper.setAlignment(Pos.CENTER);

    }

}
