package View;

import Element.StringCompared;
import Utils.*;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;


public class NewUselessDialog extends Dialog<String>{


    public NewUselessDialog(){
        setTitle("Mot inutile à ajouter");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        HBox hBox = new HBox();
        hBox.setSpacing(10);

        TextField textField = new TextField();
        textField.setPromptText("Mot inutile à ajouter");
        textField.setPrefWidth(300);

        Button add = new Button("Ajouter");
        add.setOnMouseClicked(event -> {
            if(!StringCompared.getUseless().contains(textField.getText())){
                StringCompared.getUseless().add(textField.getText());

                try {
                    OutputStreamWriter writer = new OutputStreamWriter(
                            new FileOutputStream(new Utils().uselessPath),
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
                alert.setContentText("Le mot '" + textField.getText() + "' fait déja parti de cette liste");
                alert.showAndWait();
            }
        });

        hBox.getChildren().addAll(textField, add);

        wrapper.setAlignment(Pos.CENTER);

        wrapper.getChildren().add(hBox);
        dialogPane.setContent(wrapper);

        dialogPane.getButtonTypes().addAll(ButtonType.CLOSE);
    }
}
