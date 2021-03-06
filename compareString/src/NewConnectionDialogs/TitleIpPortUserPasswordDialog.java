package NewConnectionDialogs;

import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;

import java.util.ArrayList;

/**
 * Boite de dialogue pour remplir le titre, ip, permettant de connecter.
 * Retourne un ArrayList comportant les éléments de connection.
 */
public class TitleIpPortUserPasswordDialog extends Dialog<ArrayList<String>> {

    public TitleIpPortUserPasswordDialog(){
        setTitle("Configurer une nouvelle connexion à une base de donnée");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(400);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        Text text = new Text("Veuillez s'il-vous-plait renseigner le titre que vous souhaitez, une IP, le port, le nom d'utlisateur \n" +
                "et mot de passe afin de se connecter à la base de donnée");

        TextField title = new TextField();
        title.setPromptText("Titre que vous souhaitez");

        TextField ip = new TextField();
        ip.setPromptText("Adresse ip");
        ip.setText("172.30.100.12");

        TextField port = new TextField();
        port.setPromptText("Port");
        port.setText("5432");

        TextField user = new TextField();
        user.setPromptText("Nom d'utilisateur");
        user.setText("admpostgres");

        PasswordField password = new PasswordField();
        password.setPromptText("Mot de passe");
        password.setText("admpostgres");

        wrapper.getChildren().addAll(text, title, ip, port, user, password);
        dialogPane.setContent(wrapper);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);


        setResultConverter((ButtonType dialogButton) -> {
            ArrayList<String> arrayList = new ArrayList<>();

            if(dialogButton == okButtonType) {
                arrayList.add(title.getText());
                arrayList.add(ip.getText());
                arrayList.add(port.getText());
                arrayList.add(user.getText());
                arrayList.add(password.getText());

                return arrayList;
            }
            else
                return null;

            });
        }

}
