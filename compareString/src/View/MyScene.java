package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Element.StringCompared;
import NewConnectionDialogs.*;
import Utils.CSVUtils;
import Utils.Utils;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.concurrent.Task;
import javafx.geometry.Insets;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.stage.FileChooser;
import javafx.util.Callback;
import javafx.util.Pair;

import java.io.*;
import java.nio.charset.Charset;
import java.sql.*;
import java.util.*;

import Main.Main;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


public class MyScene extends Scene {

    /**
     * Les taches lancés asynchroniquement pour charger les données longues et laissé l'application tourné
     */
    private Task<Void> longTask;

    /**
     * Les listes déroulantes du menu
     */
    private final ComboBox<DatabaseConnection> comboBoxSource;
    private final ComboBox<DatabaseConnection> comboBoxDestination;
    private final ComboBox<DatabaseConnection> comboBoxSearch;
    private final ComboBox<DatabaseConnection> comboBoxLikened;
    private ComboBox searchResult;

    /**
     * Liste des phrases à écrire dans le fichier .csv
     */
    private ArrayList<ArrayList<String>> arrayListCheckedToExport = new ArrayList<>();
    private ArrayList<ArrayList<String>> arrayListNotCheckedToExport = new ArrayList<>();


    private ObservableList<DatabaseConnection> optionsDatabase;

    private ArrayList<Pair<StringCompared, ArrayList<StringCompared>>> strings;

    private ArrayList<DatabaseConnection> databaseConnections;

    /**
     * Valeurs afin de faire des statistiques
     */
    private int values[];


