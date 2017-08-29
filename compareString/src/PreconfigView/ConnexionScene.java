package PreconfigView;

import Element.DatabaseConnection;
import Element.PostGreSQL;
import Main.Main;
import NewConnectionDialogs.*;
import PreconfigView.SameUselessScene;
import Utils.CSVUtils;
import Utils.Utils;
import View.ExcelFormatDialog;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ScrollPane;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.FileChooser;
import javafx.util.Pair;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Ecran de préconfiguration des connexions
 */
public class ConnexionScene extends Scene {

    private VBox wrapperConnections;

    private ArrayList<String> titles;

    private PostGreSQL postGreSQL;

    public ConnexionScene(String profil){
        super(new Group(), Main.WIDTH, Main.HEIGHT);
        Group group = (Group) getRoot();

        DatabaseConnection databaseConnection = new DatabaseConnection(profil, "172.30.100.12", "5432", "admpostgres", "admpostgres", "bsd", profil + "_connexions", "connexions", null);
        postGreSQL = new PostGreSQL(databaseConnection);
        try {
            titles = postGreSQL.getTitles();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        VBox wrapper = new VBox();
        wrapper.setSpacing(30);
        wrapper.setPadding(new Insets(Main.WIDTH / 20,0,0, Main.WIDTH / 20));

        Text titleScene = new Text("Préconfiguration");
        titleScene.setFont(new Font(30));

        Text text = new Text("Nous allons dorénavant configurer les connexions. \n" +
                "Vous pouvez configurer une connexion à une base de donnée. \n" +
                "Mais vous pouvez aussi importer un fichier Excel. \n" +
                "Vous trouvez juste en dessous les connexions déjà présentes associés \n" +
                "au profil que vous avez choisis");


        Button newCoButton = new Button("Nouvelle connexion");
        newCoButton.setOnMouseClicked(event -> {
            Optional<ArrayList<String>> resultFirstParameters = new TitleIpPortUserPasswordDialog().showAndWait(); // lance le Dialog pour configurer le titre, port, etc.. et récupère les résultats dans un ArrayList
            resultFirstParameters.ifPresent(firstParameters -> { // lambda expression, les résultats sont maintenant dans firstParameters
                String title = firstParameters.get(0);
                String ip = firstParameters.get(1);
                String port = firstParameters.get(2);
                String user = firstParameters.get(3);
                String password = firstParameters.get(4);
                DatabaseConnection newDC = new DatabaseConnection(title, ip, port, user, password);

                Optional<String> resultDatabase = new DatabaseDialog(newDC).showAndWait();

                resultDatabase.ifPresent(database -> {
                    newDC.setDatabase(database);
                    Optional<String> resultSchema = new SchemaDialog(newDC).showAndWait();

                    resultSchema.ifPresent(schema -> {
                        newDC.setSchema(schema);
                        Optional<String> resultTable = new TableDialog(newDC).showAndWait();
                        resultTable.ifPresent(table -> {
                            newDC.setTable(table);
                            Optional<ArrayList<Pair<String, Pair<String, String>>>> resultJoins = new JoinTableDialog(newDC).showAndWait();
                            resultJoins.ifPresent(newDC::setJoins);
                            saveDatabase(newDC);

                        });
                    });
                });
            });
        });

        Button importFromExcelButton = new Button("Importer Excel");
        importFromExcelButton.setOnMouseClicked((MouseEvent event) -> {
            FileChooser fileChooser = new FileChooser(); // Fenetre windows parcourir les fichiers
            fileChooser.setTitle("Fichier Excel (.xlsx, .csv, .xls)");
            File file = fileChooser.showOpenDialog(null); // Envoie le fichier sélectionner dans File

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
                        DatabaseConnection newDC = new DatabaseConnection(title, "172.30.100.12", "5432", "admpostgres", "admpostgres", "bsd", "excel", title, null);

                        int headerRowNum = Integer.parseInt(res.get(1));
                        headerRowNum--;

                        int minRow = Integer.parseInt(res.get(2));
                        minRow--;

                        int maxRow = Integer.parseInt(res.get(3));

                        XSSFSheet sheet = wb.getSheet(res.get(4));


                        Row row = sheet.getRow(headerRowNum);
                        int maxCell = row.getLastCellNum();

                        PostGreSQL pgExcel = new PostGreSQL(newDC);

                        List<String> headers = new ArrayList<>();
                        row = sheet.getRow(headerRowNum);
                        for (int i = 0; i < maxCell; i++) {
                            Cell cell = row.getCell(i);
                            DataFormatter formatter = new DataFormatter();
                            String val = formatter.formatCellValue(cell);
                            headers.add(val);
                        }
                        pgExcel.createTableExcel(headers);

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
                                pgExcel.InsertRowInDB(rowValues);
                            } catch (SQLException | ClassNotFoundException e) {
                                e.printStackTrace();
                            }
                        }

                        saveDatabase(newDC);

                        pgExcel.deconnection();
                    });

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        });


        HBox buttonBox = new HBox();
        buttonBox.setSpacing(10);
        buttonBox.getChildren().addAll(newCoButton, importFromExcelButton);

        wrapperConnections = new VBox();
        wrapperConnections.setSpacing(10);
        ScrollPane scrollPane = new ScrollPane(wrapperConnections); // élément JavaFX permettant d'afficher les données sur une scroll
        scrollPane.setMaxWidth(300);
        scrollPane.setMaxHeight(50);

        for (String s : titles) {
            Text t = new Text(s);
            wrapperConnections.getChildren().add(t);
        }

        Button next = new Button("Suivant");
        next.setOnMouseClicked(event -> {
            Scene scene = new SameUselessScene(databaseConnection, profil);
            Main.getStage().setScene(scene);
        });

        wrapper.getChildren().addAll(titleScene, text, buttonBox, scrollPane, next);
        wrapper.setAlignment(Pos.CENTER);

        group.getChildren().add(wrapper);
    }


    private void saveDatabase(DatabaseConnection newDC){
        try {
            postGreSQL.insertConnection(newDC);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        titles.add(newDC.getTitle());
        Text t = new Text(newDC.getTitle());
        wrapperConnections.getChildren().add(t);
    }
}
