package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Element.StringCompared;
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
        stringCompareds = postGreSQL.getTitleByTableName();
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
                        postGreSQL.addParent(s, stringCompared, databaseConnection.getTitle());
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
            if (!s.equals(compared)) {
                for (String string : s.getArrayList()) {
                    if (compared.getArrayList().contains(string))
                        compareds.add(compared);
                }
            }
        }

        return compareds;
    }

    public PostGreSQL getPostGreSQL() { return postGreSQL; }
}
