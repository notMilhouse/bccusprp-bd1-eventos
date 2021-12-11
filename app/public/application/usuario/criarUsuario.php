<?php

include '../../repository/dbConfig.php';

$db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

$nome = $_POST['userName'];
$email = $_POST['userEmail'];
$cpf = $_POST['userCPF'];
$senha = $_POST['userPassword'];
$dataNascimento = $_POST['userBirthDate'];

$create_user_query = "
    INSERT INTO usuario (nome, email, senha, cpf, data_nascimento)
        VALUES ('$nome', '$email', '$senha', '$cpf', '$dataNascimento')
";

$create_user_result = pg_exec($db_connection,$create_user_query);

pg_close($db_connection);

header("Location: " . "http://cacto.ffclrp.usp.br:8080/~11819111/view/usuario/visualizarTodosUsuarios.php");
?>

