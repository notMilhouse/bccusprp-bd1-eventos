<?php


/*

EventoInscricao (id_usuario, cod_evento)


*/


include '../../repository/dbConfig.php';


$db_connection = pg_connect(getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

// forms recebe o id do usuario e o nome do evento

$title = $_POST['eventTitle'];
$user = $_POST['idUser'];

$select_codEvent_query = "SELECT cod_evento FROM Evento WHERE titulo = '$title'";

$select_evento_result = pg_exec($db_connection,$select_codEvent_query);
$evento = pg_fetch_assoc($select_evento_result);
$cod_evento = $evento['cod_evento'];

$inscription_user_query = "
INSERT INTO eventoinscricao (id_usuario,cod_evento)
    VALUES ('$user', '$cod_evento') 
";

$subscribe_event_result = pg_exec($db_connection,$inscription_user_query);

if($subscribe_event_result === false) {
    ?>
    <h1>Algum erro ocorreu durante o processo de inscricao!</h1><br>
    <?php
} else {
    ?>
    <h1>Usuario inscrito no evento com sucesso!</h1>
    <?php
}

pg_close ($db_connection);
?>

<a href="http://127.0.0.1/view/eventoInscricao/inscricaoEvento.php">Inscrever-se em outro evento </a>