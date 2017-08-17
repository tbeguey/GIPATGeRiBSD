package Utils;

import Element.DatabaseConnection;
import javafx.util.Pair;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.*;

public class CSVUtils {

    private static final char DEFAULT_SEPARATOR = ',';

    public static void writeLine(Writer w, ArrayList<String> values) throws IOException {
        writeLine(w, values, DEFAULT_SEPARATOR, ' ');
    }

    //https://tools.ietf.org/html/rfc4180
    private static String followCVSformat(String value) {

        String result = value;
        if(result != null) {
            if (result.contains("\"")) {
                result = result.replace("\"", "\"\"");
            }
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
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(new Utils().connexionPath), StandardCharsets.UTF_8));
            String line = reader.readLine();
            while(line != null){
                String[] words = line.split("²");

                ArrayList<Pair<String, Pair<String, String>>> joins = new ArrayList<>();
                for (int i = 8; i < words.length; i+=3) {
                    Pair<String, String> pair = new Pair<>(words[i+1].toLowerCase(), words[i+2].toLowerCase());
                    Pair<String, Pair<String, String>> pairPair = new Pair<>(words[i].toLowerCase(), pair);
                    joins.add(pairPair);
                }

                DatabaseConnection databaseConnection = new DatabaseConnection(words[0], words[1], words[2], words[3], words[4], words[5], words[6], words[7], joins);
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

    public static XSSFWorkbook CSVtoXLSX(File file){
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

    public static XSSFWorkbook XLStoXLSX(File file) throws IOException {
        String name = file.getName();
        name += "x";

        InputStream in = new BufferedInputStream(new FileInputStream(file));
        try {
            Workbook wbIn = new HSSFWorkbook(in);
            File outF = new File(name);
            if (outF.exists())
                outF.delete();

            XSSFWorkbook wbOut = new XSSFWorkbook();
            int sheetCnt = wbIn.getNumberOfSheets();
            for (int i = 0; i < sheetCnt; i++) {
                Sheet sIn = wbIn.getSheetAt(i);
                Sheet sOut = wbOut.createSheet(sIn.getSheetName());
                Iterator<Row> rowIt = sIn.rowIterator();
                while (rowIt.hasNext()) {
                    Row rowIn = rowIt.next();
                    Row rowOut = sOut.createRow(rowIn.getRowNum());

                    Iterator<Cell> cellIt = rowIn.cellIterator();
                    while (cellIt.hasNext()) {
                        Cell cellIn = cellIt.next();
                        Cell cellOut = rowOut.createCell(
                                cellIn.getColumnIndex(), cellIn.getCellType());

                        switch (cellIn.getCellType()) {
                            case Cell.CELL_TYPE_BLANK:
                                break;

                            case Cell.CELL_TYPE_BOOLEAN:
                                cellOut.setCellValue(cellIn.getBooleanCellValue());
                                break;

                            case Cell.CELL_TYPE_ERROR:
                                cellOut.setCellValue(cellIn.getErrorCellValue());
                                break;

                            case Cell.CELL_TYPE_FORMULA:
                                cellOut.setCellFormula(cellIn.getCellFormula());
                                break;

                            case Cell.CELL_TYPE_NUMERIC:
                                cellOut.setCellValue(cellIn.getNumericCellValue());
                                break;

                            case Cell.CELL_TYPE_STRING:
                                cellOut.setCellValue(cellIn.getStringCellValue());
                                break;
                        }

                        {
                            CellStyle styleIn = cellIn.getCellStyle();
                            CellStyle styleOut = cellOut.getCellStyle();
                            styleOut.setDataFormat(styleIn.getDataFormat());
                        }
                        cellOut.setCellComment(cellIn.getCellComment());

                        // HSSFCellStyle cannot be cast to XSSFCellStyle
                        // cellOut.setCellStyle(cellIn.getCellStyle());
                    }
                }
            }
            OutputStream out = new BufferedOutputStream(new FileOutputStream(outF));
            try {
                wbOut.write(out);
            } finally {
                out.close();
            }
            return wbOut;
        } finally {
            in.close();
        }
    }

    public static ArrayList<String> readUseless(){
        ArrayList<String> useless = new ArrayList<>();
        try {
            BufferedReader reader = new BufferedReader(new FileReader(new Utils().uselessPath));
            String line = reader.readLine();
            String[] words = line.split(";");
            for (String s : words) {
                useless.add(s.toLowerCase());
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }



        return useless;
    }

    public static Map<String, ArrayList<String>> readSame(){
        Map<String, ArrayList<String>> map = new HashMap<>();

        try {
            String currentLine;
            Charset charset = Charset.forName("ISO-8859-1");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new Utils().samePath), charset));
            while ((currentLine = bufferedReader.readLine()) != null){
                String str[] = currentLine.split(";");
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i=1; i<str.length;i++)
                    arrayList.add(str[i].toLowerCase());
                map.put(str[0], arrayList);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return map;
    }

}