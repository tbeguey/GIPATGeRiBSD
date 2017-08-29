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
 * Ecran listant les schémas contenu dans la base de donnée spécifiée précédemment.
 */
public class SchemaDialog extends Dialog<String>{

    public SchemaDialog(DatabaseConnection databaseConnection){
        setTitle("Nom du schéma");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        Text text = new Text("Selectionnez ci-dessous le schéma auquel vous voulez vous connectez.");


        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> schemas = postGreSQL.getSchemas();

        ObservableList<String> options = FXCollections.observableArrayList(
                schemas
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
