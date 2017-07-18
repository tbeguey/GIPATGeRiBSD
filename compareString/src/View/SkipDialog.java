package View;

import javafx.geometry.Pos;
import javafx.scene.control.ButtonBar;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Dialog;
import javafx.scene.control.DialogPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;


public class SkipDialog extends Dialog<Boolean> {

    public SkipDialog(){
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefHeight(100);
        dialogPane.setPrefWidth(300);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);
        dialogPane.setContent(wrapper);
        wrapper.setAlignment(Pos.CENTER);

        ButtonType okButtonType = new ButtonType("Oui", ButtonBar.ButtonData.OK_DONE);
        ButtonType noButtonType = new ButtonType("Non", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, noButtonType);

        Text text = new Text("Voulez vous enlever les titres déja validés ?");
        wrapper.getChildren().add(text);

        setResultConverter((ButtonType dialogButton) -> {
            if(dialogButton == okButtonType)
                return true;
            else if(dialogButton == noButtonType)
                return false;

            return null;

        });
    }
}
