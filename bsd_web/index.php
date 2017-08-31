<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<script type="text/javascript" src="script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<html>
    <table >
        <thead>
        <tr>
            <th>Titre Geoserver</th>
            <th>Titre Geonetwork</th>
            <th>Titre Cartogip</th>
            <th>Titre BSD</th>
            <th>Dernière date de validation</th>
            <th>Dernière date de modification</th>
        </tr>
        </thead>
<tbody>
<?php

include "connexion.php";

$query = "select geoserver_xml.title, metadata.title, couche.nom_couche, type_donnees_echange.type_donnees_echange_libelle, date_validation, correspondance.id, date_derniere_modification, metadata.source, couche_schema, entreprise_abrege, workspace
from communs.correspondance
left outer join geoserver.geoserver_xml on correspondance.idgeoserver_xml = geoserver_xml.idcouche
left outer join geonetwork.metadata on idmetadata = uuid
left outer join cartogip.couche on correspondance.idcouche = couche.id_couche
left outer join bsd.pigma_donnees_a_dispo on id_donnee = idpigma_donnees_a_dispo
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
left outer join bsd.entreprise_contact on id_entreprise = no_entreprise
order by case when geoserver_xml.title is null then 1 else 0 end + case when metadata.title is null then 1 else 0 end
+ case when couche.nom_couche is null then 1 else 0 end + case when type_donnees_echange.type_donnees_echange_libelle is null then 1 else 0 end";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo '<tr>';
        echo '<td>' . $row[10] . ' - ' . $row[0] . '</td>';
        echo '<td>' . $row[7] . ' - ' . $row[1] . '</td>';
        echo '<td>' . $row[8] . ' - ' . $row[2] . '</td>';
        echo '<td>' . $row[9] . ' - ' . $row[3] . '</td>';
        echo '<td id="' . $row[5] . 'valid">' . $row[4] . '</td>';
        echo '<td id="' . $row[5] . 'modif">' . $row[6] . '</td>';
        echo '<td> <form method="post" action="matching.php?Code=' . $row[5] . '"> <input type="submit" value="Modifier"> </form> </td>';
        echo '<td> <input type="button" value="Valider" onclick="update_validation_date(' . $row[5] . ')"> </td>';
    echo '</tr>';
}

$query = "select title, idcouche, workspace
from geoserver.geoserver_xml

except

select title, geoserver_xml.idcouche, workspace
from communs.correspondance
join geoserver.geoserver_xml on idgeoserver_xml = geoserver_xml.idcouche;";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo '<tr>';
        echo '<td>' . $row[0] . '</td>';
        echo '<td>' . "" . '</td>';
        echo '<td>' . "" . '</td>';
        echo '<td>' . "" . '</td>';
        echo '<td>' . "" . '</td>';
        echo '<td>' . "" . '</td>';
    echo "<td> <input type='button' value='Créer' onclick='create_matching(&quot;$row[1]&quot;, &quot;geoserver&quot;)'> </form> </td>";
    echo '</tr>';
}

$query = "select title, uuid, source
from geonetwork.metadata

except

select title, uuid, source
from communs.correspondance
join geonetwork.metadata on idmetadata = uuid;";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo '<tr>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . $row[0] . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo "<td> <input type='button' value='Créer' onclick='create_matching(&quot;$row[1]&quot;, &quot;geonetwork&quot;)'> </form> </td>";
    echo '</tr>';
}


$query = "select nom_couche, couche.id_couche, couche_schema
from cartogip.couche

except

select nom_couche, couche.id_couche, couche_schema
from communs.correspondance
join cartogip.couche on idcouche = couche.id_couche;";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo '<tr>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . $row[0] . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo "<td> <input type='button' value='Créer' onclick='create_matching(&quot;$row[1]&quot;, &quot;cartogip&quot;)'> </form> </td>";
    echo '</tr>';
}

$query = "select type_donnees_echange_libelle, pigma_donnees_a_dispo.id_donnee, entreprise
from bsd.pigma_donnees_a_dispo
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
left outer join bsd.entreprise_contact on id_entreprise = no_entreprise

except

select type_donnees_echange_libelle, pigma_donnees_a_dispo.id_donnee, entreprise
from communs.correspondance
join bsd.pigma_donnees_a_dispo on idpigma_donnees_a_dispo = id_donnee
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
left outer join bsd.entreprise_contact on id_entreprise = no_entreprise;";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo '<tr>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . $row[0] . '</td>';
    echo '<td>' . "" . '</td>';
    echo '<td>' . "" . '</td>';
    echo "<td> <input type='button' value='Créer' onclick='create_matching(&quot;$row[1]&quot;, &quot;cartogip&quot;)'> </form> </td>";
    echo '</tr>';
}

?>
</tbody>
    </table>