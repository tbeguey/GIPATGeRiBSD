<?php
include "connexion.php";

$id = $_REQUEST['id'];
$type = $_REQUEST['type'];

$query = "INSERT INTO communs.correspondance (";

switch ($type){
    case "geoserver":
        $query .= "idgeoserver_xml";
        break;
    case "geonetwork":
        $query .= "idmetadata";
        break;
    case "cartogip":
        $query .= "idcouche";
        break;
    case "bsd":
        $query .= "idpigma_donnees_a_dispo";
        break;
}

$query .= ") VALUES ('" . $id . "') returning id";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo $row[0];
}

?>