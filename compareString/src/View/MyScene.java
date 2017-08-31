package View;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Element.StringCompared;
import PreconfigView.SameUselessScene;
import Utils.*;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.concurrent.Task;
import javafx.geometry.Pos;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.scene.shape.Line;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.util.Callback;
import javafx.util.Pair;

import java.io.*;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.util.*;

import Main.Main;


public class MyScene extends Scene {

    private final int ELEMENTS_BY_PAGE = 50;

    private Task<Void> longTask; // effectue une tache de manière asynchronique

    private final ComboBox<DatabaseConnection> comboBoxSource;
    private final ComboBox<DatabaseConnection> comboBoxDestination;
    private final ComboBox<DatabaseConnection> comboBoxLikened;
    private final ComboBox<DatabaseConnection> comboBoxStats;


    private ArrayList<ArrayList<StringCompared>> arrayListCheckedToExport = new ArrayList<>();
    private ArrayList<ArrayList<StringCompared>> arrayListNotCheckedToExport = new ArrayList<>();
    private ArrayList<ArrayList<StringCompared>> arrayListCheckedLikened = new ArrayList<>();


    private ArrayList<Pair<StringCompared, ArrayList<StringCompared>>> strings;


    private int values[]; // stocke le nombre de données de tel catégorie pour le tableau du graphique


