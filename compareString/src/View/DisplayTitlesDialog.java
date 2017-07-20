package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Element.StringCompared;
import Utils.Utils;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Optional;

public class DisplayTitlesDialog extends Dialog {

    private static final double Dialog_HEIGHT = 700;
    private static final double Dialog_WIDTH = 1500;

    private VBox wrapperScroll;

    private ArrayList<StringCompared> stringCompareds;

    private PostGreSQL postGreSQL;

    private DatabaseConnection databaseConnection;

    public DisplayTitlesDialog(DatabaseConnection d) {
        setTitle(d.getTitle());
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

        ButtonType cancelButton = new ButtonType("Quitter", ButtonBar.ButtonData.CANCEL_CLOSE);

        dialogPane.getButtonTypes().add(cancelButton);
        wrapper.getChildren().add(scrollPane);

        databaseConnection = d;
        postGreSQL = new PostGreSQL(databaseConnection);
        stringCompareds = postGreSQL.getTitleByTableName(false);
        Collections.sort(stringCompareds, Comparator.comparing(StringCompared::getOriginalText));

    }

    public void displayLines() {
        for (StringCompared s : stringCompareds) {
            HBox hBox = new HBox();
            hBox.setSpacing(10);
            TextField textField = new TextField(s.getOriginalText());
            textField.setMinWidth(Dialog_WIDTH - 100);
            Button button = new Button("+");
            button.setOnMouseClicked(event -> {
                ArrayList<StringCompared> compareds = getPotentialChildren(s);

                LikenedDialog likenedDialog = new LikenedDialog(s, compareds);
                likenedDialog.displayLines();
                Optional<ArrayList<StringCompared>> result = likenedDialog.showAndWait();
                result.ifPresent(stringCompareds -> {
                    for (StringCompared stringCompared : stringCompareds) {
                        postGreSQL.addParent(s, stringCompared);
                    }
                });
            });


            hBox.getChildren().addAll(textField, button);
            wrapperScroll.getChildren().add(hBox);
        }
    }

    public ArrayList<StringCompared> getPotentialChildren(StringCompared s) {
        ArrayList<StringCompared> compareds = new ArrayList<>();

        for (StringCompared compared : stringCompareds) {
            if(!compared.equals(s)){
                int common = compared.removeCommonWords(s);
                compared.setCommonwords(common);
                double leven = Utils.leven(s.getTextWithoutCommon(), compared.getTextWithoutCommon());
                compared.setLeven(leven);

                if(common !=0 && leven !=0)
                    compareds.add(compared);
            }
        }

        Collections.sort(compareds, new Comparator<StringCompared>() {
            @Override
            public int compare(StringCompared o1, StringCompared o2) {
                int res = (int) (o2.getCommonwords() - o1.getCommonwords());
                if(res == 0)
                    res = (int) (o1.getLeven() - o2.getLeven());
                return res;
            }
        });
        return compareds;
    }

    public PostGreSQL getPostGreSQL() { return postGreSQL; }
}
