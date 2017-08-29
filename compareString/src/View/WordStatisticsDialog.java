package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Element.StringCompared;
import Graphics.ChartView;
import javafx.geometry.Side;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Dialog;
import javafx.scene.control.DialogPane;
import javafx.scene.layout.HBox;

import java.util.ArrayList;
import java.util.Collections;

/**
 * Dialogue sur les occurences de mots
 */
public class WordStatisticsDialog extends Dialog{

    public WordStatisticsDialog(DatabaseConnection databaseConnection){
        setTitle("Statistiques sur l'occurence des mots");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(475);

        HBox wrapper = new HBox();
        wrapper.setSpacing(10);

        ArrayList<String> objects = new ArrayList<>();
        ArrayList<Double> comparative = new ArrayList<>();

        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<StringCompared> titles = postGreSQL.getTitleByTableName(false);

        for (StringCompared compared : titles) {
            for (String word : compared.getArrayList()) {
                if(!objects.contains(word)){
                    objects.add(word);
                    comparative.add((double) 1);
                }
                else{
                    int index = objects.indexOf(word);
                    double value = comparative.get(index);
                    value++;
                    comparative.set(index, value);
                }
            }
        }

        postGreSQL.deconnection();

        ChartView chartView = new ChartView(objects, comparative);
        chartView.setLegendSide(Side.BOTTOM);

        wrapper.getChildren().addAll(chartView.getTable());

        dialogPane.setContent(wrapper);
        dialogPane.getButtonTypes().add(ButtonType.CLOSE);
    }
}
