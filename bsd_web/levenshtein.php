<?php
include "connexion.php";

$idCorrespondance = $_REQUEST['idCorrespondance'];
$type = $_REQUEST['id'];

$titleGeoserver = null;
$titleGeonetwork = null;
$titleCartogip = null;
$titleBSD = null;
$proposition = array();

$query = "select geoserver_xml.title, metadata.title, couche.nom_couche, type_donnees_echange.type_donnees_echange_libelle
from communs.correspondance
left outer join geoserver.geoserver_xml on correspondance.idgeoserver_xml = geoserver_xml.idcouche
left outer join geonetwork.metadata on idmetadata = uuid
left outer join cartogip.couche on correspondance.idcouche = couche.id_couche
left outer join bsd.pigma_donnees_a_dispo on id_donnee = idpigma_donnees_a_dispo
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
left outer join bsd.entreprise_contact on id_entreprise = no_entreprise
where correspondance.id = " . $idCorrespondance;

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)) {
    $titleGeoserver = $row[0];
    $titleGeonetwork = $row[1];
    $titleCartogip = $row[2];
    $titleBSD = $row[3];

    $titleGeoserver = str_ireplace("'", "&apos;", $titleGeoserver);
    $titleGeonetwork = str_ireplace("'", "&apos;", $titleGeonetwork);
    $titleCartogip = str_ireplace("'", "&apos;", $titleCartogip);
    $titleBSD = str_ireplace("'", "&apos;", $titleBSD);
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
        $query .= "nom_couche, '";
        if($titleGeoserver != null)
            $query .= $titleGeoserver;
        else if($titleGeonetwork != null)
            $query .= $titleGeonetwork;
        else
            $query .= $titleBSD;
        $query .= "') as l, nom_couche, id_couche from cartogip.couche";
        break;
    case "bsd":
        $query .= "type_donnees_echange_libelle, '";
        if($titleGeoserver != null)
            $query .= $titleGeoserver;
        else if($titleGeonetwork != null)
            $query .= $titleGeonetwork;
        else
            $query .= $titleCartogip;
        $query .= "') as l, type_donnees_echange_libelle, pigma_donnees_a_dispo.id_donnee from bsd.pigma_donnees_a_dispo left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange";
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