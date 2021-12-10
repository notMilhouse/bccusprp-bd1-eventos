<?php


/*

EventoInscricao (id_usuario, cod_evento)


*/


include '../repository/dbConfig.php'; 


$db_connection = pg_connect($dbConnectionInformation) or die ("Falha na conexão!".pg_last_error());

#forms recebe o id do usuario e o nome do evento 

$title = $_POST['eventTitle'];
$user = $_POST['idUser'];

$select_codEvent_query = "SELECT cod_evento FROM Evento WHERE titulo = '$title'";

$codEvent_result = pg_fetch_all(pg_exec($db_connection,$select_codEvent_query))[0]['cod_evento']; 



$inscription_user_query = "
INSERT INTO eventoinscricao (id_usuario,cod_evento)
    VALUES ('$user', '$codEvent_result')
";


$subscribe_event_result = pg_exec($db_connection,$inscription_user_query);

echo("Usuário inscrito com sucesso!");


pg_close ($db_connection);
?>

<a href="http://127.0.0.1/view/inscricaoEvento.php">Inscrever-se em outro evento </a>