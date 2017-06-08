<?php
include "connexion.php";

$query = "UPDATE communs.correspondance SET date_validation = current_date
where correspondance.id = " . $_REQUEST['id'] ;

pg_query($db_connecter, $query);
?>