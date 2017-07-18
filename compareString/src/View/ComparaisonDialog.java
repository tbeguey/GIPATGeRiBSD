package View;

import Element.StringCompared;
import Graphics.ChartView;
import Utils.Utils;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.geometry.Side;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;
import javafx.util.Callback;
import javafx.util.Pair;
import java.util.ArrayList;


public class ComparaisonDialog extends Dialog<ArrayList<ArrayList<Pair<StringCompared, StringCompared>>>>{

    private VBox wrapperCompared;
    private ScrollPane scrollPane;

    private ArrayList<Pair<Pair<StringCompared, ComboBox<StringCompared>>, RadioButton>> pairArrayList = new ArrayList<>();

    private static final double Dialog_HEIGHT = 700;
    private static final double Dialog_WIDTH = 1500;

    private boolean finish, export, changed;

    private ArrayList<Pair<StringCompared, StringCompared>> arrayListChecked;
    private ArrayList<Pair<StringCompared, StringCompared>> arrayListNotChecked;

    private int sort_by_value;


    public ComparaisonDialog(int size){
        finish = false;
        export = false;
        changed = false;
        sort_by_value = 0;

        setTitle("Comparer et cocher ceux qui vous paraissent logique");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setMaxHeight(Dialog_HEIGHT);
        dialogPane.setMaxWidth(Dialog_WIDTH);

        wrapperCompared = new VBox();
        wrapperCompared.setSpacing(20);
        scrollPane = new ScrollPane(wrapperCompared);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        ButtonType exportButtonType = new ButtonType("Exporter", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, exportButtonType, ButtonType.CANCEL);


        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        HBox sort_options = new HBox();
        sort_options.setSpacing(10);
        ObservableList<String> options = FXCollections.observableArrayList("Score", "Score inverse", "Organisme");
        ComboBox<String> sort_by = new ComboBox<>(options);
        sort_by.getSelectionModel().selectFirst();
        sort_by.valueProperty().addListener((observable, oldValue, newValue) -> {
            clear();
            close();
            changed = true;
            finish = true;
            sort_by_value = sort_by.getSelectionModel().getSelectedIndex();
        });
        Label sort_by_label = new Label("Trier par :");
        sort_by_label.setLabelFor(sort_by);

        sort_options.getChildren().addAll(sort_by_label, sort_by);

        wrapper.getChildren().addAll(sort_options, scrollPane);
        dialogPane.setContent(wrapper);

        Text numbers = new Text(size + " résultat(s)");
        wrapper.getChildren().add(numbers);



        arrayListChecked = new ArrayList<>();
        arrayListNotChecked = new ArrayList<>();
        setResultConverter((ButtonType dialogButton) ->{
            ArrayList<ArrayList<Pair<StringCompared, StringCompared>>> arrayList = new ArrayList<>();

            if(dialogButton == okButtonType){
                sortIfCheckOrNot();
            }
            else if(dialogButton == exportButtonType){
                sortIfCheckOrNot();
                export = true;
                finish = true;
            }
            else{
                finish = true;
            }

            arrayList.add(arrayListChecked);
            arrayList.add(arrayListNotChecked);
            return arrayList;
        });
    }

