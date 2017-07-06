package sample;

import javafx.concurrent.Task;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.layout.VBox;
import javafx.stage.DirectoryChooser;

import java.io.File;
import java.util.Optional;

public class MyScene extends Scene{

    public MyScene() {
        super(new Group(), Main.WIDTH, Main.HEIGHT);

        Group group = (Group) getRoot();

        VBox wrapper = new VBox();
        wrapper.setSpacing(10);
        wrapper.setAlignment(Pos.CENTER);
        wrapper.setPadding(new Insets(20,0,0,100));

        Button buttonGeonetwork = new Button("Geonetwork");
        buttonGeonetwork.setPrefWidth(100);
        buttonGeonetwork.setOnMouseClicked(event -> {
            WarningDialog warningDialog = new WarningDialog("Geonetwork", "Avez vous au préalable lancer le script FME permettant la réalimentation des données ?");
            Optional<ButtonType> result = warningDialog.showAndWait();

            if(result.get() == ButtonType.OK) {

                Task task = new Task<Void>() {
                    @Override
                    protected Void call() throws Exception {
                        PostgreSQL postGreSQL = new PostgreSQL();
                        postGreSQL.connection("172.30.100.12:5432/bsd", "admpostgres", "admpostgres");
                        postGreSQL.createTableGeonetwork("geonetwork.metadata");

                        String[] paths = {"(xpath('/gmd:MD_Metadata/gmd:fileIdentifier/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}}'))[1]::text as uuid,\n" +
                                "(xpath('/gmd:MD_Metadata/gmd:identificationInfo/fra:FRA_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}, {fra,http://www.cnig.gouv.fr/2005/fra}}'))[1]::text as title,\n",
                                "(xpath('/gmd:MD_Metadata/gmd:fileIdentifier/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}}'))[1]::text as uuid,\n" +
                                        "(xpath('/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}}'))[1]::text as title,\n",
                                "(xpath('/gmd:MD_Metadata/gmd:fileIdentifier/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}}'))[1]::text as uuid,\n" +
                                        "(xpath('/gmd:MD_Metadata/gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco, http://www.isotc211.org/2005/gco}, {srv, http://www.isotc211.org/2005/srv} }'))[1]::text as title,\n",
                                "(xpath('/Metadata/mdFileID/text()', data::xml))[1]::text as uuid,\n" +
                                        "(xpath('/Metadata/dataIdInfo/idCitation/resTitle/text()', data::xml))[1]::text as title,",
                                "(xpath('/gfc:FC_FeatureCatalogue/@uuid', data::xml, '{{gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as uuid,\n" +
                                        "(xpath('/gfc:FC_FeatureCatalogue/gfc:name/gco:CharacterString/text()', data::xml, '{{gco, http://www.isotc211.org/2005/gco}, {gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as title,\n",
                                "(xpath('/gfc:FC_FeatureCatalogue/@uuid', data::xml, '{{gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as uuid,\n" +
                                        "(xpath('/gfc:FC_FeatureCatalogue/gmx:name/gco:CharacterString/text()', data::xml, '{{gco, http://www.isotc211.org/2005/gco}, {gfc, http://www.isotc211.org/2005/gfc}, {gmx, http://www.isotc211.org/2005/gmx}}'))[1]::text as title,\n",
                                "'INDISPONIBLE' as uuid,\n" +
                                        "(xpath('/gfc:FC_FeatureCatalogue/gfc:name/gco:CharacterString/text()', data::xml, '{{gco, http://www.isotc211.org/2005/gco}, {gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as title,\n",
                                "(xpath('/gfc:FC_FeatureCatalogue/@uuid', data::xml, '{{gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as uuid,\n" +
                                        "'INDISPONIBLE' as title,\n"};

                        for (String path : paths) {
                            System.out.println("PATH SUIVANT");
                            postGreSQL.getLinesOnInitGeonetwork(path);
                        }

                        postGreSQL.getLinesOnFinalGeonetwork();
                        postGreSQL.deleteLinesOnFinalGeonetwork();
                        postGreSQL.insertLineGeonetwork("geonetwork.metadata");
                        postGreSQL.dropTable("geonetwork.metadata_init");
                        postGreSQL.deconnection();

                        return null;
                    }
                };
                new Thread(task).start();
                task.setOnSucceeded(event1 -> {
                    WarningDialog finishDialog = new WarningDialog("Geonetwork");
                    finishDialog.showAndWait();
                });
            }
        });

        Button buttonGeoserver = new Button("Geoserver");
        buttonGeoserver.setPrefWidth(100);
        buttonGeoserver.setOnMouseClicked(event -> {
            DirectoryChooser directoryChooser = new DirectoryChooser();
            directoryChooser.setTitle("Dossier Geoserver");
            File root = directoryChooser.showDialog(null);

                Task task = new Task<Void>() {
                    @Override
                    protected Void call() throws Exception {

                        PostgreSQL postGreSQL = new PostgreSQL(); // On créer un objet de type PostGreSQL (classe que j'ai créer)
                        postGreSQL.connection("172.30.100.12:5432/bsd", "admpostgres", "admpostgres");
                        postGreSQL.createTableGeoserver("geoserver.geoserver_xml_init"); // On la recrée si elle existe pas

                        Utils.listeRepertoire(root, postGreSQL); // On parcourt les fichiers

                        postGreSQL.getLinesOnFinalGeoserver(); // récupere les lignes déja présentes

                        postGreSQL.deleteLinesOnFinalGeoserver(); // supprime celle qui n'y sont plus

                        postGreSQL.insertOrUpdateLinesGeoserver(); // ajoute ou modifie les autres

                        postGreSQL.dropTable("geoserver.geoserver_xml_init");
                        postGreSQL.deconnection(); // On se déconnecte

                        return null;
                    }
                };
                new Thread(task).start();
                task.setOnSucceeded(event1 -> {
                    WarningDialog finishDialog = new WarningDialog("Geoserver");
                    finishDialog.showAndWait();
                });
        });

        Button buttonCartogip = new Button("Cartogip");
        buttonCartogip.setPrefWidth(100);
        buttonCartogip.setOnMouseClicked(event -> {
            WarningDialog warningDialog = new WarningDialog("Cartogip", "Avez vous au préalable lancer le script FME permettant la réalimentation des données ?");
            Optional<ButtonType> result = warningDialog.showAndWait();

            if(result.get() == ButtonType.OK) {
                Task task = new Task<Void>() {
                    @Override
                    protected Void call() throws Exception {

                        PostgreSQL postgreSQL = new PostgreSQL();
                        postgreSQL.connection("172.30.100.12:5432/bsd", "admpostgres", "admpostgres");
                        postgreSQL.getLinesOnInitCartogip("cartogip.couche_init", "id_couche", "couche_libelle", "couche_schema");
                        postgreSQL.getLinesOnFinalCartogip("cartogip.couche");
                        postgreSQL.deleteLinesOnFinalCartogip("idcartogip", "cartogip.couche");
                        postgreSQL.insertOrUpdateLinesCartogip("cartogip.couche");
                        postgreSQL.dropTable("cartogip.couche_init");
                        postgreSQL.deconnection();

                        return null;
                    }
                };
                new Thread(task).start();
                task.setOnSucceeded(event1 -> {
                    WarningDialog finishDialog = new WarningDialog("Cartogip");
                    finishDialog.showAndWait();
                });
            }
        });

        Button buttonBSD = new Button("BSD");
        buttonBSD.setPrefWidth(100);
        buttonBSD.setOnMouseClicked(event -> {
            WarningDialog warningDialog = new WarningDialog("BSD", "Avez vous au préalable lancer le script FME permettant la réalimentation des données ?");
            Optional<ButtonType> result = warningDialog.showAndWait();

            if(result.get() == ButtonType.OK){
                Task task = new Task<Void>() {
                    @Override
                    protected Void call() throws Exception {

                        PostgreSQL postgreSQL = new PostgreSQL();
                        postgreSQL.connection("172.30.100.12:5432/bsd", "admpostgres", "admpostgres");
                        postgreSQL.getLinesOnInitBSD("bsd.type_donnees_echange_init", "no_type_donnees_echange", "type_donnees_echange_libelle");
                        postgreSQL.getLinesOnFinalBSD("bsd.type_donnees_echange");
                        postgreSQL.deleteLinesOnFinalBSD("idbsd", "bsd.type_donnees_echange");
                        postgreSQL.insertOrUpdateLinesBSD("bsd.type_donnees_echange");
                        postgreSQL.dropTable("bsd.type_donnees_echange_init");
                        postgreSQL.deconnection();

                        return null;
                    }
                };
                new Thread(task).start();
                task.setOnSucceeded(event1 -> {
                    WarningDialog finishDialog = new WarningDialog("BSD");
                    finishDialog.showAndWait();
                });
            }
        });

        wrapper.getChildren().addAll(buttonGeonetwork, buttonGeoserver, buttonCartogip, buttonBSD);

        group.getChildren().add(wrapper);
    }
}
