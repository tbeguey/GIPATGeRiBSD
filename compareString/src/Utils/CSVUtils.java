package Utils;

import Element.DatabaseConnection;
import javafx.util.Pair;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;

public class CSVUtils {

    private static final char DEFAULT_SEPARATOR = ',';

    public static void writeLine(Writer w, ArrayList<String> values) throws IOException {
        writeLine(w, values, DEFAULT_SEPARATOR, ' ');
    }

    //https://tools.ietf.org/html/rfc4180
    private static String followCVSformat(String value) {

        String result = value;
        if (result.contains("\"")) {
            result = result.replace("\"", "\"\"");
        }
        return result;

    }

    public static void writeLine(Writer w, ArrayList<String> values, char separators, char customQuote) throws IOException {
        boolean first = true;

        //default customQuote is empty

        if (separators == ' ') {
            separators = DEFAULT_SEPARATOR;
        }

        StringBuilder sb = new StringBuilder();
        for (String value : values) {
            System.out.println(sb.toString());
            if (!first) {
                sb.append(separators);
            }
            if (customQuote == ' ') {
                sb.append(followCVSformat(value));
            }
            else {
                sb.append(customQuote).append(followCVSformat(value)).append(customQuote);
            }

            first = false;
        }
        sb.append("\n");
        w.append(sb.toString());
    }

    public static ArrayList<DatabaseConnection> readConnections(){
        ArrayList<DatabaseConnection> databaseConnections = new ArrayList<>();
        try {
            BufferedReader reader = new BufferedReader(new FileReader("connexion.csv"));
            String line = reader.readLine();
            while(line != null){
                String[] words = line.split("²");

                ArrayList<String> columns = new ArrayList<>();

                ArrayList<Pair<String, Pair<String, String>>> joins = new ArrayList<>();
                for (int i = 8; i < words.length; i+=3) {
                    Pair<String, String> pair = new Pair<>(words[i+1], words[i+2]);
                    Pair<String, Pair<String, String>> pairPair = new Pair<>(words[i], pair);
                    joins.add(pairPair);
                }

                DatabaseConnection databaseConnection = new DatabaseConnection(words[0], words[1], words[2], words[3], words[4], words[5], words[6], words[7], columns, joins);
                databaseConnections.add(databaseConnection);

                line = reader.readLine();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return databaseConnections;
    }

    public static XSSFWorkbook CSVtoXLS(File file){
        String name = file.getName();
        name = name.replaceAll(".csv", ".xlsx");

        XSSFWorkbook workbook = new XSSFWorkbook();
        XSSFSheet sheet = workbook.createSheet("Feuille1");
        String currentLine = null;
        int RowNum = 0;
        try {
            Charset charset = Charset.forName("ISO-8859-1");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
            while ((currentLine = bufferedReader.readLine()) != null){
                String str[] = currentLine.split(";");
                XSSFRow currentRow = sheet.createRow(RowNum);
                for (int i = 0; i < str.length; i++) {
                    currentRow.createCell(i).setCellValue(str[i]);
                }
                RowNum++;
            }

            FileOutputStream fileOutputStream = new FileOutputStream(name);
            workbook.write(fileOutputStream);
            fileOutputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return workbook;
    }

    public static ArrayList<String> readUseless(){
        ArrayList<String> useless = new ArrayList<>();
        try {
            BufferedReader reader = new BufferedReader(new FileReader("useless.csv"));
            String line = reader.readLine();
            String[] words = line.split(";");
            Collections.addAll(useless, words);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }



        return useless;
    }

}