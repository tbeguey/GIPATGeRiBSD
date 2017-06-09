<?php
include "connexion.php";

$id = $_REQUEST['id'];
$type = $_REQUEST['type'];

$query = "INSERT INTO communs.correspondance (";

switch ($type){
    case "geoserver":
        $query .= "idgeoserver";
        break;
    case "geonetwork":
        $query .= "idgeonetwork";
        break;
    case "cartogip":
        $query .= "idcartogip";
        break;
    case "bsd":
        $query .= "idbsd";
        break;
}

$query .= ") VALUES ('" . $id . "') returning id";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo $row[0];
}

?>