package View;

import Element.StringCompared;
import Graphics.ChartView;
import Utils.*;
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
import java.util.Optional;


/**
 * Boite de dialogue permettant d'afficher tous les matchages et le graphique
 */
public class ComparaisonDialog extends Dialog<ArrayList<ArrayList<Pair<StringCompared, StringCompared>>>>{

    private DialogPane dialogPane;
    private VBox wrapperCompared;
    private ScrollPane scrollPane;
    private ButtonType nextButtonType, previousButtonType;


    private ArrayList<Pair<Pair<StringCompared, ComboBox<StringCompared>>, Pair<RadioButton, RadioButton>>> pairArrayList = new ArrayList<>();

    private static final double Dialog_HEIGHT = 700;
    private static final double Dialog_WIDTH = 1500;

    private boolean changed;

    private State state;

    private ArrayList<Pair<StringCompared, StringCompared>> arrayListChecked;
    private ArrayList<Pair<StringCompared, StringCompared>> arrayListNotChecked;
    private ArrayList<Pair<StringCompared, StringCompared>> arrayListLikened;

    private int sort_by_value;

    private ArrayList<Pair<Boolean, ArrayList<String>>> exportChoises;

    private Text page;


    public ComparaisonDialog(int size){
        changed = false;
        sort_by_value = 0;

        setTitle("Comparer et cocher ceux qui vous paraissent logique");
        dialogPane = getDialogPane();
        dialogPane.setMaxHeight(Dialog_HEIGHT);
        dialogPane.setMaxWidth(Dialog_WIDTH);

        wrapperCompared = new VBox();
        wrapperCompared.setSpacing(20);
        scrollPane = new ScrollPane(wrapperCompared);

        previousButtonType = new ButtonType("Précédent", ButtonBar.ButtonData.OK_DONE);
        nextButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        ButtonType exportButtonType = new ButtonType("Exporter", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll( previousButtonType, nextButtonType, exportButtonType, ButtonType.CANCEL);


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
            sort_by_value = sort_by.getSelectionModel().getSelectedIndex();
        });
        Label sort_by_label = new Label("Trier par :");
        sort_by_label.setLabelFor(sort_by);

        sort_options.getChildren().addAll(sort_by_label, sort_by);


        Text likened = new Text("Apparenter");
        Text titleCompared = new Text("Titres comparés");
        Text apparel = new Text("Appareiller");
        Text titleRes = new Text("Liste des potentiels résultats");
        Text percentageMC = new Text("% de mots communs");
        Text percentageLeven = new Text("% de Levenshtein");


        HBox titlesBox = new HBox();
        HBox.setMargin(titleCompared, new Insets(0,0,0,20));
        HBox.setMargin(apparel, new Insets(0,0,0,350));
        HBox.setMargin(titleRes, new Insets(0,0,0,50));
        HBox.setMargin(percentageMC, new Insets(0,0,0,360));
        HBox.setMargin(percentageLeven, new Insets(0,0,0,20));

        titlesBox.getChildren().addAll(likened, titleCompared, apparel, titleRes, percentageMC, percentageLeven);


        wrapper.getChildren().addAll(sort_options, titlesBox, scrollPane);
        dialogPane.setContent(wrapper);

        Text numbers = new Text(size + " résultat(s)");

        page = new Text("Page : 1");

        HBox numbersBox = new HBox();
        numbersBox.setSpacing(300);
        numbersBox.getChildren().addAll(numbers, page);
        wrapper.getChildren().add(numbersBox);



