package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Element.StringCompared;
import NewConnectionDialogs.*;
import Utils.CSVUtils;
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

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.*;

import Main.Main;


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
    private final ComboBox comboBoxSearch;
    private final ComboBox comboBoxLikened;
    private ComboBox searchResult;

    /**
     * Liste des phrases à écrire dans le fichier .csv
     */
    private ArrayList<ArrayList<String>> arrayListCheckedToExport = new ArrayList<>();
    private ArrayList<ArrayList<String>> arrayListNotCheckedToExport = new ArrayList<>();


    private ObservableList<DatabaseConnection> optionsDatabase;

    private ArrayList<Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>>> strings;

    /**
     * Valeurs afin de faire des statistiques
     */
    private int values[];


    public MyScene(){
        super(new Group(), Main.WIDTH, Main.HEIGHT);

        ArrayList<DatabaseConnection> databaseConnections = CSVUtils.readConnections();

        Group group = (Group) getRoot();
        setFill(Color.rgb(224,212,187));

        VBox wrapper = new VBox();
        wrapper.setSpacing(40);
        wrapper.setPadding(new Insets(Main.WIDTH / 20,0,0, Main.WIDTH / 20));

        VBox wrapperCompared = new VBox();
        wrapperCompared.setSpacing(10);

        VBox wrapperLikened = new VBox();
        wrapperLikened.setSpacing(10);

        VBox wrapperSearch = new VBox();
        wrapperSearch.setSpacing(10);

        VBox wrapperUuid = new VBox();
        wrapperUuid.setSpacing(10);


        optionsDatabase = FXCollections.observableArrayList(
                        databaseConnections
                );

        comboBoxSource = new ComboBox(optionsDatabase);
        comboBoxSource.getSelectionModel().selectFirst();
        comboBoxSource.setCellFactory(new Callback<ListView<DatabaseConnection>,ListCell<DatabaseConnection>>(){
            @Override
            public ListCell<DatabaseConnection> call(ListView<DatabaseConnection> p) {
                final ListCell<DatabaseConnection> cell = new ListCell<DatabaseConnection>(){

                    @Override
                    protected void updateItem(DatabaseConnection t, boolean bln) {
                        super.updateItem(t, bln);

                        if(t != null){
                            setText(t.getTitle());
                        }else{
                            setText(null);
                        }
                    }

                };
                return cell;
            }
        });


        comboBoxDestination = new ComboBox(optionsDatabase);
        comboBoxDestination.getSelectionModel().selectFirst();
        comboBoxDestination.getSelectionModel().selectNext();
        comboBoxDestination.setCellFactory(new Callback<ListView<DatabaseConnection>,ListCell<DatabaseConnection>>(){
            @Override
            public ListCell<DatabaseConnection> call(ListView<DatabaseConnection> p) {
                final ListCell<DatabaseConnection> cell = new ListCell<DatabaseConnection>(){

                    @Override
                    protected void updateItem(DatabaseConnection t, boolean bln) {
                        super.updateItem(t, bln);

                        if(t != null){
                            setText(t.getTitle());
                        }else{
                            setText(null);
                        }
                    }

                };
                return cell;
            }
        });

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
                startComparaison();
        });

        comboBoxLikened = new ComboBox(optionsDatabase);
        comboBoxLikened.getSelectionModel().selectFirst();
        comboBoxLikened.setCellFactory(new Callback<ListView<DatabaseConnection>,ListCell<DatabaseConnection>>(){
            @Override
            public ListCell<DatabaseConnection> call(ListView<DatabaseConnection> p) {
                final ListCell<DatabaseConnection> cell = new ListCell<DatabaseConnection>(){

                    @Override
                    protected void updateItem(DatabaseConnection t, boolean bln) {
                        super.updateItem(t, bln);

                        if(t != null){
                            setText(t.getTitle());
                        }else{
                            setText(null);
                        }
                    }

                };
                return cell;
            }
        });

        Button likenedButton = new Button("Apparenter");
        likenedButton.setOnMouseClicked(event -> {
            DisplayTitlesDialog displayTitlesDialog = new DisplayTitlesDialog((DatabaseConnection) comboBoxLikened.getSelectionModel().getSelectedItem());
            displayTitlesDialog.displayLines();
            displayTitlesDialog.showAndWait();
            displayTitlesDialog.getPostGreSQL().deconnection();
        });

        Button wordStatisticsButton = new Button("Statistiques");
        wordStatisticsButton.setOnMouseClicked(event -> {
            new WordStatisticsDialog((DatabaseConnection) comboBoxLikened.getSelectionModel().getSelectedItem()).show();
        });

        comboBoxSearch = new ComboBox(optionsDatabase);
        comboBoxSearch.getSelectionModel().selectFirst();
        comboBoxSearch.setCellFactory(new Callback<ListView<DatabaseConnection>,ListCell<DatabaseConnection>>(){
            @Override
            public ListCell<DatabaseConnection> call(ListView<DatabaseConnection> p) {
                final ListCell<DatabaseConnection> cell = new ListCell<DatabaseConnection>(){

                    @Override
                    protected void updateItem(DatabaseConnection t, boolean bln) {
                        super.updateItem(t, bln);

                        if(t != null){
                            setText(t.getTitle());
                        }else{
                            setText(null);
                        }
                    }

                };
                return cell;
            }
        });

        Button newCoButton = new Button("Nouvelle connexion");
        newCoButton.setOnMouseClicked(event -> {
            Optional<ArrayList<String>> resultFirstParameters = new TitleIpPortUserPasswordDialog().showAndWait();
            resultFirstParameters.ifPresent(firstParameters -> {
                String title = firstParameters.get(0);
                String ip = firstParameters.get(1);
                String port = firstParameters.get(2);
                String user = firstParameters.get(3);
                String password = firstParameters.get(4);
                DatabaseConnection databaseConnection = new DatabaseConnection(title, ip, port, user, password);

                Optional<String> resultDatabase = new DatabaseDialog(databaseConnection).showAndWait();

                resultDatabase.ifPresent(database -> {
                    databaseConnection.setDatabase(database);
                    Optional<String> resultSchema = new SchemaDialog(databaseConnection).showAndWait();

                    resultSchema.ifPresent(schema -> {
                        databaseConnection.setSchema(schema);
                        Optional<String> resultTable = new TableDialog(databaseConnection).showAndWait();
                        resultTable.ifPresent(table -> {
                            databaseConnection.setTable(table);
                            Optional<ArrayList<Pair<String, Pair<String, String>>>> resultJoins = new JoinTableDialog(databaseConnection).showAndWait();
                            resultJoins.ifPresent(databaseConnection::setJoins);
                            Optional<ArrayList<String>> resultColumns = new ColumnsDialog(databaseConnection).showAndWait();
                            resultColumns.ifPresent(columns -> {
                                databaseConnection.setColumns(columns);

                                databaseConnections.add(databaseConnection);
                                try {
                                    OutputStreamWriter writer = new OutputStreamWriter( new FileOutputStream("connexion.csv"),
                                            Charset.forName("UTF-8").newEncoder());

                                    for (DatabaseConnection db : databaseConnections) {
                                        ArrayList<String> arrayList = new ArrayList<>();
                                        arrayList.add(db.getTitle());
                                        arrayList.add(db.getIp());
                                        arrayList.add(db.getPort());
                                        arrayList.add(db.getUser());
                                        arrayList.add(db.getPassword());
                                        arrayList.add(db.getDatabase());
                                        arrayList.add(db.getSchema());
                                        arrayList.add(db.getTable());
                                        arrayList.addAll(db.getColumns());
                                        arrayList.add("separator");
                                        for (Pair<String, Pair<String, String>> p: db.getJoins()){
                                            arrayList.add(p.getKey());
                                            arrayList.add(p.getValue().getKey());
                                            arrayList.add(p.getValue().getValue());
                                        }

                                        CSVUtils.writeLine(writer, arrayList, '²', ' ');
                                    }
                                    writer.flush();
                                    writer.close();

                                } catch (FileNotFoundException e) {
                                    e.printStackTrace();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }

                                optionsDatabase = FXCollections.observableArrayList(
                                        databaseConnections
                                );
                                comboBoxSource.setItems(optionsDatabase);
                                comboBoxDestination.setItems(optionsDatabase);
                                comboBoxSearch.setItems(optionsDatabase);
                                comboBoxLikened.setItems(optionsDatabase);
                            });
                        });
                    });
                });
            });
        });

        HBox searchBox = new HBox();
        searchBox.setSpacing(20);

        TextField searchField = new TextField();
        searchField.setPromptText("Votre texte");


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

            PostGreSQL postGreSQL = new PostGreSQL((DatabaseConnection) comboBoxSearch.getValue());

            ArrayList<StringCompared> compareds = postGreSQL.getTitleByTableName(false);

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
            for (DatabaseConnection db : databaseConnections) {
                if (text.isEmpty()) {
                    PostGreSQL postGreSQL = new PostGreSQL(db);
                    ArrayList<StringCompared> compareds = postGreSQL.getTitleByTableName(false);
                    for (StringCompared compared :
                            compareds) {
                        if (uuidField.getText().equals(compared.getUuid())) {
                            text = compared.getOriginalText();
                            break;
                        }
                    }
                    postGreSQL.deconnection();
                }
            }
            uuidResult.setText(text);
        });

        uuidBox.getChildren().addAll(uuidField, uuidButton);

        HBox buttonBox = new HBox();
        buttonBox.setSpacing(10);
        buttonBox.getChildren().addAll(okButton, newCoButton);

        wrapperCompared.getChildren().addAll(comboBoxSource, comboBoxDestination, comboBoxAlgo, buttonBox);
        wrapperLikened.getChildren().addAll(comboBoxLikened, likenedButton, wordStatisticsButton);
        wrapperSearch.getChildren().addAll(searchBox, searchResult, idSearch);
        wrapperUuid.getChildren().addAll(uuidBox, uuidResult);

        wrapper.getChildren().addAll(wrapperCompared, wrapperLikened,wrapperSearch, wrapperUuid);
        group.getChildren().add(wrapper);
    }

    private void startComparaison(){
        strings = getStringComparedsAndStartComparaison();
        longTask.setOnSucceeded(event1 -> {
            ComparaisonDialog comparaisonDialog = new ComparaisonDialog(comboBoxAlgo.getValue().toString(), strings.size());
            sort(comparaisonDialog.getSort_by_value());
            display(comparaisonDialog);
        });
    }

    public void display(ComparaisonDialog comparaisonDialog){
        for (int iterator = 1; iterator <= strings.size(); iterator++) {
            comparaisonDialog.add(strings.get(iterator-1).getKey(), strings.get(iterator-1).getValue().getKey(), strings.get(iterator-1).getValue().getValue());
            if(iterator%100 == 0 || iterator == strings.size()){
                comparaisonDialog.drawGraphics(values);
                Optional<ArrayList<ArrayList<Pair<StringCompared, StringCompared>>>> result = comparaisonDialog.showAndWait();
                if(iterator == strings.size() || comparaisonDialog.getExportBD()){
                    for (int j = iterator; j <= strings.size(); j++)
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

                    if(comboBoxAlgo != comboBoxDestination)
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
        if(comparaisonDialog.getChanged()){
            sort(comparaisonDialog.getSort_by_value());
            comparaisonDialog.setChanged(false);
            comparaisonDialog.setFinish(false);
            display(comparaisonDialog);
        }
    }

    public void sort(int sort_options){
        Collections.sort(strings, new Comparator<Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>>>() {
            @Override
            public int compare(Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>> o1, Pair<StringCompared, Pair<ArrayList<StringCompared>, ArrayList<StringCompared>>> o2) {
                double res;
                switch (sort_options){
                    case 1:
                        res = o1.getKey().getOrganization().toLowerCase().compareTo(o2.getKey().getOrganization().toLowerCase());
                        break;
                    default:
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
                        break;
                }

                return (int) res;
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

        ArrayList<StringCompared> firstArrayList;
        ArrayList<StringCompared> secondArrayList;

        PostGreSQL postGreSQLSource = new PostGreSQL((DatabaseConnection) comboBoxSource.getValue());
        firstArrayList = postGreSQLSource.getTitleByTableName(true);

        PostGreSQL postGreSQLDestination = new PostGreSQL((DatabaseConnection) comboBoxDestination.getValue());
        secondArrayList = postGreSQLDestination.getTitleByTableName(false);


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
                                    double percentageCommonWord = common/compared.getArrayList().size();

                                    int nbChar = 0;
                                    for (String s :
                                            compared.getArrayList()) {
                                        for (char c : s.toCharArray()) {
                                            nbChar++;
                                        }
                                    }

                                    double percentageLeven = leven/nbChar;

                                    if(percentageCommonWord == 1)
                                        values[0]++;
                                    else if(percentageCommonWord < 1 && percentageCommonWord >= 0.5 && percentageLeven < 0.5 )
                                        values[1]++;
                                    else if(percentageCommonWord < 1 && percentageCommonWord >= 0.5 && percentageLeven >= 0.5 )
                                        values[2]++;
                                    else if(percentageCommonWord < 0.5 && percentageCommonWord >= 0 && percentageLeven < 0.5 )
                                        values[3]++;
                                    else if(percentageCommonWord < 0.5 && percentageCommonWord >= 0 && percentageLeven >= 0.5 )
                                        values[4]++;
                                    else
                                        values[5]++;
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

    private void exportToPostGre(){
        DatabaseConnection databaseConnection = new DatabaseConnection("Communs", "172.30.100.12", "5432","admpostgres", "admpostgres", "bsd", "communs", null, null, null);
        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);

        String columnNameSource = "id" + comboBoxAlgo.getValue().toString();
        String columnNameDestination = "id" + comboBoxDestination.getValue().toString();

        postGreSQL.insertUpdateLines(arrayListCheckedToExport, columnNameSource, columnNameDestination);

        postGreSQL.deconnection();
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

}
