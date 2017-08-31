package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Element.StringCompared;
import Utils.Utils;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Optional;

/**
 * Dialogue affichant toutes les données pour l'apparentement
 */
public class DisplayTitlesDialog extends Dialog {

    private static final double Dialog_HEIGHT = 700;
    private static final double Dialog_WIDTH = 1500;

    private VBox wrapperScroll;

    private ArrayList<StringCompared> stringCompareds;

    private PostGreSQL postGreSQL;

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

        postGreSQL = new PostGreSQL(d);
        stringCompareds = postGreSQL.getTitleByTableName(false);
        stringCompareds.sort(Comparator.comparing(StringCompared::getOriginalText)); // trie la liste selon l'ordre alphabétique (champ comparé)

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
                        try {
                            postGreSQL.addParent(s, stringCompared);
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
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
                float common = compared.removeCommonWords(s);
                compared.setCommonwords(common);
                float leven = Utils.leven(s, compared);
                compared.setLeven(leven);

                if(common !=0 && leven !=0)
                    compareds.add(compared);
            }
        }

        Collections.sort(compareds, (o1, o2) -> {
            int res = (int) (o2.getCommonwords() - o1.getCommonwords());
            if(res == 0)
                res = (int) (o1.getLeven() - o2.getLeven());
            return res;
        });
        return compareds;
    }

    public PostGreSQL getPostGreSQL() { return postGreSQL; }
}
