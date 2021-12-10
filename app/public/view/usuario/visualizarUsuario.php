<?php 

include '../../application/usuario/visualizarUsuario.php';

$usuario = getSingleUser($_GET['id_usuario']);

?>

<ul>

    <li>
        <p>Nome:</p> <p> <?= $usuario["nome"]; ?> </p><br>
        <p>Nome:</p> <p> <?= $usuario["email"]; ?> </p><br>
        <p>CPF:</p> <p> <?= $usuario["cpf"]; ?> </p><br>
        <p>Data de nascimento:</p> <p> <?= $usuario["data_nascimento"]; ?> </p><br>
        <a href="http://127.0.0.1/application/usuario/removerUsuario.php?id_usuario=<?= $usuario["id_usuario"]; ?>"> Remover </a><br>
        <a href="http://127.0.0.1/usuario/atualizarUsuario.php?id_usuario=<?= $usuario["id_usuario"]; ?>"> Atualizar </a>
    </li><br>

</ul>