package NewConnectionDialogs;

import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;


public class TypeColumnDialog extends Dialog<String> {

    public TypeColumnDialog(ObservableList<String> options){
        setTitle("Quel type de nouvelle source de donnée ?");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(50);
        dialogPane.setContent(wrapper);

        wrapper.setAlignment(Pos.CENTER);

        ComboBox comboBox = new ComboBox(options);
        comboBox.getSelectionModel().selectFirst();

        wrapper.getChildren().add(comboBox);


        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        setResultConverter((ButtonType dialogButton) -> {

            if(dialogButton == okButtonType) {
                return comboBox.getValue().toString();
            }
            else
                return null;

        });
    }
}