    public void add(StringCompared first, ArrayList<StringCompared> second){
        HBox hbox = new HBox();
        hbox.setSpacing(10);

        ArrayList<Text> texts = new ArrayList<>();

        ObservableList<StringCompared> optionsSecond =
                FXCollections.observableArrayList(
                        second
                );

        ComboBox secondText = new ComboBox(optionsSecond);
        secondText.getSelectionModel().selectFirst();
        secondText.setCellFactory(new Callback<ListView<StringCompared>,ListCell<StringCompared>>(){

            @Override
            public ListCell<StringCompared> call(ListView<StringCompared> p) {
                final ListCell<StringCompared> cell = new ListCell<StringCompared>(){

                    @Override
                    protected void updateItem(StringCompared t, boolean bln) {
                        super.updateItem(t, bln);

                        if(t != null){
                            setText(t.getOriginalText());
                        }else{
                            setText(null);
                        }
                    }

                };
                return cell;
            }
        });
        secondText.setPrefWidth(Dialog_WIDTH/2.2);

        for (String wordFirst : first.getOriginalText().split(" ")) {
            Text t = new Text(wordFirst + " ");
            for (String wordSecond: ((StringCompared)secondText.getValue()).getArrayList()) {
                if(Utils.withOutAccents(wordFirst.toLowerCase()).equals(Utils.withOutAccents(wordSecond.toLowerCase()))){
                    t.setStyle("-fx-font-weight:bold;");
                    break;
                }
            }
            texts.add(t);
        }

        TextFlow firstText = new TextFlow();
        firstText.setPrefWidth(Dialog_WIDTH/3);
        firstText.setPrefHeight(10);

        for (Text t : texts) {
            firstText.getChildren().add(t);
        }


        RadioButton radioButton = new RadioButton();

        TextField scoreText = new TextField();
        scoreText.setPrefWidth(50);
        TextField secondScoreText = new TextField();
        secondScoreText.setPrefWidth(50);

        double value = first.getCommonwords();
        double secondValue = first.getLeven();
                /*if(value >= 4)
                    radioButton.setSelected(true);
                else if(value >= 3 && secondValue == 0)
                    radioButton.setSelected(true);*/
        scoreText.setText(String.valueOf(value));
        secondScoreText.setText(String.valueOf(secondValue));



        Pair<StringCompared, ComboBox<StringCompared>> stringPair = new Pair<>(first, secondText);
        Pair<Pair<StringCompared, ComboBox<StringCompared>>, RadioButton> pairRadioButtonPair = new Pair<>(stringPair, radioButton);
        pairArrayList.add(pairRadioButtonPair);

        hbox.getChildren().addAll(firstText, radioButton, secondText, scoreText, secondScoreText);

        wrapperCompared.getChildren().add(hbox);
    }

    /**
     * Nettoie la fenetre lorsqu'on change de page
     */
    public void clear(){
        scrollPane.setVvalue(0);
        wrapperCompared.getChildren().clear();
    }

    /**
     * Affiche les statistiques et le graphique
     * @param values
     */
    public void drawGraphics(int values[]){
        GridPane gridPane = new GridPane();
        gridPane.setAlignment(Pos.CENTER);
        gridPane.setPadding(new Insets(Dialog_WIDTH/70));

        gridPane.setPrefWidth(Dialog_WIDTH/1.1);

        ArrayList<String> objects = new ArrayList<>();
        ArrayList<Double> comparative = new ArrayList<>();

        objects.add("100 % de mots");
        objects.add("Entre 50% et 100% de mots, avec moins de 50% de Leven");
        objects.add("Entre 50% et 100% de mots, avec plus de 50% de Leven");
        objects.add("Entre 0 et 50% de mots, avec moins de 50% de Leven");
        objects.add("Entre 0% et 50% de mots, avec plus de 50% de Leven");


        for (int i = 0; i < values.length; i++) {
            comparative.add((double) values[i]);
        }

        ChartView chartView = new ChartView(objects, comparative);
        chartView.setLegendSide(Side.BOTTOM);

        gridPane.add(chartView.getTable(), 0, 0);
        gridPane.add(chartView.getChart(), 1,0);

        wrapperCompared.getChildren().add(gridPane);
    }

    public void sortIfCheckOrNot(){
        for (Pair<Pair<StringCompared, ComboBox<StringCompared>>, RadioButton> pair : pairArrayList) {
            Pair<StringCompared, StringCompared> stringPair = new Pair<>(pair.getKey().getKey(), pair.getKey().getValue().getValue());
            if(pair.getValue().isSelected())
                arrayListChecked.add(stringPair);
            else
                arrayListNotChecked.add(stringPair);
        }
    }


    public boolean getFinish() { return finish; }
    public boolean getExportBD() { return export; }
    public boolean getChanged() { return changed; }

    public void setChanged(boolean c) { changed = c; }
    public void setFinish(boolean f) { finish = f; }

    public int getSort_by_value() { return sort_by_value; }
}
