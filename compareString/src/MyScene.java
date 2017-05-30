import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.concurrent.Task;
import javafx.geometry.Insets;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.util.Callback;
import javafx.util.Pair;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.*;


public class MyScene extends Scene {

    /**
     * Les taches lancés asynchroniquement pour charger les données longues et laissé l'application tourné
     */
    private Task longTask;

    /**
     * Les trois listes déroulantes du menu
     */
    private final ComboBox comboBoxSource;
    private final ComboBox comboBoxDestination;
    private final ComboBox comboBoxAlgo;
    private ComboBox searchResult;

    /**
     * Liste des phrases à écrire dans le fichier .csv
     */
    private ArrayList<ArrayList<String>> arrayListCheckedToExport = new ArrayList<>();
    private ArrayList<ArrayList<String>> arrayListNotCheckedToExport = new ArrayList<>();

    /**
     * Valeurs afin de faire des statistiques
     */
    private int values[];


    public MyScene(){
        super(new Group(), Main.WIDTH, Main.HEIGHT);

        Group group = (Group) getRoot();
        setFill(Color.rgb(224,212,187));

        VBox wrapper = new VBox();
        wrapper.setSpacing(100);
        wrapper.setPadding(new Insets(Main.WIDTH / 20,0,0,Main.WIDTH / 20));

        VBox wrapperCompared = new VBox();
        wrapperCompared.setSpacing(10);

        VBox wrapperSearch = new VBox();
        wrapperSearch.setSpacing(10);

        VBox wrapperUuid = new VBox();
        wrapperUuid.setSpacing(10);


        ObservableList<String> optionsDatabase =
                FXCollections.observableArrayList(
                        "GeoNetwork",
                        "GeoServer",
                        "Cartogip",
                        "BSD"
                );
        comboBoxSource = new ComboBox(optionsDatabase);
        comboBoxSource.getSelectionModel().selectFirst();

        comboBoxDestination = new ComboBox(optionsDatabase);
        comboBoxDestination.getSelectionModel().selectFirst();
        comboBoxDestination.getSelectionModel().selectNext();

        ObservableList<String> optionsAlgo =
                FXCollections.observableArrayList(
                        "Mots commun + Levenshtein",
                        "Mots commun + Jaro",
                        "Mots commun",
                        "Levenshtein",
                        "Jaro",
                        "Mots commun + Levenshtein + Jaro"
                );
        comboBoxAlgo = new ComboBox(optionsAlgo);
        comboBoxAlgo.getSelectionModel().selectFirst();


        Button okButton = new Button("Comparer");
        okButton.setOnMouseClicked(event -> {
                start();
        });

        HBox searchBox = new HBox();
        searchBox.setSpacing(20);

        TextField searchField = new TextField();
        searchField.setPromptText("Votre texte");

        ComboBox comboBoxSearch = new ComboBox(optionsDatabase);
        comboBoxSearch.getSelectionModel().selectFirst();

        Button searchButton = new Button("Comparer");

        searchBox.getChildren().addAll(searchField, comboBoxSearch, searchButton);

        searchResult = new ComboBox<StringCompared>();
        searchResult.setPrefWidth(Main.WIDTH - 50);

        TextArea idSearch = new TextArea();
        idSearch.setPromptText("Id du résultat");
        idSearch.setMaxWidth(Main.WIDTH - 50);
        idSearch.setMaxHeight(5);
        idSearch.setEditable(false);

        searchButton.setOnMouseClicked(event -> {

            StringCompared stringCompared = new StringCompared(searchField.getText(), null);

            PostGreSQL postGreSQL = new PostGreSQL();

            switch (comboBoxSource.getValue().toString()){
                case "GeoNetwork":
                    postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=geonetwork");
                    break;
                case "GeoServer":
                    postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=geoserver");
                    break;
                case "Cartogip":
                    postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=cartogip");
                    break;
                case "BSD":
                    postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=bsd");
                    break;
                default:
                    postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=geonetwork");
                    break;
            }
            ArrayList<StringCompared> compareds = postGreSQL.getTitleByTableName(comboBoxSource.getValue().toString());

            ArrayList<StringCompared> results = stringCompared.levenshteinDistanceCW(compareds);

            ObservableList<StringCompared> optionsResult =
                    FXCollections.observableArrayList(
                            results
                    );


            searchResult.setItems(optionsResult);
            searchResult.getSelectionModel().selectFirst();
            idSearch.setText(((StringCompared) searchResult.getValue()).getUuid());
            searchResult.setCellFactory(new Callback<ListView<StringCompared>,ListCell<StringCompared>>(){

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
            searchResult.valueProperty().addListener((observable, oldValue, newValue) -> idSearch.setText(((StringCompared) newValue).getUuid()));

            Collections.sort(optionsResult, (o1, o2) -> {
                double res = Double.compare(o2.getCommonwords(), o1.getCommonwords());
                if(res == 0){
                    res = Double.compare(o1.getLeven(), o2.getLeven());
                }
                return (int) res;
            });

            postGreSQL.deconnection();
        });

        HBox uuidBox = new HBox();
        uuidBox.setSpacing(10);

        TextField uuidField = new TextField();
        uuidField.setPromptText("Saissisez l'id que vous cherchez");
        uuidField.setPrefWidth(Main.WIDTH - 110);

        TextArea uuidResult = new TextArea();
        uuidResult.setMaxWidth(Main.WIDTH - 50);
        uuidResult.setPrefHeight(30);
        uuidResult.setEditable(false);

        Button uuidButton = new Button("Chercher");
        uuidButton.setOnMouseClicked(event -> {
            String text = "";
            PostGreSQL postGreSQL = new PostGreSQL();
            postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=geonetwork");
            ArrayList<StringCompared> compareds = postGreSQL.getTitleByTableName("GeoNetwork");
            for (StringCompared compared : compareds) {
                if(uuidField.getText().equals(compared.getUuid())){
                    text = compared.getOriginalText();
                    break;
                }
            }
            postGreSQL.deconnection();
            if(text.isEmpty()){
                postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=geoserver");
                compareds = postGreSQL.getTitleByTableName("GeoServer");
                for (StringCompared compared : compareds) {
                    if(uuidField.getText().equals(compared.getUuid())){
                        text = compared.getOriginalText();
                        break;
                    }
                }
                postGreSQL.deconnection();
            }
            if(text.isEmpty()){
                postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=bsd");
                compareds = postGreSQL.getTitleByTableName("BSD");
                for (StringCompared compared : compareds) {
                    if(uuidField.getText().equals(compared.getUuid())){
                        text = compared.getOriginalText();
                        break;
                    }
                }
                postGreSQL.deconnection();
            }
            if(text.isEmpty()){
                postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=cartogip");
                compareds = postGreSQL.getTitleByTableName("Cartogip");
                for (StringCompared compared : compareds) {
                    if(uuidField.getText().equals(compared.getUuid())){
                        text = compared.getOriginalText();
                        break;
                    }
                }
                postGreSQL.deconnection();
            }

            uuidResult.setText(text);
        });

        uuidBox.getChildren().addAll(uuidField, uuidButton);



        wrapperCompared.getChildren().addAll(comboBoxSource, comboBoxDestination, comboBoxAlgo, okButton);
        wrapperSearch.getChildren().addAll(searchBox, searchResult, idSearch);
        wrapperUuid.getChildren().addAll(uuidBox, uuidResult);

        wrapper.getChildren().addAll(wrapperCompared, wrapperSearch, wrapperUuid);
        group.getChildren().add(wrapper);
    }

    private void start(){
        ArrayList<Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>>> strings = getStringComparedsAndStartComparaison();
        longTask.setOnSucceeded(event1 -> {
            Collections.sort(strings, new Comparator<Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>>>() {
                @Override
                public int compare(Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>> o1, Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>> o2) {
                    double res;
                    switch (comboBoxAlgo.getValue().toString()){
                        case "Mots commun + Levenshtein":
                            res = Double.compare(o2.getKey().getCommonwords(), o1.getKey().getCommonwords());
                            if(res == 0){
                                res = Double.compare(o1.getKey().getLeven(), o2.getKey().getLeven());
                            }
                            break;
                        case "Mots commun + Jaro":
                            res = Double.compare(o2.getKey().getCommonwords(), o1.getKey().getCommonwords());
                            if(res == 0){
                                res = Double.compare(o2.getKey().getJaro(), o1.getKey().getJaro());
                            }
                            break;
                        case "Mots commun":
                            res =  Double.compare(o2.getKey().getCommonwords(), o1.getKey().getCommonwords());
                            break;
                        case "Levenshtein":
                            res = Double.compare(o1.getKey().getLeven(), o2.getKey().getLeven());
                            break;
                        case "Jaro":
                            res =  Double.compare(o2.getKey().getJaro(), o1.getKey().getJaro());
                            break;
                        case "Mots commun + Levenshtein + Jaro":
                            res = Double.compare(o2.getKey().getCommonwords(), o1.getKey().getCommonwords());
                            if(res == 0){
                                res = Double.compare(o1.getKey().getLeven(), o2.getKey().getLeven());
                                if(res == 0){
                                    res = Double.compare(o2.getKey().getJaro(), o1.getKey().getJaro());
                                }
                            }
                            break;
                        default:
                            res = Double.compare(o2.getKey().getCommonwords(), o1.getKey().getCommonwords());
                            if(res == 0){
                                res = Double.compare(o1.getKey().getLeven(), o2.getKey().getLeven());
                            }
                            break;
                    }
                    return (int) res;
                }
            });
            ComparaisonDialog comparaisonDialog = new ComparaisonDialog(comboBoxAlgo.getValue().toString(), strings.size());
            for (int i = 1; i <= strings.size(); i++) {
                    comparaisonDialog.add(strings.get(i-1).getKey(), strings.get(i-1).getValue().getKey(), strings.get(i-1).getValue().getValue());
                    if(i%100 == 0 || i == strings.size()){
                        comparaisonDialog.drawGraphics(values);
                        Optional<ArrayList<ArrayList<Pair<StringCompared, StringCompared>>>> result = comparaisonDialog.showAndWait();
                        if(i == strings.size() || comparaisonDialog.getExportBD()){
                            for (int j = i; j <= strings.size(); j++)
                                comparaisonDialog.add(strings.get(j-1).getKey(), strings.get(j-1).getValue().getKey());
                            comparaisonDialog.sortIfCheckOrNot();

                            result.ifPresent(list -> {
                                for (Pair<StringCompared, StringCompared> pair : list.get(0)){
                                    ArrayList<String> arrayList = new ArrayList<>();
                                    arrayList.add(pair.getKey().getOriginalText());
                                    arrayList.add(pair.getKey().getUuid());
                                    arrayList.add(pair.getValue().getOriginalText());
                                    arrayList.add(pair.getValue().getUuid());
                                    arrayListCheckedToExport.add(arrayList);
                                }
                                for (Pair<StringCompared, StringCompared> pair : list.get(1)){
                                    ArrayList<String> arrayList = new ArrayList<>();
                                    arrayList.add(pair.getKey().getOriginalText());
                                    arrayList.add(pair.getKey().getUuid());
                                    arrayList.add(pair.getValue().getOriginalText());
                                    arrayList.add(pair.getValue().getUuid());
                                    arrayListNotCheckedToExport.add(arrayList);
                                }
                            });

                            exportToCSV();
                            if(comboBoxSource.getValue() != comboBoxDestination.getValue())
                                exportToPostGre();

                            arrayListCheckedToExport.clear();
                            arrayListNotCheckedToExport.clear();
                        }
                        comparaisonDialog.clear();
                    }

                    if(comparaisonDialog.getFinish()){
                        break;
                    }
                }
        });
    }

    /**
     * Récupere les titres à comparer selon les BD choisis et lance la comparaison selon l'algorithme choisis.
     * Effectue les calculs pour les statistiques.
     * @return
     */
    private ArrayList<Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>>> getStringComparedsAndStartComparaison(){
        ArrayList<Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>>> result = new ArrayList<>();

        PostGreSQL postGreSQLSource = new PostGreSQL();
        PostGreSQL postGreSQLDestination = new PostGreSQL();

        ArrayList<StringCompared> firstArrayList;
        ArrayList<StringCompared> secondArrayList;

        switch (comboBoxSource.getValue().toString()){
            case "GeoNetwork":
                postGreSQLSource.connection("172.30.100.12:5432/bsd?currentSchema=geonetwork");
                break;
            case "GeoServer":
                postGreSQLSource.connection("172.30.100.12:5432/bsd?currentSchema=geoserver");
                break;
            case "Cartogip":
                postGreSQLSource.connection("172.30.100.12:5432/bsd?currentSchema=cartogip");
                break;
            case "BSD":
                postGreSQLSource.connection("172.30.100.12:5432/bsd?currentSchema=bsd");
                break;
            default:
                postGreSQLSource.connection("172.30.100.12:5432/bsd?currentSchema=geonetwork");
                break;
        }
        firstArrayList = postGreSQLSource.getTitleByTableName(comboBoxSource.getValue().toString());
        switch (comboBoxDestination.getValue().toString()){
            case "GeoNetwork":
                postGreSQLDestination.connection("172.30.100.12:5432/bsd?currentSchema=geonetwork");
                break;
            case "GeoServer":
                postGreSQLDestination.connection("172.30.100.12:5432/bsd?currentSchema=geoserver");
                break;
            case "Cartogip":
                postGreSQLDestination.connection("172.30.100.12:5432/bsd?currentSchema=cartogip");
                break;
            case "BSD":
                postGreSQLDestination.connection("172.30.100.12:5432/bsd?currentSchema=bsd");
                break;
            default:
                postGreSQLDestination.connection("172.30.100.12:5432/bsd?currentSchema=geonetwork");
                break;
        }
        secondArrayList = postGreSQLDestination.getTitleByTableName(comboBoxDestination.getValue().toString());


        ArrayList<StringCompared> finalFirstArrayList = firstArrayList;
        ArrayList<StringCompared> finalSecondArrayList = secondArrayList;
        longTask = new Task<Void>() {
            @Override
            protected Void call() throws Exception {
                values = new int[7];
                for (StringCompared compared : finalFirstArrayList) {
                        ArrayList<StringCompared> arrayListResult;
                        ArrayList<StringCompared> secondArrayListResult = null;
                        switch (comboBoxAlgo.getValue().toString()) {
                            case "Mots commun + Levenshtein":
                                arrayListResult = compared.levenshteinDistanceCW(finalSecondArrayList);
                                break;
                            case "Mots commun + Jaro":
                                arrayListResult = compared.jaroDistanceCW(finalSecondArrayList);
                                break;
                            case "Mots commun":
                                arrayListResult = compared.commonWords(finalSecondArrayList);
                                break;
                            case "Levenshtein":
                                arrayListResult = compared.levenshteinDistance(finalSecondArrayList);
                                break;
                            case "Jaro":
                                arrayListResult = compared.jaroDistance(finalSecondArrayList);
                                break;
                            case "Mots commun + Levenshtein + Jaro":
                                arrayListResult = compared.levenshteinDistanceCW(finalSecondArrayList);
                                secondArrayListResult = compared.jaroDistanceCW(finalSecondArrayList);
                                break;
                            default:
                                arrayListResult = compared.levenshteinDistanceCW(finalSecondArrayList);
                                break;
                        }
                        if (arrayListResult != null || (secondArrayListResult != null && comboBoxAlgo.getValue().toString() == "Mots commun + Levenshtein + Jaro" )) {
                            double common = compared.getCommonwords();
                            double leven = compared.getLeven();
                            double jaro = compared.getJaro();
                            switch (comboBoxAlgo.getValue().toString()){
                                case "Mots commun + Levenshtein":
                                    if(common > 4.0)
                                        values[0]++;
                                    else if(common <= 4 && common > 1 && leven == 0)
                                        values[1]++;
                                    else if(common <= 4 && common > 1 && leven < 5)
                                        values[2]++;
                                    else if(common <= 4 && common > 1 && leven >= 5)
                                        values[3]++;
                                    else if(common == 1)
                                        values[4]++;
                                    else if(common == 0 && leven < 5)
                                        values[5]++;
                                    else if(common == 0 && leven >= 5)
                                        values[6]++;
                                    break;
                                case "Mots commun + Jaro":
                                    if(common >= 4.0 && jaro == 1.0)
                                        values[0]++;
                                    else if(common >= 4.0 && jaro >= 0.5)
                                        values[1]++;
                                    else if(common >= 4.0 && jaro < 0.5)
                                        values[2]++;
                                    else if(common < 4.0 && common > 0.0 && jaro >= 0.5)
                                        values[3]++;
                                    else if(common < 4.0 && common > 0.0 && jaro < 0.5)
                                        values[4]++;
                                    else if(common == 0.0 && jaro >= 0.5)
                                        values[5]++;
                                    else if(common == 0.0 && jaro < 0.5)
                                        values[6]++;
                                    break;
                                case "Mots commun":
                                    if(common >= 8)
                                        values[0]++;
                                    else if(common > 4 && common < 8)
                                        values[1]++;
                                    else if(common == 4)
                                        values[2]++;
                                    else if(common == 3)
                                        values[3]++;
                                    else if(common == 2)
                                        values[4]++;
                                    else if(common == 1)
                                        values[5]++;
                                    else if(common == 0)
                                        values[6]++;
                                    break;
                                case "Levenshtein":
                                    if(leven > 6.0)
                                        values[0]++;
                                    else if(leven <= 6.0 && leven > 4.0)
                                        values[1]++;
                                    else if(leven == 4.0)
                                        values[2]++;
                                    else if(leven == 3.0)
                                        values[3]++;
                                    else if(leven == 2.0)
                                        values[4]++;
                                    else if(leven == 1.0)
                                        values[5]++;
                                    else if(leven == 0.0)
                                        values[6]++;
                                    break;
                                case "Jaro":
                                    if(jaro == 1.0)
                                        values[0]++;
                                    else if(jaro >= 0.9)
                                        values[1]++;
                                    else if(jaro >= 0.75)
                                        values[2]++;
                                    else if(jaro >= 0.5)
                                        values[3]++;
                                    else if(jaro >= 0.3)
                                        values[4]++;
                                    else if(jaro >= 0.1)
                                        values[5]++;
                                    else if(jaro == 0.0)
                                        values[6]++;
                                    break;
                                default:
                                    if(common > 4.0)
                                        values[0]++;
                                    else if(common <= 4 && common > 1 && leven == 0)
                                        values[1]++;
                                    else if(common <= 4 && common > 1 && leven < 5)
                                        values[2]++;
                                    else if(common <= 4 && common > 1 && leven >= 5)
                                        values[3]++;
                                    else if(common == 1)
                                        values[4]++;
                                    else if(common == 0 && leven < 5)
                                        values[5]++;
                                    else if(common == 0 && leven >= 5)
                                        values[6]++;
                                    break;
                            }

                            Pair<ArrayList<StringCompared>, ArrayList<StringCompared>> arrayListPair = new Pair<>(arrayListResult, secondArrayListResult);
                            Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>> pair = new Pair<>(compared, arrayListPair);
                            result.add(pair);
                        }
                    }
                return null;
            }
        };

        new Thread(longTask).start();

        postGreSQLSource.deconnection();
        postGreSQLDestination.deconnection();

        return result;
    }

    /**
     * Lance l'écriture dans le fichier csv
     */
    private void exportToCSV(){
        try {
            OutputStreamWriter writer;
            writer = new OutputStreamWriter(
                    new FileOutputStream(comboBoxSource.getValue().toString() + comboBoxDestination.getValue().toString() + "Check.csv"),
                    Charset.forName("UTF-8").newEncoder());
            ArrayList<String> titles = new ArrayList<>();
            titles.add(comboBoxSource.getValue().toString());
            titles.add("ID " + comboBoxSource.getValue().toString());
            titles.add(comboBoxDestination.getValue().toString());
            titles.add("ID " + comboBoxDestination.getValue().toString());
            CSVUtils.writeLine(writer, titles);

            for (ArrayList<String> arrayList: arrayListCheckedToExport){
                CSVUtils.writeLine(writer, arrayList);
            }

            writer.flush();
            writer.close();

            writer = new OutputStreamWriter(
                    new FileOutputStream(comboBoxSource.getValue().toString() + comboBoxDestination.getValue().toString() + "NotCheck.csv"),
                    Charset.forName("UTF-8").newEncoder());
            CSVUtils.writeLine(writer, titles);

            for (ArrayList<String> arrayList: arrayListNotCheckedToExport){
                CSVUtils.writeLine(writer, arrayList);
            }

            writer.flush();
            writer.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void exportToPostGre(){
        PostGreSQL postGreSQL = new PostGreSQL();
        postGreSQL.connection("172.30.100.12:5432/bsd?currentSchema=communs");

        String columnNameSource = "id" + comboBoxSource.getValue().toString();
        String columnNameDestination = "id" + comboBoxDestination.getValue().toString();

        postGreSQL.insertUpdateLines(arrayListCheckedToExport, columnNameSource, columnNameDestination);

        postGreSQL.deconnection();
    }
}
