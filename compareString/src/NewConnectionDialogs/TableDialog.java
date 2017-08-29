package NewConnectionDialogs;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;

import java.util.ArrayList;

/**
 * Ecran listant les tables du schéma
 */
public class TableDialog extends Dialog<String>{

    public TableDialog(DatabaseConnection databaseConnection){
        setTitle("Nom de la table");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        Text text = new Text("Selectionnez ci-dessous la table à laquelle vous voulez vous connectez.");


        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> tables = postGreSQL.getTables();

        ObservableList<String> options = FXCollections.observableArrayList(
                tables
        );

        ComboBox comboBox = new ComboBox(options);
        comboBox.getSelectionModel().selectFirst();
        wrapper.setAlignment(Pos.CENTER);

        wrapper.getChildren().addAll(text, comboBox);
        dialogPane.setContent(wrapper);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);


        setResultConverter((ButtonType dialogButton) ->{
            postGreSQL.deconnection();

            if(dialogButton == okButtonType) {
                return (String) comboBox.getValue();
            }
            else
                return null;
            });
    }
}
