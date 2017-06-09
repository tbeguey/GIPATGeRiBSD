<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<script type="text/javascript" src="script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<html>
    <table>
        <tr>
            <td>Titre Geoserver</td>
            <td>Titre Geonetwork</td>
            <td>Titre Cartogip</td>
            <td>Titre BSD</td>
            <td>Dernière date de validation</td>
            <td>Dernière date de mofication</td>
        </tr>

<?php

include "connexion.php";

$query = "select geoserver_xml.title, metadata.title, couche.titre, type_donnees_echange.titre, date_validation, correspondance.id, date_derniere_modification
from communs.correspondance
left outer join geoserver.geoserver_xml on idgeoserver = idcouche
left outer join geonetwork.metadata on idgeonetwork = uuid
left outer join cartogip.couche on idcartogip = couche.id
left outer join bsd.type_donnees_echange on idbsd = type_donnees_echange.id
order by case when geoserver_xml.title is null then 1 else 0 end + case when metadata.title is null then 1 else 0 end
+ case when couche.titre is null then 1 else 0 end + case when type_donnees_echange.titre is null then 1 else 0 end;";

$result = pg_query($db_connecter, $query);

while($row = pg_fetch_row($result)){
    echo '<tr>';
        echo '<td>' . $row[0] . '</td>';
        echo '<td>' . $row[1] . '</td>';
        echo '<td>' . $row[2] . '</td>';
        echo '<td>' . $row[3] . '</td>';
        echo '<td id="' . $row[5] . 'valid">' . $row[4] . '</td>';
        echo '<td id="' . $row[5] . 'modif">' . $row[6] . '</td>';
        echo '<td> <form method="post" action="matching.php?Code=' . $row[5] . '"> <input type="submit" value="Modifier"> </form> </td>';
        echo '<td> <input type="button" value="Valider" onclick="update_validation_date(' . $row[5] . ')"> </td>';
    echo '</tr>';
}

$query = "select title, idcouche
from geoserver.geoserver_xml

except

select title, idcouche
from communs.correspondance
join geoserver.geoserver_xml on idgeoserver = idcouche;";

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

$query = "select title, uuid
from geonetwork.metadata

except

select title, uuid
from communs.correspondance
join geonetwork.metadata on idgeonetwork = uuid;";

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


$query = "select titre, couche.id
from cartogip.couche

except

select titre, couche.id
from communs.correspondance
join cartogip.couche on idcartogip = couche.id;";

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

$query = "select titre, type_donnees_echange.id
from bsd.type_donnees_echange

except

select titre, type_donnees_echange.id
from communs.correspondance
join bsd.type_donnees_echange on idbsd = type_donnees_echange.id;";

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
    </table>
