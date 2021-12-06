<?php


/*

EventoInscricao (id_usuario, cod_evento)


*/


include '../repository/dbConfig.php'; 


$db_connetion = pg_connect($dbConnectionInformation) or die ("Falha na conexão!".pg_last_error())

#forms recebe o id do usuario e o nome do evento 

$title = $_POST['eventTitle']
$user = $_POST['idUser']

$cod = pg_exec($conex1,"SELECT cod_evento FROM Evento WHERE titulo = '$title'"); 

$inscription_user_query = "
      INSERT INTO EventoInscricao (id_usuario,cod_evento)
          Values('$user','$cod')
 ";


 $subscribe_event_result = pg_exec($db_connection,$inscription_user_query);


?>