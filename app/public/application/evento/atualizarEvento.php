<?php

/*

# Formulario de atualizar evento:

titulo -> eventTitle
local -> eventLocation
descricao -> eventDescription
dateTime_inicio -> eventBegin
dateTime_fim -> eventEnd

# jogar no banco

tipo isso

$result2 = pg_exec($conex2, "UPDATE Func SET nome = '$nome_recebido' WHERE
cod_func = '$cod_recebido'");
echo "<p>Atualizacao efetuada com sucesso!<br><br>


*/

include '../../repository/dbConfig.php';

$db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

$title = $_POST['eventTitle'];
$local = $_POST['eventLocation'];
$description = $_POST['eventDescription'];
$begin = $_POST['eventBegin'];
$end = $_POST['eventEnd'];
$cod_evento = $_POST['eventCode'];

$resultado = pg_exec($db_connection,"
    UPDATE evento SET 
        titulo = '$title',
        local='$local',
        descricao='$description',
        datetime_inicio = '$begin',
        datetime_fim = '$end'
    WHERE cod_evento = '$cod_evento';

");

pg_close ($db_connection);

header("Location: " . "http://127.0.0.1/view/evento/visualizarTodosEventos.php");
?>