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

<?php

include '../repository/dbConfig.php';

$db_connection = pg_connect ($dbConnectionInformation) or die ("Falha na conexão!".pg_last_error());

$title = $_POST['eventTitle'];
$local = $_POST['eventLocation'];
$description = $_POST['eventDescription'];
$begin = $_POST['eventBegin'];
$end = $_POST['eventEnd'];

$cod = pg_exec($conex1,"SELECT cod_evento FROM Evento WHERE titulo = '$title'"); // gets event code based on the title, is it enough? I dont think so

// queries

$updtae_event_title = "UPDATE Evento SET title = '$title' WHERE cod_evento = $cod )";
$updtae_event_local = "UPDATE Evento SET local = '$local' WHERE cod_evento = $cod )";
$updtae_event_description = "UPDATE Evento SET description = '$description' WHERE cod_evento = $cod )";
$updtae_event_begin = "UPDATE Evento SET dateTime_inicio = $begin WHERE cod_evento = $cod )";
$updtae_event_end = "UPDATE Evento SET dateTime_fim = $end WHERE cod_evento = $cod )";

// supposing every variable will receive the value passed in the form, otherwise null will be passed
// updates whichever attribute that is not null

if(!is_null($title))
{
    $update_event_title_result = pg_exec($conex1,$updtae_event_title);
}

if(!is_null($local))
{
    $update_event_local_result = pg_exec($conex1,$updtae_event_local);
}

if(!is_null($description))
{
    $update_event_description_result = pg_exec($conex1,$updtae_event_description);
}

if(!is_null($begin))
{
    $update_event_begin_result = pg_exec($conex1,$updtae_event_begin);
}

if(!is_null($end))
{
    $update_event_end_result = pg_exec($conex1,$updtae_event_end);
}


pg_close ($conex1);