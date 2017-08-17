package View;

import Element.StringCompared;
import Utils.*;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.util.Pair;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Map;
import java.util.Optional;

public class NewSameDialog extends Dialog {

    private ObservableList<String> options;

    public NewSameDialog(){
        setTitle("Similitude à ajouter");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        ArrayList<String> arrayListOptions = new ArrayList<>();
        for (Map.Entry<String, ArrayList<String>> entry : StringCompared.getSame().entrySet()){
            arrayListOptions.add(entry.getKey());
        }

        options = FXCollections.observableArrayList(
                arrayListOptions
        );

       ComboBox comboBox = new ComboBox(options);
       comboBox.getSelectionModel().selectFirst();

       Button newSameKey = new Button("+");
       newSameKey.setOnMouseClicked(event -> {
           Optional<String> result = new TextFieldDialog("Clé de similitude à ajouter").showAndWait();
           result.ifPresent(res -> {
               StringCompared.getSame().put(res, new ArrayList<>());
               arrayListOptions.add(res);
               options = FXCollections.observableArrayList(arrayListOptions);
               comboBox.setItems(options);
               comboBox.getSelectionModel().selectLast();
           });
       });

        HBox keyBox = new HBox();
        keyBox.setSpacing(10);
        keyBox.getChildren().addAll(comboBox, newSameKey);

        TextField textField = new TextField();
        textField.setPromptText("Mot semblable");
        textField.setPrefWidth(300);

        Button add = new Button("Ajouter");
        add.setOnMouseClicked(event -> {
            boolean present = false;
            for (Map.Entry<String, ArrayList<String>> entry : StringCompared.getSame().entrySet()){
                for (String s : entry.getValue()){
                    if (textField.getText().equals(s))
                        present = true;
                }
            }

            if(!present){
                StringCompared.getSame().get(comboBox.getValue()).add(textField.getText());

                try {
                    OutputStreamWriter writer = new OutputStreamWriter(
                            new FileOutputStream(new Utils().samePath),
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
                alert.setContentText("Le mot '" + textField.getText() + "' fait déja parti d'une liste");
                alert.showAndWait();
            }

        });

        HBox valueBox = new HBox();
        valueBox.setSpacing(10);
        valueBox.getChildren().addAll(textField, add);

        wrapper.setAlignment(Pos.CENTER);

        wrapper.getChildren().addAll(keyBox, valueBox);
        dialogPane.setContent(wrapper);

        dialogPane.getButtonTypes().addAll(ButtonType.CLOSE);
    }
}
