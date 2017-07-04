package NewConnectionDialogs;


import Element.DatabaseConnection;
import Element.PostGreSQL;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;

import java.util.ArrayList;


public class DatabaseDialog extends Dialog<String>{

    public DatabaseDialog(DatabaseConnection databaseConnection){
        setTitle("Nom de la base de donnée");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<String> databases = postGreSQL.getDatabases();

        ObservableList<String> options = FXCollections.observableArrayList(
                databases
        );

        ComboBox comboBox = new ComboBox(options);
        comboBox.getSelectionModel().selectFirst();
        wrapper.setAlignment(Pos.CENTER);

        wrapper.getChildren().add(comboBox);
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
