<?php


/*

EventoInscricao (id_usuario, cod_evento)


*/


include '../../repository/dbConfig.php';


$db_connection = pg_connect(getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

// forms recebe o id do usuario e o nome do evento

$title = $_POST['eventTitle'];
$user = $_POST['idUser'];
//TODO n seria melhor passar o codigo ou entao fazer assim pra ambos?
$select_codEvent_query = "SELECT cod_evento FROM Evento WHERE titulo = '$title'";
//TODO sera que nao volta mais de um se o titulo for igual por razoes de nao ser PK? Ai teria que ter um for loop...

//TODO se vai ter soh um retorno melhor usar o fetch assoc e colocar o campo em uma variavel
$codEvent_result = pg_fetch_all(pg_exec($db_connection,$select_codEvent_query))[0]['cod_evento'];

$inscription_user_query = "
INSERT INTO eventoinscricao (id_usuario,cod_evento)
    VALUES ('$user', '$codEvent_result') 
";

$subscribe_event_result = pg_exec($db_connection,$inscription_user_query);

//TODO testar se deu bom, se nao deu, avisar
echo("Usuário inscrito com sucesso!");


pg_close ($db_connection);
?>

<a href="http://127.0.0.1/view/eventoInscricao/inscricaoEvento.php">Inscrever-se em outro evento </a>