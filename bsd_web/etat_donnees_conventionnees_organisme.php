<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<script type="text/javascript" src="script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<html>
<table >
    <thead>
    <tr>
        <th>Organisme</th>
        <th>Titre</th>
        <th>Conventionnée</th>
        <th>Cataloguée (PIGMA)</th>
        <th>Publiée (PIGMA)</th>
        <th>Cartogip</th>
    </tr>
    </thead>
    <tbody>
<?php
include "connexion.php";

$query = "select entreprise, type_donnees_echange.type_donnees_echange_libelle, conventionnee, exists(select 1 from geonetwork.metadata where uuid = idmetadata) as catalog, exists(select 1 from geoserver.geoserver_xml where idcouche = idgeoserver_xml) as publish, exists(select 1 from cartogip.couche where couche.id_couche = idcouche) as cartogip
from communs.correspondance
left outer join bsd.pigma_donnees_a_dispo  on idpigma_donnees_a_dispo = pigma_donnees_a_dispo.id_donnee
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
left outer join bsd.entreprise_contact on id_entreprise = no_entreprise
order by entreprise_abrege, type_donnees_echange.type_donnees_echange_libelle";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo '<tr>';
        echo '<td>' . $row[0] . '</td>';
        echo '<td>' . $row[1] . '</td>';
        if($row[2] == 't')
            echo '<td class="green">X</td>';
        else
            echo '<td class="red"></td>';
        if($row[3] == 't')
            echo '<td class="green">X</td>';
        else
            echo '<td class="red"></td>';
        if($row[4] == 't')
            echo '<td class="green">X</td>';
        else
            echo '<td class="red"></td>';
        if($row[5] == 't')
            echo '<td class="green">X</td>';
        else
            echo '<td class="red"></td>';
    echo '<tr>';
}
?>
    </tbody>
</table>