    public MyScene(DatabaseConnection databaseConnection, String profil){
        super(new Group(), Main.WIDTH, Main.HEIGHT*2);

        Group group = (Group) getRoot();

        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);
        ArrayList<DatabaseConnection> databaseConnections = new ArrayList<>();
        try {
            databaseConnections = postGreSQL.getConnections(); // On récupère les connections
            postGreSQL.deconnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        ObservableList<DatabaseConnection> optionsDatabase = FXCollections.observableArrayList(
                databaseConnections
        );

        comboBoxSource = new ComboBox<>(optionsDatabase);
        comboBoxSource.getSelectionModel().selectFirst();
        comboBoxSource.setCellFactory(new Callback<ListView<DatabaseConnection>,ListCell<DatabaseConnection>>(){ // Etant donné que la comboBox de type différente de String, il faut alors indiquer au programme quel texte doit être affiché
            @Override
            public ListCell<DatabaseConnection> call(ListView<DatabaseConnection> p) {
                final ListCell<DatabaseConnection> cell = new ListCell<DatabaseConnection>(){

                    @Override
                    protected void updateItem(DatabaseConnection t, boolean bln) {
                        super.updateItem(t, bln);

                        if(t != null){
                            setText(t.getTitle()); // donc on affiche ici le titre
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

        comboBoxStats = new ComboBox<>(optionsDatabase);
        comboBoxStats.getSelectionModel().selectFirst();
        comboBoxStats.setCellFactory(new Callback<ListView<DatabaseConnection>,ListCell<DatabaseConnection>>(){
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

        Text titleCompared = new Text("Comparaison");
        titleCompared.setFont(new Font(30));

        Button comparedButton = new Button("Lancer Comparaison");
        comparedButton.setOnMouseClicked(event -> {
            startComparaison();
        });

        Line first_line = new Line(0,0, Main.WIDTH,0);

        Text titleLikened = new Text("Apparentement");
        titleLikened.setFont(new Font(30));

        Button likenedButton = new Button("Lancer Apparentement");
        likenedButton.setOnMouseClicked(event -> {
            DisplayTitlesDialog displayTitlesDialog = new DisplayTitlesDialog(comboBoxLikened.getSelectionModel().getSelectedItem());
            displayTitlesDialog.displayLines();
            displayTitlesDialog.showAndWait();
            displayTitlesDialog.getPostGreSQL().deconnection();
        });

        Line second_line = new Line(0,0, Main.WIDTH,0);

        Text titleStats = new Text("Statistiques");
        titleStats.setFont(new Font(30));

        Button wordStatisticsButton = new Button("Calcul Nombre Occurence Mots");
        wordStatisticsButton.setOnMouseClicked(event -> {
            new WordStatisticsDialog(comboBoxStats.getSelectionModel().getSelectedItem()).show();
        });

        Line third_line = new Line(0,0,Main.WIDTH, 0);

        Button back_to_uselessSame = new Button("Retour aux mots inutiles/semblables");
        back_to_uselessSame.setOnMouseClicked(event -> {
            Scene scene = new SameUselessScene(databaseConnection, profil);
            Main.getStage().setHeight(Main.HEIGHT);
            Main.getStage().setScene(scene);
        });

        wrapper.getChildren().addAll(titleCompared, comboBoxSource, comboBoxDestination, comparedButton, first_line, titleLikened, comboBoxLikened, likenedButton, second_line, titleStats, comboBoxStats, wordStatisticsButton, third_line, back_to_uselessSame);
        wrapper.setAlignment(Pos.CENTER);

        group.getChildren().add(wrapper);
    }

    /**
     * Initile la fonction de comparaison en recuperant les données, lancant le traitement et affiche la boite de dialogue de comparaison
     */
    private void startComparaison(){
        strings = getStringComparedsAndStartComparaison();
        longTask.setOnSucceeded(event1 -> { // une fois que la tache de comparaison MC/Levenshtein a fini
            ComparaisonDialog comparaisonDialog = new ComparaisonDialog(strings.size()); // initialise la boite de dialogue de comparaison ( graphique + liste des matchages)
            sort(comparaisonDialog.getSort_by_value());
            display(comparaisonDialog);
            arrayListCheckedLikened.clear();
            arrayListCheckedToExport.clear();
            arrayListNotCheckedToExport.clear();
        });
    }

    /**
     * Affiche toutes les données sur la ComparaisonDialog (graphique, les matchages, ...)
     * Gere l'export aussi
     * @param comparaisonDialog
     */
    public void display(ComparaisonDialog comparaisonDialog){
        for (int iterator = 1; iterator <= strings.size(); iterator++) {
            if (iterator == 1)
                comparaisonDialog.drawGraphics(values); // j'affiche le graphique dès le début

            comparaisonDialog.add(strings.get(iterator-1).getKey(), strings.get(iterator-1).getValue());
            if(iterator%ELEMENTS_BY_PAGE == 0 || iterator == strings.size()){ // % = modulo; si iterator est un diviseur de 50 ou qu'on arrive à la fin de la liste

                int page = iterator/ELEMENTS_BY_PAGE;
                comparaisonDialog.setNum_page(page); // change le numero de la page

                // Gestion de possibilité de clic sur les boutons précédents / suivants
                Node nextButton = comparaisonDialog.getTheDialogPane().lookupButton(comparaisonDialog.getNextButtonType());
                Node previousButton = comparaisonDialog.getTheDialogPane().lookupButton(comparaisonDialog.getPreviousButtonType());
                if(iterator == strings.size())
                    nextButton.setDisable(true);
                else
                    nextButton.setDisable(false);

                if (iterator == ELEMENTS_BY_PAGE)
                    previousButton.setDisable(true);
                else
                    previousButton.setDisable(false);


                Optional<ArrayList<ArrayList<Pair<StringCompared, StringCompared>>>> result = comparaisonDialog.showAndWait(); // showAndWait, on attends la réponse de l'utilisateur
                switch (comparaisonDialog.getState()){
                    case NEXT:
                        comparaisonDialog.clear();
                        break;
                    case PREVIOUS:
                        comparaisonDialog.clear();
                        iterator -= 100;
                        break;
                    case EXPORT:
                        for (int j = iterator; j <= strings.size(); j++) // Récupérer tous les matchages (sans les afficher) mais les avoir pour l'export
                            comparaisonDialog.add(strings.get(j-1).getKey(), strings.get(j-1).getValue());
                        comparaisonDialog.sortIfCheckOrNot();

                        result.ifPresent(list -> {
                            for (Pair<StringCompared, StringCompared> pair : list.get(0)){
                                ArrayList<StringCompared> arrayList = new ArrayList<>();
                                arrayList.add(pair.getKey());
                                arrayList.add(pair.getValue());
                                arrayListCheckedToExport.add(arrayList);
                            }
                            for (Pair<StringCompared, StringCompared> pair : list.get(1)){
                                ArrayList<StringCompared> arrayList = new ArrayList<>();
                                arrayList.add(pair.getKey());
                                arrayList.add(pair.getValue());
                                arrayListNotCheckedToExport.add(arrayList);
                            }
                            for (Pair<StringCompared, StringCompared> pair : list.get(2)){
                                ArrayList<StringCompared> arrayList = new ArrayList<>();
                                arrayList.add(pair.getKey());
                                arrayList.add(pair.getValue());
                                arrayListCheckedLikened.add(arrayList);
                            }

                            ArrayList<Pair<Boolean, ArrayList<String>>> choises = comparaisonDialog.getExportChoises();
                            if(choises.get(0).getKey()){ // si l'export bsd est coché
                                String tableCorrespondance = choises.get(0).getValue().get(0);

                                PostGreSQL postGreSQL = new PostGreSQL(comboBoxSource.getValue());
                                postGreSQL.newIdColumnCorrespondance(tableCorrespondance);
                                postGreSQL.deconnection();

                                postGreSQL = new PostGreSQL(comboBoxDestination.getValue());
                                postGreSQL.newIdColumnCorrespondance(tableCorrespondance);
                                postGreSQL.deconnection();

                                exportToPostGre(tableCorrespondance);
                            }

                            if(choises.get(1).getKey()) // si l'export CSV est coché
                                exportToCSV(choises.get(1).getValue());

                            exportLikened();
                            comparaisonDialog.setState(State.CANCEL);
                        });
                        break;
                }

                if(comparaisonDialog.getState() == State.CANCEL){
                    // avec le break on termine la boucle for et mets donc fin à la comparaison
                    break;
                }
            }
        }

        if(comparaisonDialog.getChanged()){
            comparaisonDialog.clear();
            sort(comparaisonDialog.getSort_by_value());
            comparaisonDialog.setChanged(false);
            display(comparaisonDialog);
        }
    }

    /**
     * Trie les éléments selon la valeur de la liste déroulante de trie de la boite de dialogue de comparaison
     * @param sort_options
     */
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
     * Récupere les titres à comparer selon les BD choisis et lance la comparaison.
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
                for (StringCompared compared : finalFirstArrayList) { // sur chaque titre en entrée
                    ArrayList<StringCompared> arrayListResult = compared.levenshteinDistanceCW(finalSecondArrayList); // on lance la comparaison de Levenshtein qui nous retourne une liste de titres
                    if (arrayListResult != null) {
                        double common = compared.getCommonwords(); // nombre de mots communs (calculé précédemment)
                        double leven = compared.getLeven(); // distance de levenshtein

                        // Implementation des catégories et des values qui permettront d'alimenter le graphique
                        if (common == 1){
                            values[0]++;
                            compared.setCategory(Category.TFavorable);
                        }
                        else if (common < 1 && common >= 0.5 && leven < 0.5){
                            values[1]++;
                            compared.setCategory(Category.Favorable);
                        }
                        else if (common < 1 && common >= 0.5 && leven >= 0.5){
                            values[2]++;
                            compared.setCategory(Category.Passable);
                        }
                        else if (common < 0.5 && common >= 0 && leven < 0.5){
                            values[3]++;
                            compared.setCategory(Category.Défavorable);
                        }
                        else if (common < 0.5 && common >= 0 && leven >= 0.5){
                            values[4]++;
                            compared.setCategory(Category.TDéfavorable);
                        }

                        if(compared.getSameOrgaScore() == 0)
                            values[5]++;

                        Pair<StringCompared, ArrayList<StringCompared>> pair = new Pair<>(compared, arrayListResult);
                        result.add(pair);
                    }

                }
                return null;
            }
        };

        new Thread(longTask).start(); // lance la tache asynchronique

        postGreSQLSource.deconnection();
        postGreSQLDestination.deconnection();

        return result;
    }

    private void exportToPostGre(String table){
        String tableNameSource = comboBoxSource.getValue().getTable();
        String tableNameDestination = comboBoxDestination.getValue().getTable();


        DatabaseConnection databaseConnection = new DatabaseConnection("Communs", "172.30.100.12", "5432","admpostgres", "admpostgres", "bsd", "communs", table, null);
        PostGreSQL postGreSQL = new PostGreSQL(databaseConnection);

        String booleanColumn = comboBoxSource.getValue().getColumns().get(2) + "_commun";
        postGreSQL.newBooleanColumnCorrespondance(booleanColumn);
        try {
            postGreSQL.insertUpdateLines(arrayListCheckedToExport, tableNameSource, tableNameDestination, booleanColumn);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        postGreSQL.deconnection();
    }

    /**
     * Lance l'écriture dans le fichier csv
     */
    private void exportToCSV(ArrayList<String> fileNameAndCategories){
        String fileName = fileNameAndCategories.get(0);
        fileName = fileName.replace(".csv", "");
        fileName = fileName + ".csv";
        try {
            OutputStreamWriter writer = new OutputStreamWriter( // classe Java permettant l'écriture dans les fichiers
                    new FileOutputStream(fileName),
                    Charset.forName("UTF-8").newEncoder());
            ArrayList<String> titles = new ArrayList<>();
            titles.add("ID " + comboBoxSource.getValue().toString());
            titles.add("ORGA " + comboBoxSource.getValue().toString());
            titles.add("TEXTE " + comboBoxSource.getValue().toString());

            titles.add("ID " + comboBoxDestination.getValue().toString());
            titles.add("ORGA " + comboBoxDestination.getValue().toString());
            titles.add("TEXT " + comboBoxDestination.getValue().toString());
            titles.add("CATEGORIE");
            titles.add("%MC");
            titles.add("%Leven");

            CSVUtils.writeLine(writer, titles, ';', ' '); // ecrire cette ligne

            for (ArrayList<StringCompared> arrayList: arrayListCheckedToExport){
                String category = arrayList.get(0).getCategory().toString();
                if(fileNameAndCategories.contains(category)){
                    ArrayList<String> elements = new ArrayList<>();
                    elements.add(CSVUtils.notNull(arrayList.get(0).getUuid()));
                    elements.add(CSVUtils.notNull(arrayList.get(0).getOrganization()));
                    elements.add(CSVUtils.notNull(arrayList.get(0).getOriginalText()));


                    elements.add(CSVUtils.notNull(arrayList.get(1).getUuid()));
                    elements.add(CSVUtils.notNull(arrayList.get(1).getOrganization()));
                    elements.add(CSVUtils.notNull(arrayList.get(1).getOriginalText()));

                    elements.add(CSVUtils.notNull(category));
                    elements.add(CSVUtils.notNull(Float.toString(arrayList.get(0).getCommonwords())));
                    elements.add(CSVUtils.notNull(Float.toString(arrayList.get(0).getLeven())));

                    CSVUtils.writeLine(writer, elements, ';', ' ');
                }
            }

            for (ArrayList<StringCompared> arrayList: arrayListNotCheckedToExport){
                String category = arrayList.get(0).getCategory().toString();
                if(fileNameAndCategories.contains(category)) {
                    ArrayList<String> elements = new ArrayList<>();
                    elements.add(CSVUtils.notNull(arrayList.get(0).getUuid()));
                    elements.add(CSVUtils.notNull(arrayList.get(0).getOrganization()));
                    elements.add(CSVUtils.notNull(arrayList.get(0).getOriginalText()));

                    elements.add(CSVUtils.notNull(arrayList.get(1).getUuid()));
                    elements.add(CSVUtils.notNull(arrayList.get(1).getOrganization()));
                    elements.add(CSVUtils.notNull(arrayList.get(1).getOriginalText()));

                    elements.add(CSVUtils.notNull(category));
                    elements.add(CSVUtils.notNull(Float.toString(arrayList.get(0).getCommonwords())));
                    elements.add(CSVUtils.notNull(Float.toString(arrayList.get(0).getLeven())));

                    CSVUtils.writeLine(writer, elements, ';', ' ');
                }
            }

            writer.flush(); // ne pas oublie sinon pas écriture
            writer.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void exportLikened(){
        PostGreSQL postGreSQL = new PostGreSQL(comboBoxSource.getValue());

        String tableNameDestination = comboBoxDestination.getValue().getTable();

        try {
            postGreSQL.likenedLines(arrayListCheckedLikened, tableNameDestination);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        postGreSQL.deconnection();
    }

}
