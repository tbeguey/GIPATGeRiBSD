package View;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;

import java.util.ArrayList;

/**
 * Boite de dialogue parametrage de l'import de fichier Excel
 */
public class ExcelFormatDialog extends Dialog<ArrayList<String>> {

    private static final int Dialog_HEIGHT = 200;
    private static final int Dialog_WIDTH = 500;

    public ExcelFormatDialog(ArrayList<String> sheets){
        setTitle("Format de votre fichier Excel");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefHeight(Dialog_HEIGHT);
        dialogPane.setPrefWidth(Dialog_WIDTH);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);
        dialogPane.setContent(wrapper);
        wrapper.setAlignment(Pos.CENTER);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        TextField title = new TextField();
        title.setPromptText("Titre");

        TextField headerRowNum = new TextField();
        headerRowNum.setPromptText("A quelle ligne se trouve les en-têtes ?");

        TextField minRowNum = new TextField();
        minRowNum.setPromptText("A quelle ligne se trouve la première valeur ?");
        minRowNum.setMinWidth(240);

        TextField maxRowNum = new TextField();
        maxRowNum.setPromptText("A quelle ligne se trouve la dernière valeur ?");
        maxRowNum.setMinWidth(240);


        HBox rowBox = new HBox();
        rowBox.setSpacing(10);
        rowBox.getChildren().addAll(minRowNum, maxRowNum);


        ObservableList<String> options = FXCollections.observableArrayList(
            sheets
                );


        ComboBox<String> sheetComboBox = new ComboBox<>();
        sheetComboBox.setItems(options);
        sheetComboBox.getSelectionModel().selectFirst();

        Label labelSheet = new Label("Feuille : ");
        labelSheet.setLabelFor(sheetComboBox);

        HBox sheetBox = new HBox();
        sheetBox.getChildren().addAll(labelSheet, sheetComboBox);


        wrapper.getChildren().addAll(title, headerRowNum, rowBox, sheetBox);

        setResultConverter((ButtonType dialogButton) -> {

            if(dialogButton == okButtonType) {
                ArrayList<String> arrayList = new ArrayList<>();

                arrayList.add(title.getText());
                arrayList.add(headerRowNum.getText());
                arrayList.add(minRowNum.getText());
                arrayList.add(maxRowNum.getText());
                arrayList.add(sheetComboBox.getValue());

                return arrayList;
            }
            else
                return null;

        });
    }
}
