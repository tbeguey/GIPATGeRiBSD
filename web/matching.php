<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<script type="text/javascript" src="script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<table>
<?php
include "connexion.php";

$idCorrespondance = $_GET['Code'];

$query = "select geoserver_xml.title, metadata.title, couche.titre, type_donnees_echange.titre, idcouche, uuid, couche.id, type_donnees_echange.id
from communs.correspondance
left outer join geoserver.geoserver_xml on idgeoserver = idcouche
left outer join geonetwork.metadata on idgeonetwork = uuid
left outer join cartogip.couche on idcartogip = couche.id
left outer join bsd.type_donnees_echange on idbsd = type_donnees_echange.id
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
    echo "<input type='button' value='Accueil' onClick='document.location.href=&quot;index.php&quot;' />";
}
?>

