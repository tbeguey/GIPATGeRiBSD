<?php
include "connexion.php";

$titreGeoserver = $_REQUEST['titregeoserver'];
$titreGeonetwork = $_REQUEST['titregeonetwork'];
$titreCartogip = $_REQUEST['titrecartogip'];
$titreBSD = $_REQUEST['titrebsd'];
$idCorrespondance = $_REQUEST['idCorrespondance'];

$updateQuery = "UPDATE communs.correspondance SET ";
$modif = false;

if($titreGeoserver != null){
    $query = "SELECT idcouche from geoserver.geoserver_xml where title = '" . $titreGeoserver . "';";
    $result = pg_query($db_connecter, $query);

    while($row = pg_fetch_row($result)){
       $idGeoserver = $row[0];
    }

    $modif = true;
    $updateQuery .= "idgeoserver = '" . $idGeoserver . "'";
}
else
    $idGeoserver = null;

//echo $idGeoserver;

if($titreGeonetwork != null){
    $query = "SELECT uuid from geonetwork.metadata where title = '" . $titreGeonetwork . "';";
    $result = pg_query($db_connecter, $query);

    while($row = pg_fetch_row($result)){
        $idGeonetwork = $row[0];
    }

    if($modif)
        $updateQuery .= ", ";

    $updateQuery .= "idgeonetwork = '" . $idGeonetwork . "'";

    $modif = true;
}
else
    $idGeonetwork = null;

//echo $idGeonetwork;

if($titreCartogip != null){
    $query = "SELECT id from cartogip.couche where titre = '" . $titreCartogip . "';";
    $result = pg_query($db_connecter, $query);

    while($row = pg_fetch_row($result)){
        $idCartogip = $row[0];
    }

    if($modif)
        $updateQuery .= ", ";

    $updateQuery .= "idcartogip = '" . $idCartogip . "'";

    $modif = true;
}
else
    $idCartogip = null;

//echo $idCartogip;

if($titreBSD != null){
    $query = "SELECT id from bsd.type_donnees_echange where titre = '" . $titreBSD . "';";
    $result = pg_query($db_connecter, $query);

    while($row = pg_fetch_row($result)){
        $idBSD = $row[0];
    }

    if($modif)
        $updateQuery .= ", ";

    $updateQuery .= "idbsd = '" . $idBSD . "'";

    $modif = true;
}
else
    $idBSD = null;

//echo $idBSD;

if($modif)
    $updateQuery .= ", ";

$updateQuery .=  "date_derniere_modification = current_date where correspondance.id = " . $idCorrespondance;

//echo $updateQuery;

pg_query($db_connecter, $updateQuery);
?>