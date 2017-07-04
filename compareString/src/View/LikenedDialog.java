package View;

import Element.StringCompared;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.util.Pair;

import java.util.ArrayList;

public class LikenedDialog extends Dialog<ArrayList<StringCompared>>{

    private static final double Dialog_HEIGHT = 350;
    private static final double Dialog_WIDTH = 750;

    private VBox wrapperScroll;

    private ArrayList<StringCompared> compareds;

    private ArrayList<Pair<StringCompared, RadioButton>> pairArrayList = new ArrayList<>();

    public LikenedDialog(StringCompared stringCompared, ArrayList<StringCompared> c){
        compareds = c;

        setTitle(stringCompared.getOriginalText());
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefHeight(Dialog_HEIGHT);
        dialogPane.setPrefWidth(Dialog_WIDTH);
        VBox wrapper = new VBox();
        wrapper.setSpacing(10);
        dialogPane.setContent(wrapper);

        wrapperScroll = new VBox();
        wrapperScroll.setSpacing(10);
        ScrollPane scrollPane = new ScrollPane(wrapperScroll);
        scrollPane.setHbarPolicy(ScrollPane.ScrollBarPolicy.NEVER);

        dialogPane.getButtonTypes().addAll(ButtonType.OK, ButtonType.CANCEL);
        wrapper.getChildren().add(scrollPane);

        setResultConverter((ButtonType dialogButton) ->{
            ArrayList<StringCompared> arrayList = new ArrayList<>();

            if(dialogButton == ButtonType.OK){
                for (Pair<StringCompared, RadioButton> p : pairArrayList) {
                    if(p.getValue().isSelected())
                        arrayList.add(p.getKey());
                }
            }

            return arrayList;
        });
    }

    public void displayLines(){
        for (StringCompared compared : compareds) {
            TextField textField = new TextField(compared.getOriginalText());
            textField.setPrefWidth(Dialog_WIDTH-100);
            RadioButton radioButton = new RadioButton();

            Pair<StringCompared, RadioButton> pair = new Pair<>(compared, radioButton);
            pairArrayList.add(pair);

            HBox hBox = new HBox();
            hBox.setSpacing(10);
            hBox.getChildren().addAll(textField, radioButton);

            wrapperScroll.getChildren().add(hBox);
        }
    }
}
