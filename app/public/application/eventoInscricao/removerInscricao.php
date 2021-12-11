<?php

/*

Form: mandar ação delete evento 

Php: 

pegar o id 
deletar 

*/

include '../../repository/dbConfig.php';

$db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

$cod = $_GET['cod_inscricao_evento'];


$delete_sub = "DELETE FROM eventoinscricao WHERE cod_inscricao_evento = '$cod';";

$delete_sub_result = pg_exec($db_connection,$delete_sub);

pg_close ($db_connection);

if($delete_sub_result === false) {
    ?>
    <h1>Algum erro ocorreu durante o processo de remoção da inscricao!</h1><br>
    <?php
} else {
    header("Location: " . "http://cacto.ffclrp.usp.br:8080/~11819111/view/eventoInscricao/visualizarTodasInscricoes.php");
}
?>