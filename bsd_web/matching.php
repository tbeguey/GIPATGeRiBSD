<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<script type="text/javascript" src="script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<table>
<?php
include "connexion.php";

$idCorrespondance = $_GET['Code'];

$query = "select geoserver_xml.title, metadata.title, couche.nom_couche, type_donnees_echange.type_donnees_echange_libelle, geoserver_xml.idcouche, uuid, couche.id_couche, type_donnees_echange.no_type_donnees_echange
from communs.correspondance
left outer join geoserver.geoserver_xml on correspondance.idgeoserver_xml = geoserver_xml.idcouche
left outer join geonetwork.metadata on idmetadata = uuid
left outer join cartogip.couche on correspondance.idcouche = couche.id_couche
left outer join bsd.pigma_donnees_a_dispo on id_donnee = idpigma_donnees_a_dispo
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
left outer join bsd.entreprise_contact on id_entreprise = no_entreprise
where correspondance.id = " . $idCorrespondance;

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    $titleGeoserver = $row[0];
    $titleGeonetwork = $row[1];
    $titleCartogip = $row[2];
    $titleBSD = $row[3];

    $idGeoserver = $row[4];
    $idGeonetwork = $row[5];
    $idCartogip = $row[6];
    $idBSD = $row[7];

    $titleGeoserver = str_ireplace("'", "&apos;", $titleGeoserver);
    $titleGeonetwork = str_ireplace("'", "&apos;", $titleGeonetwork);
    $titleCartogip = str_ireplace("'", "&apos;", $titleCartogip);
    $titleBSD = str_ireplace("'", "&apos;", $titleBSD);

    echo '<tr>';
        echo '<td>Geoserver</td>';
        echo '<td>Geonetwork</td>';
    echo '</tr>';

    echo '<tr>';
        if($titleGeoserver != null){
            echo '<td id="geoserver" class="green">';
                echo '<script type="text/javascript"> validate("geoserver", "' . $titleGeoserver . '", "' .$idCorrespondance . '") </script>';
            echo'</td>';
        }
        else{
            echo '<td id="geoserver" class="red">';
                echo '<script type="text/javascript"> cancel("geoserver", "' .$idCorrespondance . '") </script>';
            echo'</td>';
        }
        if($titleGeonetwork != null){
            echo '<td id="geonetwork" class="green">';
                echo '<script type="text/javascript"> validate("geonetwork", "' . $titleGeonetwork . '", "' .$idCorrespondance . '") </script>';
            echo'</td>';
        }
        else{
            echo '<td id="geonetwork" class="red">';
                echo '<script type="text/javascript"> cancel("geonetwork", "' .$idCorrespondance . '") </script>';
            echo'</td>';
        }
    echo '</tr>';

    echo '<tr>';
        echo '<td>Cartogip</td>';
        echo '<td>BSD</td>';
    echo '</tr>';

    echo '<tr>';
        if($titleCartogip != null){
            echo '<td id="cartogip" class="green">';
                echo '<script type="text/javascript"> validate("cartogip", "' . $titleCartogip . '", "' .$idCorrespondance . '") </script>';
            echo'</td>';
        }
        else{
            echo '<td id="cartogip" class="red">';
                echo '<script type="text/javascript"> cancel("cartogip", "' .$idCorrespondance . '") </script>';
            echo'</td>';
        }
        if($titleBSD != null){
            echo '<td id="bsd" class="green">';
                echo '<script type="text/javascript"> validate("bsd", "' . $titleBSD . '", "' .$idCorrespondance . '") </script>';
            echo'</td>';
        }
        else{
            echo '<td id="bsd" class="red">';
                echo '<script type="text/javascript"> cancel("bsd", "' .$idCorrespondance . '") </script>';
            echo'</td>';
        }
    echo '</tr>';

    echo '</table>';

    echo "<input type='button' value='Valider' onClick='update_matching($idCorrespondance)' />";
    echo "<input type='button' value='Supprimer' onClick='delete_matching($idCorrespondance)' />";
    echo "<input type='button' value='Annuler' onClick='document.location.href=&quot;index.php&quot;' />";
}
?>

