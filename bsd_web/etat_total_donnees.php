<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Synthèse données PIGMA</title>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <script type="text/javascript" src="script.js"></script>
</head>

<?php
include "connexion.php";

$query = "select count(*) from communs.correspondance
left outer join bsd.pigma_donnees_a_dispo on idpigma_donnees_a_dispo = pigma_donnees_a_dispo.id_donnee
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
where conventionnee = true";

$nbconv = pg_fetch_row(pg_query($db_connecter, $query))[0];

$query = "select count(*) from communs.correspondance
left outer join bsd.pigma_donnees_a_dispo on idpigma_donnees_a_dispo = pigma_donnees_a_dispo.id_donnee
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
where livree = true";

$nblivree = pg_fetch_row(pg_query($db_connecter, $query))[0];

$query = "select count(*) from communs.correspondance
left outer join bsd.pigma_donnees_a_dispo on idpigma_donnees_a_dispo = pigma_donnees_a_dispo.id_donnee
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
where catalogue = true";

$nbcatalogue = pg_fetch_row(pg_query($db_connecter, $query))[0];

$query = "select count(*) from communs.correspondance
left outer join bsd.pigma_donnees_a_dispo on idpigma_donnees_a_dispo = pigma_donnees_a_dispo.id_donnee
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
where it_geonetwork = true";

$nbgeonetwork = pg_fetch_row(pg_query($db_connecter, $query))[0];

$query = "select count(*) from communs.correspondance
left outer join bsd.pigma_donnees_a_dispo on idpigma_donnees_a_dispo = pigma_donnees_a_dispo.id_donnee
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
where it_geoserver = true";

$nbgeoserver = pg_fetch_row(pg_query($db_connecter, $query))[0];

$dataPoints = array(
    array("y" => $nbconv, "label" => "nbconv - " . $nbconv),
    array("y" => $nblivree, "label" => "nblivree - " . $nblivree),
    array("y" => $nbcatalogue, "label" => "nbcatalogue - " . $nbcatalogue),
    array("y" => $nbgeonetwork, "label" => "nbgeonetwork - " . $nbgeonetwork),
    array("y" => $nbgeoserver, "label" => "nbgeoserver - " . $nbgeoserver),
    array("y" => 0, "label" => "nbwmsexterne - " . 0)
);
?>

<body>
<div id="chartContainer"></div>

<script type="text/javascript">

    $(function () {
        var chart = new CanvasJS.Chart("chartContainer", {
            theme: "theme2",
            animationEnabled: true,
            title: {
                text: "Synthèse données PIGMA - " + date_of_today()
            },
            data: [
                {
                    type: "column",
                    dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
                }
            ]
        });
        chart.render();
    });
</script>
</body>

</html>