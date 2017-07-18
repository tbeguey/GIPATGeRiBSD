package View;

import Element.StringCompared;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.Map;
import java.util.Optional;

public class NewSameDialog extends Dialog<Pair<String,String>> {

    private ObservableList<String> options;

    public NewSameDialog(){
        setTitle("Similitude à ajouter");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        ArrayList<String> arrayListOptions = new ArrayList<>();
        for (Map.Entry<String, ArrayList<String>> entry : StringCompared.getSame().entrySet()){
            arrayListOptions.add(entry.getKey());
        }

        options = FXCollections.observableArrayList(
                arrayListOptions
        );

       ComboBox comboBox = new ComboBox(options);
       comboBox.getSelectionModel().selectFirst();

       Button newSameKey = new Button("+");
       newSameKey.setOnMouseClicked(event -> {
           Optional<String> result = new NewSameKeyDialog().showAndWait();
           result.ifPresent(res -> {
               StringCompared.getSame().put(res, new ArrayList<>());
               arrayListOptions.add(res);
               options = FXCollections.observableArrayList(arrayListOptions);
               comboBox.setItems(options);
               comboBox.getSelectionModel().selectLast();
           });
       });

        HBox hBox = new HBox();
        hBox.setSpacing(10);
        hBox.getChildren().addAll(comboBox, newSameKey);

        TextField textField = new TextField();
        textField.setPromptText("Mot semblable");

        wrapper.setAlignment(Pos.CENTER);

        wrapper.getChildren().addAll(hBox, textField);
        dialogPane.setContent(wrapper);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);


        setResultConverter((ButtonType dialogButton) ->{

            if(dialogButton == okButtonType) {
                Pair<String, String> pair = new Pair<>(comboBox.getValue().toString(), textField.getText());
                return pair;
            }
            else
                return null;
        });
    }
}