    public MyScene(){
        super(new Group(), Main.WIDTH, Main.HEIGHT);

        databaseConnections = CSVUtils.readConnections();

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

        comboBoxSource = new ComboBox<>(optionsDatabase);
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


        comboBoxDestination = new ComboBox<>(optionsDatabase);
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


        Button okButton = new Button("Comparer");
        okButton.setOnMouseClicked(event -> {
            startComparaison();
        });

        Button uselessButton = new Button("Ajouter mots inutiles");
        uselessButton.setOnMouseClicked(event -> {
            Optional<String> result = new NewUselessDialog().showAndWait();
            result.ifPresent(res -> {
                if(!StringCompared.getUseless().contains(res)){
                    StringCompared.getUseless().add(res);

                    try {
                        OutputStreamWriter writer = new OutputStreamWriter(
                                new FileOutputStream("useless.csv"),
                                Charset.forName("UTF-8").newEncoder());
                        CSVUtils.writeLine(writer, StringCompared.getUseless(), ';', ' ');

                        writer.flush();
                        writer.close();
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
                else {
                    Alert alert = new Alert(Alert.AlertType.ERROR);
                    alert.setContentText("Le mot '" + res + "' fait déja parti de cette liste");
                    alert.showAndWait();
                }
            });
        });

        Button dictionnaryButton = new Button("Ajouter mots semblables");
        dictionnaryButton.setOnMouseClicked(event -> {
            Optional<Pair<String,String>> result = new NewSameDialog().showAndWait();
            result.ifPresent(res -> {
                boolean present = false;
                for (Map.Entry<String, ArrayList<String>> entry : StringCompared.getSame().entrySet()){
                    for (String s : entry.getValue()){
                        if (res.getValue().equals(s))
                            present = true;
                    }
                }

                if(!present){
                    StringCompared.getSame().get(res.getKey()).add(res.getValue());

                    try {
                        OutputStreamWriter writer = new OutputStreamWriter(
                                new FileOutputStream("same.csv"),
                                Charset.forName("UTF-8").newEncoder());

                        for (Map.Entry<String, ArrayList<String>> entry : StringCompared.getSame().entrySet()){
                            ArrayList<String> arrayList = new ArrayList<>();
                            arrayList.add(entry.getKey());
                            arrayList.addAll(entry.getValue());

                            CSVUtils.writeLine(writer, arrayList, ';', ' ');
                        }


                        writer.flush();
                        writer.close();
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
                else{
                    Alert alert = new Alert(Alert.AlertType.ERROR);
                    alert.setContentText("Le mot '" + res.getValue() + "' fait déja parti d'une liste");
                    alert.showAndWait();
                }

            });

        });

        HBox utilsHbox = new HBox();
        utilsHbox.setSpacing(10);
        utilsHbox.getChildren().addAll(uselessButton, dictionnaryButton);

        comboBoxLikened = new ComboBox<>(optionsDatabase);
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
            DisplayTitlesDialog displayTitlesDialog = new DisplayTitlesDialog(comboBoxLikened.getSelectionModel().getSelectedItem());
            displayTitlesDialog.displayLines();
            displayTitlesDialog.showAndWait();
            displayTitlesDialog.getPostGreSQL().deconnection();
        });

        Button wordStatisticsButton = new Button("Statistiques");
        wordStatisticsButton.setOnMouseClicked(event -> {
            new WordStatisticsDialog(comboBoxLikened.getSelectionModel().getSelectedItem()).show();
        });

        comboBoxSearch = new ComboBox<>(optionsDatabase);
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
                            addDatabase(databaseConnection);

                        });
                    });
                });
            });
        });

        Button importFromExcelButton = new Button("Importer Excel");
        importFromExcelButton.setOnMouseClicked((MouseEvent event) -> {
            FileChooser fileChooser = new FileChooser();
            fileChooser.setTitle("Fichier Excel (.xlsx, .csv, .xls)");
            File file = fileChooser.showOpenDialog(null);

            if(file != null){

                try {
                    XSSFWorkbook wb;
                    if(Utils.getFileExtension(file).equals("csv"))
                        wb = CSVUtils.CSVtoXLSX(file);
                    else if(Utils.getFileExtension(file).equals("xls"))
                        wb = CSVUtils.XLStoXLSX(file);
                    else
                        wb = new XSSFWorkbook(new FileInputStream(file));


                    ArrayList<String> sheets = new ArrayList<>();
                    for (int i = 0; i < wb.getNumberOfSheets(); i++) {
                        sheets.add(wb.getSheetName(i));
                    }

                    Optional<ArrayList<String>> result = new ExcelFormatDialog(sheets).showAndWait();
                    result.ifPresent(res -> {
                        String title = Utils.SQLFormat(res.get(0), false);
                        DatabaseConnection databaseConnection = new DatabaseConnection(title, "172.30.100.12", "5432", "admpostgres", "admpostgres", "bsd", "excel", title, null);

                        int headerRowNum = Integer.parseInt(res.get(1));
                        headerRowNum--;

                        int minRow = Integer.parseInt(res.get(2));
                        minRow--;

                        int maxRow = Integer.parseInt(res.get(3));

                        XSSFSheet sheet = wb.getSheet(res.get(4));


                        Row row = sheet.getRow(headerRowNum);
                        int maxCell = row.getLastCellNum();

                        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);

                        List<String> headers = new ArrayList<>();
                        row = sheet.getRow(headerRowNum);
                        for (int i = 0; i < maxCell; i++) {
                            Cell cell = row.getCell(i);
                            DataFormatter formatter = new DataFormatter();
                            String val = formatter.formatCellValue(cell);
                            headers.add(val);

                        }
                        postGreSQL.createTableExcel(headers);

                        List<String> rowValues;
                        for (int i = minRow; i < maxRow ; i++){
                            row = sheet.getRow(i);
                            rowValues = new ArrayList<>();
                            for (int j = 0; j < maxCell ; j++){
                                Cell cell = row.getCell(j);
                                DataFormatter formatter = new DataFormatter();
                                String val = formatter.formatCellValue(cell);
                                rowValues.add(val);
                            }
                            try {
                                postGreSQL.InsertRowInDB(rowValues);
                            } catch (SQLException | ClassNotFoundException e) {
                                e.printStackTrace();
                            }
                        }

                        addDatabase(databaseConnection);

                        postGreSQL.deconnection();
                    });

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

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

            StringCompared stringCompared = new StringCompared(searchField.getText(), null, null);

            PostGreSQL postGreSQL = new PostGreSQL(comboBoxSearch.getValue());

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

                    return new ListCell<StringCompared>(){

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
                }
            });
            searchResult.valueProperty().addListener((observable, oldValue, newValue) -> idSearch.setText(((StringCompared) newValue).getUuid()));

            optionsResult.sort((o1, o2) -> {
                double res = Double.compare(o2.getCommonwords(), o1.getCommonwords());
                if (res == 0) {
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
        buttonBox.getChildren().addAll(okButton, newCoButton, importFromExcelButton);

        wrapperCompared.getChildren().addAll(comboBoxSource, comboBoxDestination, buttonBox, utilsHbox);
        wrapperLikened.getChildren().addAll(comboBoxLikened, likenedButton, wordStatisticsButton);
        wrapperSearch.getChildren().addAll(searchBox, searchResult, idSearch);
        wrapperUuid.getChildren().addAll(uuidBox, uuidResult);

        wrapper.getChildren().addAll(wrapperCompared, wrapperLikened,wrapperSearch, wrapperUuid);
        group.getChildren().add(wrapper);
    }

    private void startComparaison(){
        strings = getStringComparedsAndStartComparaison();
        longTask.setOnSucceeded(event1 -> {
            ComparaisonDialog comparaisonDialog = new ComparaisonDialog(strings.size());
            sort(comparaisonDialog.getSort_by_value());
            display(comparaisonDialog);
        });
    }

    public void display(ComparaisonDialog comparaisonDialog){
        for (int iterator = 1; iterator <= strings.size(); iterator++) {
            comparaisonDialog.add(strings.get(iterator-1).getKey(), strings.get(iterator-1).getValue());
            if(iterator%50 == 0 || iterator == strings.size()){
                comparaisonDialog.drawGraphics(values);

                if(iterator == strings.size())
                    comparaisonDialog.getTheDialogPane().getButtonTypes().remove(comparaisonDialog.getOkButtonType());

                Optional<ArrayList<ArrayList<Pair<StringCompared, StringCompared>>>> result = comparaisonDialog.showAndWait();
                if(comparaisonDialog.getExportBD()){
                    for (int j = iterator; j <= strings.size(); j++)
                        comparaisonDialog.add(strings.get(j-1).getKey(), strings.get(j-1).getValue());
                    comparaisonDialog.sortIfCheckOrNot();

                    result.ifPresent(list -> {
                        for (Pair<StringCompared, StringCompared> pair : list.get(0)){
                            ArrayList<String> arrayList = new ArrayList<>();
                            arrayList.add(pair.getKey().getUuid());
                            arrayList.add(pair.getKey().getOrganization());
                            arrayList.add(pair.getKey().getOriginalText());
                            arrayList.add(pair.getValue().getUuid());
                            arrayList.add(pair.getValue().getOrganization());
                            arrayList.add(pair.getValue().getOriginalText());
                            arrayListCheckedToExport.add(arrayList);
                        }
                        for (Pair<StringCompared, StringCompared> pair : list.get(1)){
                            ArrayList<String> arrayList = new ArrayList<>();
                            arrayList.add(pair.getKey().getUuid());
                            arrayList.add(pair.getKey().getOrganization());
                            arrayList.add(pair.getKey().getOriginalText());
                            arrayList.add(pair.getValue().getUuid());
                            arrayList.add(pair.getValue().getOrganization());
                            arrayList.add(pair.getValue().getOriginalText());
                            arrayListNotCheckedToExport.add(arrayList);
                        }
                    });

                    if(comboBoxSource != comboBoxDestination){
                        ArrayList<Pair<Boolean, String>> choises = comparaisonDialog.getExportChoises();
                        if(choises.get(0).getKey()){
                            String tableCorrespondance = choises.get(0).getValue();

                            PostGreSQL postGreSQL = new PostGreSQL(comboBoxSource.getValue());
                            postGreSQL.newIdColumnCorrespondance(tableCorrespondance);
                            postGreSQL.deconnection();

                            postGreSQL = new PostGreSQL(comboBoxDestination.getValue());
                            postGreSQL.newIdColumnCorrespondance(tableCorrespondance);
                            postGreSQL.deconnection();

                            exportToPostGre(tableCorrespondance);
                        }

                        if(choises.get(1).getKey())
                            exportToCSV(choises.get(1).getValue());
                    }

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

    private void sort(int sort_options){
        strings.sort((o1, o2) -> {
            double res;
            switch (sort_options) {
                case 1:
                    res = Double.compare(o1.getKey().getCommonwords(), o2.getKey().getCommonwords());
                    if (res == 0)
                        res = Double.compare(o1.getKey().getLeven(), o2.getKey().getCommonwords());
                    break;
                case 2:
                    res = o1.getKey().getOrganization().toLowerCase().compareTo(o2.getKey().getOrganization().toLowerCase());
                    break;
                default:
                    res = Double.compare(o2.getKey().getCommonwords(), o1.getKey().getCommonwords());
                    if (res == 0)
                        res = Double.compare(o2.getKey().getLeven(), o1.getKey().getLeven());
                    break;
            }
            return (int) res;
        });
    }

    /**
     * Récupere les titres à comparer selon les BD choisis et lance la comparaison selon l'algorithme choisis.
     * Effectue les calculs pour les statistiques.
     * @return
     */
    private ArrayList<Pair<StringCompared, ArrayList<StringCompared>>> getStringComparedsAndStartComparaison(){
        ArrayList<Pair<StringCompared, ArrayList<StringCompared>>> result = new ArrayList<>();

        ArrayList<StringCompared> firstArrayList;
        ArrayList<StringCompared> secondArrayList;

        PostGreSQL postGreSQLSource = new PostGreSQL(comboBoxSource.getValue());
        firstArrayList = postGreSQLSource.getTitleByTableName(true);

        PostGreSQL postGreSQLDestination = new PostGreSQL(comboBoxDestination.getValue());
        secondArrayList = postGreSQLDestination.getTitleByTableName(false);


        ArrayList<StringCompared> finalFirstArrayList = firstArrayList;
        ArrayList<StringCompared> finalSecondArrayList = secondArrayList;
        longTask = new Task<Void>() {
            @Override
            protected Void call() throws Exception {
                values = new int[7];
                for (StringCompared compared : finalFirstArrayList) {
                    ArrayList<StringCompared> arrayListResult = compared.levenshteinDistanceCW(finalSecondArrayList);
                    if (arrayListResult != null) {
                        double common = compared.getCommonwords();
                        double leven = compared.getLeven();


                        if (common == 1)
                            values[0]++;
                        else if (common < 1 && common >= 0.5 && leven < 0.5)
                            values[1]++;
                        else if (common < 1 && common >= 0.5 && leven >= 0.5)
                            values[2]++;
                        else if (common < 0.5 && common >= 0 && leven < 0.5)
                            values[3]++;
                        else if (common < 0.5 && common >= 0 && leven >= 0.5)
                            values[4]++;

                        if(compared.getSameOrgaScore() == 0)
                            values[5]++;

                    }

                    if (arrayListResult != null) {
                        Pair<StringCompared, ArrayList<StringCompared>> pair = new Pair<>(compared, arrayListResult);
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

    private void exportToPostGre(String table){
        String columnNameSource = "id" + comboBoxSource.getValue().getTable();
        String columnNameDestination = "id" + comboBoxDestination.getValue().getTable();


        DatabaseConnection databaseConnection = new DatabaseConnection("Communs", "172.30.100.12", "5432","admpostgres", "admpostgres", "bsd", "communs", table, null);
        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);

        String booleanColumn = comboBoxSource.getValue().getColumns().get(2) + "_commun";
        postGreSQL.newBooleanColumnCorrespondance(booleanColumn);
        postGreSQL.insertUpdateLines(arrayListCheckedToExport, columnNameSource, columnNameDestination, booleanColumn);

        postGreSQL.deconnection();
    }

    /**
     * Lance l'écriture dans le fichier csv
     */
    private void exportToCSV(String fileName){
        fileName = fileName.replace(".csv", "");
        try {
            OutputStreamWriter writerCheck = new OutputStreamWriter(
                    new FileOutputStream(fileName + "Check.csv"),
                    Charset.forName("UTF-8").newEncoder());
            ArrayList<String> titles = new ArrayList<>();
            titles.add("ID " + comboBoxSource.getValue().toString());
            titles.add("ORGA " + comboBoxSource.getValue().toString());
            titles.add("TEXT " + comboBoxSource.getValue().toString());

            titles.add("ID " + comboBoxDestination.getValue().toString());
            titles.add("ORGA " + comboBoxDestination.getValue().toString());
            titles.add("TEXT " + comboBoxDestination.getValue().toString());

            CSVUtils.writeLine(writerCheck, titles);

            for (ArrayList<String> arrayList: arrayListCheckedToExport){
                CSVUtils.writeLine(writerCheck, arrayList);
            }

            writerCheck.flush();
            writerCheck.close();

            OutputStreamWriter writerNotCheck = new OutputStreamWriter(
                    new FileOutputStream(fileName + "NotCheck.csv"),
                    Charset.forName("UTF-8").newEncoder());
            CSVUtils.writeLine(writerNotCheck, titles);

            for (ArrayList<String> arrayList: arrayListNotCheckedToExport){
                CSVUtils.writeLine(writerNotCheck, arrayList);
            }

            writerNotCheck.flush();
            writerNotCheck.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void saveDatabases(){
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
                if(db.getJoins() != null){
                    for (Pair<String, Pair<String, String>> p: db.getJoins()){
                        arrayList.add(p.getKey());
                        arrayList.add(p.getValue().getKey());
                        arrayList.add(p.getValue().getValue());
                    }
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
    }

    private void addDatabase(DatabaseConnection databaseConnection){
        databaseConnections.add(databaseConnection);
        saveDatabases();

        optionsDatabase = FXCollections.observableArrayList(
                databaseConnections
        );
        comboBoxSource.setItems(optionsDatabase);
        comboBoxDestination.setItems(optionsDatabase);
        comboBoxSearch.setItems(optionsDatabase);
        comboBoxLikened.setItems(optionsDatabase);
    }

}
