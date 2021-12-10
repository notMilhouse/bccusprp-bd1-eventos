<?php
/*

# Formulario de criar evento:

titulo -> eventTitle
local -> eventLocation
descricao -> eventDescription 
dateTime_inicio -> eventBegin
dateTime_fim -> eventEnd

# jogar no banco 

tipo isso   

pg_exec ($conex1, "insert into Func(cod_func, nome) 
values('$cod_recebido', '$nome_recebido') "); 
pg_close ($conex1); 

*/
include '../../repository/dbConfig.php';

$db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

$title = $_POST['eventTitle'];
$local = $_POST['eventLocation'];
$description = $_POST['eventDescription'];
$begin = $_POST['eventBegin'];
$end = $_POST['eventEnd'];

$create_event_query = "
    INSERT INTO Evento (titulo, datetime_inicio, datetime_fim, local, descricao)
        VALUES ('$title', '$begin', '$end', '$local', '$description')
";

$create_event_result = pg_exec($db_connection,$create_event_query);

pg_close($db_connection);

header("Location: " . "http://127.0.0.1/view/evento/visualizarTodosEventos.php");
?>
