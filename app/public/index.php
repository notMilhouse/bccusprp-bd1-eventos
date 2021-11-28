<?php
$conex1 = pg_connect ("host = db
port = 5432  
dbname = evento  
user = evento  
password = evento")
or die ("Falha na conexão!".pg_last_error());


$result1 = pg_exec ($conex1, "SELECT * FROM aula;");

$tot_tuplas = pg_numrows ($result1);

printf("Numero de linhas: $tot_tuplas ");


pg_close ($conex1);