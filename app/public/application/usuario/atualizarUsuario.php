<?php

include '../../repository/dbConfig.php';

$db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

$nome = $_POST['userName'];
$email = $_POST['userEmail'];
$cpf = $_POST['userCPF'];
$senha = $_POST['userPassword'];
$dataNascimento = $_POST['userBirthDate'];
$id_usuario = $_POST['userId'];


$resultado = pg_exec($db_connection,"
    UPDATE usuario SET 
        nome = '$nome',
        senha ='$senha',
        cpf='$cpf',
        email = '$email',
        data_nascimento = '$dataNascimento'
    WHERE id_usuario = '$id_usuario';

");

pg_close ($db_connection);

?>
<a href="http://127.0.0.1/view/usuario/visualizarUsuario.php?id_usuario=<?= $id_usuario ?>"> Voltar ao perfil do usuario </a>