        arrayListChecked = new ArrayList<>();
        arrayListNotChecked = new ArrayList<>();
        arrayListLikened = new ArrayList<>();
        setResultConverter((ButtonType dialogButton) ->{
            ArrayList<ArrayList<Pair<StringCompared, StringCompared>>> arrayList = new ArrayList<>();

            if(dialogButton == nextButtonType){
                state = State.NEXT;
            }
            else if(dialogButton == previousButtonType){
                state = State.PREVIOUS;
            }
            else if(dialogButton == exportButtonType){
                Optional<ArrayList<Pair<Boolean, ArrayList<String>>>> result = new ExportDialog().showAndWait(); // affichage boite dialogue export
                result.ifPresent(res -> {
                    exportChoises = res; // on stocke les choix d'exports

                    state = State.EXPORT;

                    arrayList.add(arrayListChecked); // cochés matchage
                    arrayList.add(arrayListNotChecked); // non cochés matchages
                    arrayList.add(arrayListLikened); // coché apparentement
                });
            }
            else{
                state = State.CANCEL;
            }

            return arrayList;
        });
    }

    /**
     * Ajoute une ligne de matchage dans la boite de dialogue
     * @param first
     * @param second
     */
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
        secondText.setPrefWidth(Dialog_WIDTH/2.5);

        for (String wordFirst : first.getOriginalText().split(" ")) { // gère la mise en gras des mots communs
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

        HBox scoreBox = new HBox();
        scoreBox.setSpacing(50);

        TextField scoreText = new TextField();
        scoreText.setPrefWidth(50);
        TextField secondScoreText = new TextField();
        secondScoreText.setPrefWidth(50);

        scoreBox.getChildren().addAll(scoreText, secondScoreText);

        double value = first.getCommonwords();
        double secondValue = first.getLeven();


        scoreText.setText(String.valueOf(value));
        secondScoreText.setText(String.valueOf(secondValue));

        RadioButton likenedRadioButton = new RadioButton();

        Pair<StringCompared, ComboBox<StringCompared>> stringPair = new Pair<>(first, secondText);
        Pair<RadioButton, RadioButton> radioButtonPair = new Pair<>(likenedRadioButton, radioButton);
        Pair<Pair<StringCompared, ComboBox<StringCompared>>, Pair<RadioButton, RadioButton>> pairRadioButtonPair = new Pair<>(stringPair, radioButtonPair);

        // Gestion des sauvegardes des lignes cochés
        boolean exists = false;
        boolean firstCheck = false;
        boolean secondCheck = false;
        for (Pair<Pair<StringCompared, ComboBox<StringCompared>>, Pair<RadioButton, RadioButton>> p : pairArrayList) {
            if(p.getKey().getKey().equals(first)){
                exists = true;
                firstCheck = p.getValue().getKey().isSelected();
                secondCheck = p.getValue().getValue().isSelected();
            }
        }

        if(!exists){
            if(value == 1)
                radioButton.setSelected(true);

            pairArrayList.add(pairRadioButtonPair);
        }
        else{
            if(firstCheck)
                likenedRadioButton.setSelected(true);
            if(secondCheck)
                radioButton.setSelected(true);
        }


        hbox.getChildren().addAll(likenedRadioButton, firstText, radioButton, secondText, scoreBox);

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

        objects.add("Très favorable");
        objects.add("Favorable");
        objects.add("Passable");
        objects.add("Défavorable");
        objects.add("Très défavorable");
        objects.add("Ne possédant pas de matchages de mots forts");


        for (int i = 0; i < values.length; i++) {
            comparative.add((double) values[i]);
        }

        ChartView chartView = new ChartView(objects, comparative);
        chartView.setLegendSide(Side.BOTTOM);

        gridPane.add(chartView.getTable(), 0, 0);
        gridPane.add(chartView.getChart(), 1,0);

        wrapperCompared.getChildren().add(gridPane);
    }

    /**
     * Trie les enregistrements si ils sont cochés ou non
     */
    public void sortIfCheckOrNot(){
        for (Pair<Pair<StringCompared, ComboBox<StringCompared>>, Pair<RadioButton, RadioButton>> pair : pairArrayList) {
            Pair<StringCompared, StringCompared> stringPair = new Pair<>(pair.getKey().getKey(), pair.getKey().getValue().getValue());
            if(pair.getValue().getValue().isSelected())
                arrayListChecked.add(stringPair);
            else
                arrayListNotChecked.add(stringPair);

            if(pair.getValue().getKey().isSelected())
                arrayListLikened.add(stringPair);
        }
    }

    public DialogPane getTheDialogPane() { return dialogPane; }

    public ButtonType getNextButtonType() {return nextButtonType; }
    public ButtonType getPreviousButtonType() { return previousButtonType; }

    public State getState() { return state; }

    public void setState(State s) { state = s;}

    public boolean getChanged() { return changed; }

    public void setChanged(boolean c) { changed = c; }

    public int getSort_by_value() { return sort_by_value; }

    public ArrayList<Pair<Boolean, ArrayList<String>>> getExportChoises() { return exportChoises; }

    public void setNum_page(int n) { page.setText("Page : " + n); }
}
