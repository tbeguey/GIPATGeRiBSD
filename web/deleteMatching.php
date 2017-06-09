<?php
include "connexion.php";

$id = $_REQUEST['idcorrespondance'];

$query = "DELETE FROM communs.correspondance where correspondance.id = " . $id;

pg_query($db_connecter, $query);

?>