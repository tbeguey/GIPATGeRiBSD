package Utils;

import Element.DatabaseConnection;
import javafx.util.Pair;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

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

                int index = words.length;
                ArrayList<String> columns = new ArrayList<>();
                for (int i = 8; i < words.length; i++) {
                    if(words[i].equals("separator")){
                        index = i+1;
                        break;
                    }
                    columns.add(words[i]);
                }

                ArrayList<Pair<String, Pair<String, String>>> joins = new ArrayList<>();
                for (int i = index; i < words.length; i+=3) {
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

}