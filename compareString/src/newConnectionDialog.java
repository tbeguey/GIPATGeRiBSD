import javafx.scene.control.*;
import javafx.scene.layout.VBox;

import java.util.ArrayList;

public class newConnectionDialog extends Dialog<ArrayList<String>> {

    public newConnectionDialog(){
        setTitle("Configurer une nouvelle connexion à une base de donnée");
        DialogPane dialogPane = getDialogPane();
        dialogPane.setPrefWidth(800);

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);

        TextField title = new TextField();
        title.setPromptText("Titre que vous souhaitez");

        TextField ip = new TextField();
        ip.setPromptText("Adresse ip");

        TextField port = new TextField();
        port.setPromptText("Port");

        TextField user = new TextField();
        user.setPromptText("Nom d'utilisateur");

        PasswordField password = new PasswordField();
        password.setPromptText("Mot de passe");

        TextField database = new TextField();
        database.setPromptText("Nom de la base");

        TextField schema = new TextField();
        schema.setPromptText("Nom du schéma");

        TextField query = new TextField();
        query.setPromptText("La requête de selection (titre en premier, suivi de l'id)");

        wrapper.getChildren().addAll(title, ip, port, user, password, database, schema, query);
        dialogPane.setContent(wrapper);

        ButtonType okButtonType = new ButtonType("Suivant", ButtonBar.ButtonData.OK_DONE);
        dialogPane.getButtonTypes().addAll(okButtonType, ButtonType.CANCEL);

        setResultConverter((ButtonType dialogButton) -> {
            ArrayList<String> arrayList = new ArrayList<>();

            arrayList.add(title.getText());
            arrayList.add(ip.getText());
            arrayList.add(port.getText());
            arrayList.add(user.getText());
            arrayList.add(password.getText());
            arrayList.add(database.getText());
            arrayList.add(schema.getText());
            arrayList.add(query.getText());

            return arrayList;
            });
        }

}
