package View;

import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;


public class NewSameKeyDialog extends Dialog<String>{

    public NewSameKeyDialog(){
        setTitle("Clé de similitude à ajouter");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        TextField textField = new TextField();
        textField.setPromptText("Clé de similitude à ajouter");

        wrapper.setAlignment(Pos.CENTER);

        wrapper.getChildren().add(textField);
        dialogPane.setContent(wrapper);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);


        setResultConverter((ButtonType dialogButton) ->{

            if(dialogButton == okButtonType) {
                return textField.getText();
            }
            else
                return null;
        });
    }
}
