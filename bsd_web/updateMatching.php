<?php
include "connexion.php";

$titreGeoserver = $_REQUEST['titregeoserver'];
$titreGeonetwork = $_REQUEST['titregeonetwork'];
$titreCartogip = $_REQUEST['titrecartogip'];
$titreBSD = $_REQUEST['titrebsd'];
$idCorrespondance = $_REQUEST['idCorrespondance'];

$updateQuery = "UPDATE communs.correspondance SET ";

if($titreGeoserver != null){
    $query = "SELECT idcouche from geoserver.geoserver_xml where title = '" . $titreGeoserver . "';";
    $result = pg_query($db_connecter, $query);

    while($row = pg_fetch_row($result)){
       $idGeoserver = $row[0];
    }

    $updateQuery .= "idgeoserver_xml = '" . $idGeoserver . "'";
}
else
    $updateQuery .= "idgeoserver_xml = null";

$updateQuery .= ", ";

if($titreGeonetwork != null){
    $query = "SELECT uuid from geonetwork.metadata where title = '" . $titreGeonetwork . "';";
    $result = pg_query($db_connecter, $query);

    while($row = pg_fetch_row($result)){
        $idGeonetwork = $row[0];
    }

    $updateQuery .= "idmetadata = '" . $idGeonetwork . "'";

}
else
    $updateQuery .= "idmetadata = null";

$updateQuery .= ", ";

if($titreCartogip != null){
    $query = "SELECT id_couche from cartogip.couche where nom_couche = '" . $titreCartogip . "';";
    $result = pg_query($db_connecter, $query);

    while($row = pg_fetch_row($result)){
        $idCartogip = $row[0];
    }

    $updateQuery .= "idcouche = '" . $idCartogip . "'";

}
else
    $updateQuery .= "idcouche = null";

$updateQuery .= ", ";

if($titreBSD != null){
    $query = "SELECT no_type_donnees_echange from bsd.pigma_donnees_a_dispo left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange where type_donnees_echange_libelle = '" . $titreBSD . "';";
    $result = pg_query($db_connecter, $query);

    while($row = pg_fetch_row($result)){
        $idBSD = $row[0];
    }


    $updateQuery .= "idpigma_donnees_a_dispo = '" . $idBSD . "'";

}
else
    $updateQuery .= "idpigma_donnees_a_dispo = null";

$updateQuery .= ", ";

$updateQuery .=  "date_derniere_modification = current_date where correspondance.id = " . $idCorrespondance;

echo $updateQuery;

pg_query($db_connecter, $updateQuery);
?>