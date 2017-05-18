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

    private String algorithm;

    private boolean finish, export;

    private ArrayList<Pair<StringCompared, StringCompared>> arrayListChecked;
    private ArrayList<Pair<StringCompared, StringCompared>> arrayListNotChecked;


    public ComparaisonDialog(String a, int s){
        algorithm = a;
        finish = false;
        export = false;

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
        wrapper.setSpacing(3);
        wrapper.getChildren().add(scrollPane);
        dialogPane.setContent(wrapper);

        Text numbers = new Text(s + " résultat(s)");
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
        RadioButton radioButton = new RadioButton();
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


        Pair<StringCompared, ComboBox<StringCompared>> stringPair = new Pair<>(first, secondText);
        Pair<Pair<StringCompared, ComboBox<StringCompared>>, RadioButton> pairRadioButtonPair = new Pair<>(stringPair, radioButton);
        pairArrayList.add(pairRadioButtonPair);
    }

    /**
     * Ajoute une ligne à la fenetre de comparaison, avec les titres, les résultats correspondant et les scores
     * @param first
     * @param second
     * @param third
     */
    public void add(StringCompared first, ArrayList<StringCompared> second, ArrayList<StringCompared> third){
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
        secondText.setPrefWidth(Dialog_WIDTH/3);

        for (String wordFirst : first.getOriginalText().split(" ")) {
                Text t = new Text(wordFirst + " ");
                for (String wordSecond: ((StringCompared)secondText.getValue()).getArrayList()) {
                    if(wordFirst.toLowerCase().equals(wordSecond.toLowerCase())){
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

        ComboBox thirdText = null;
        TextField thirdScoreText = null;
        if(third != null){
            ObservableList<StringCompared> optionsThird =
                    FXCollections.observableArrayList(
                            third
                    );

            thirdText = new ComboBox(optionsThird);
            thirdText.getSelectionModel().selectFirst();
            thirdText.setCellFactory(new Callback<ListView<StringCompared>,ListCell<StringCompared>>(){

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
            thirdText.setPrefWidth(Dialog_WIDTH/3);

            double thirdValue = first.getJaro();
            thirdScoreText = new TextField(String.valueOf(thirdValue));
            thirdScoreText.setPrefWidth(50);
        }


        RadioButton radioButton = new RadioButton();

        TextField scoreText = new TextField();
        scoreText.setPrefWidth(50);
        TextField secondScoreText = new TextField();
        secondScoreText.setPrefWidth(50);

        double value;
        double secondValue = 0;
        switch (algorithm){
            case "Mots commun + Levenshtein":
                value = first.getCommonwords();
                secondValue = first.getLeven();
                if(value >= 4)
                    radioButton.setSelected(true);
                else if(value >= 3 && secondValue <= 3)
                    radioButton.setSelected(true);
                break;
            case "Mots commun + Jaro":
                value = first.getCommonwords();
                secondValue = first.getJaro();
                if(value >= 4)
                    radioButton.setSelected(true);
                else if (value >= 3 && secondValue >= 0.75)
                    radioButton.setSelected(true);
                break;
            case "Mots commun":
                value = first.getCommonwords();
                if(value >= 4)
                    radioButton.setSelected(true);
                break;
            case "Levenshtein":
                value = first.getLeven();
                if(value <= 3)
                    radioButton.setSelected(true);
                break;
            case "Jaro":
                value = first.getJaro();
                if(value >= 0.75)
                    radioButton.setSelected(true);
                break;
            default:
                value = first.getCommonwords();
                secondValue = first.getLeven();
                if(value >= 4)
                    radioButton.setSelected(true);
                else if(value >= 3 && secondValue <= 3)
                    radioButton.setSelected(true);
                break;
        }
        scoreText.setText(String.valueOf(value));
        secondScoreText.setText(String.valueOf(secondValue));

        Pair<StringCompared, ComboBox<StringCompared>> stringPair = new Pair<>(first, secondText);
        Pair<Pair<StringCompared, ComboBox<StringCompared>>, RadioButton> pairRadioButtonPair = new Pair<>(stringPair, radioButton);
        pairArrayList.add(pairRadioButtonPair);

        hbox.getChildren().addAll(firstText, radioButton, secondText, scoreText, secondScoreText);

        if(third != null){
            hbox.getChildren().addAll(thirdText, thirdScoreText);
        }

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

        String[] objects;
        ArrayList<Double> comparative = new ArrayList<>();

        switch (algorithm) {
            case "Mots commun + Levenshtein":
                objects = new String[]{"Plus de 4 mots communs", "Entre 1 et 4 mots communs, avec un Levenshtein de 0",
                        "Entre 1 et 4 mots communs, avec un Levenshtein inférieur à 5", "Entre 1 et 4 mots communs, avec un Levenshtein supérieur à 5",
                        "Un seul mot commun", "Aucun mot communn, avec un Levenshtein inférieur à 5", "Aucun mot communn, avec un Levenshtein supérieur à 5"};
                break;
            case "Mots commun + Jaro":
                objects = new String[]{"4 mots ou plus en communs, avec un Jaro de 1", "4 mots ou plus en communs, avec un Jaro supérieur ou égale à 0.5",
                        "4 mots ou plus en communs, avec un Jaro inférieur à 0.5", "Moins de 4 mots en communs, avec un Jaro supérieur ou égale à 0.5",
                        "Moins de 4 mots en communs, avec un Jaro inférieur à 0.5", "Aucun mots en communs, avec un Jaro supérieur ou égale à 0.5",
                        "Aucun mots en communs, avec un Jaro inférieur à 0.5"};
                break;
            case "Mots commun":
                objects = new String[]{"Plus de 7 mots en communs", "Entre 4 et 8 mots en communs",
                        "4 mots en communs", "3 mots en communs", "2 mots en communs",
                        "1 mot en commun", "Aucun mot en commun"};
                break;
            case "Levenshtein":
                objects = new String[]{"Levenshtein supérieur à 6", "Levenshtein entre 4 et 6",
                        "Levenshtein égake à 4", "Levenshtein égale à 3", "Levenshtein égale à 2",
                        "Levenshtein égale à 1", "Levenshtein égale à 0"};
                break;
            case "Jaro":
                objects = new String[]{"Jaro égale à 1", "Jaro entre 0.9 et 1", "Jaro entre 0.75 et 0.9",
                        "Jaro entre 0.5 et 0.75", "Jaro entre 0.3 et 0.5", "Jaro entre 0.1 et 0.3",
                        "Jaro égale à 0"};
                break;
            default:
                objects = new String[]{"Plus de 4 mots communs", "Entre 1 et 4 mots communs, avec un Levenshtein de 0",
                        "Entre 1 et 4 mots communs, avec un Levenshtein inférieur à 5", "Entre 1 et 4 mots communs, avec un Levenshtein supérieur à 5",
                        "Un seul mot commun", "Aucun mot communn, avec un Levenshtein inférieur à 5", "Aucun mot communn, avec un Levenshtein supérieur à 5"};
                break;
        }

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
    public boolean getExport() { return  export; }
}
