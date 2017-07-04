package sample;

import javafx.scene.control.Alert;

public class WarningDialog extends Alert {

    public WarningDialog(String title, String content){
        super(AlertType.CONFIRMATION);
        setResizable(false);
        setTitle(title);
        setHeaderText("Attention !");
        setContentText(content);
    }
}
