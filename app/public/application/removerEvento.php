<?php

/*

Form: mandar ação delete evento 

Php: 

pegar o id 
deletar 

*/

include '../repository/dbConfig.php';

$db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

$cod = $_GET['cod_evento'];


$delete_event = "DELETE FROM Evento WHERE cod_evento = '$cod';";

$delete_event_result = pg_exec($db_connection,$delete_event);

if($delete_event_result) {
    ?>
    <h1>Evento removido com sucesso!</h1>
    <?php
} else {
    ?>
    <h1>Algum erro ocorreu durante o processo de remoção do evento!</h1>
    <?php
}

pg_close ($db_connection);

