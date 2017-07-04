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

    public ColumnsDialog(DatabaseConnection databaseConnection){
        setTitle("Choix des colonnes");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(50);
        dialogPane.setContent(wrapper);

        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> columns = postGreSQL.getColumns(databaseConnection.getTable());
        for (Pair<String, Pair<String, String>> p: databaseConnection.getJoins()) {
            columns.addAll(postGreSQL.getColumns(p.getKey()));
        }

        ObservableList<String> options = FXCollections.observableArrayList(
                columns
        );

        ArrayList<Pair<ComboBox, RadioButton>> comboBoxes = new ArrayList<>();
        String[] labels = {"Titre", "Identifiant", "Organisme", "Autre"};

        for (int i=0; i<labels.length;i++) {
            RadioButton radioButton = new RadioButton();

            ComboBox comboBox = new ComboBox(options);
            comboBox.getSelectionModel().select(i);

            Label label = new Label(labels[i] + " : ");
            label.setLabelFor(comboBox);

            HBox hbox = new HBox();
            hbox.setSpacing(10);
            hbox.getChildren().addAll(label, comboBox, radioButton);

            wrapper.getChildren().add(hbox);

            Pair<ComboBox, RadioButton> pair = new Pair<>(comboBox, radioButton);
            comboBoxes.add(pair);
        }


        wrapper.setAlignment(Pos.CENTER);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);


        setResultConverter((ButtonType dialogButton) -> {
            postGreSQL.deconnection();

            if(dialogButton == okButtonType) {
                ArrayList<String> arrayList = new ArrayList<>();

                for (Pair<ComboBox, RadioButton> p : comboBoxes) {
                    if(p.getValue().isSelected())
                        arrayList.add((String) p.getKey().getValue());
                }

                return arrayList;
            }
            else
                return null;

        });
    }
}
