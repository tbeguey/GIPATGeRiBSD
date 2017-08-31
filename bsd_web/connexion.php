<?php
$l_bdd = "bsd";
$l_host = "172.30.100.12";
$l_user = "admpostgres";
$l_passwd ="admpostgres";
//INFO @ permet de ne pas afficher l'erreur à l'utilisateur
$db_connecter = pg_pconnect("host=$l_host dbname=$l_bdd user=$l_user password=$l_passwd");
?>