<?php
include "connexion.php";

$idCorrespondance = $_REQUEST['idCorrespondance'];
$type = $_REQUEST['id'];

$titleGeoserver = null;
$titleGeonetwork = null;
$titleCartogip = null;
$titleBSD = null;
$proposition = array();

$query = "select geoserver_xml.title, metadata.title, couche.titre, type_donnees_echange.titre
from communs.correspondance
left outer join geoserver.geoserver_xml on idgeoserver = idcouche
left outer join geonetwork.metadata on idgeonetwork = uuid
left outer join cartogip.couche on idcartogip = couche.id
left outer join bsd.type_donnees_echange on idbsd = type_donnees_echange.id
where correspondance.id = '" . $idCorrespondance ."';";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)) {
    $titleGeoserver = $row[0];
    $titleGeonetwork = $row[1];
    $titleCartogip = $row[2];
    $titleBSD = $row[3];
}

$query = "select levenshtein(";
switch ($type){
    case "geoserver":
        $query .= "title, '";
        if($titleGeonetwork != null)
            $query .= $titleGeonetwork;
        else if($titleCartogip != null)
            $query .= $titleCartogip;
        else
            $query .= $titleBSD;
        $query .= "') as l, title, idcouche from geoserver.geoserver_xml";
            break;
    case "geonetwork":
        $query .= "title, '";
        if($titleGeoserver != null)
            $query .= $titleGeoserver;
        else if($titleCartogip != null)
            $query .= $titleCartogip;
        else
            $query .= $titleBSD;
        $query .= "') as l, title, uuid from geonetwork.metadata";
        break;
    case "cartogip":
        $query .= "titre, '";
        if($titleGeoserver != null)
            $query .= $titleGeoserver;
        else if($titleGeonetwork != null)
            $query .= $titleGeonetwork;
        else
            $query .= $titleBSD;
        $query .= "') as l, titre, id from cartogip.couche";
        break;
    case "bsd":
        $query .= "titre, '";
        if($titleGeoserver != null)
            $query .= $titleGeoserver;
        else if($titleGeonetwork != null)
            $query .= $titleGeonetwork;
        else
            $query .= $titleCartogip;
        $query .= "') as l, titre, id from bsd.type_donnees_echange";
        break;
}
$query .= " order by l
            limit 1;";


$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)) {
    array_push($proposition, $row[1]);
    array_push($proposition, $row[2]);
}
echo json_encode($proposition);

?>