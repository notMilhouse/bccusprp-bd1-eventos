<?php

include '../../application/usuario/visualizarTodosUsuarios.php';

$usuarios = getUsuarios();

?>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Lista de usuarios</title>
    </head>
    <body>
        <a href="http://127.0.0.1/index.php">Voltar ao menu</a><br>

        <ul>
            <?php foreach ($usuarios as $usuario): ?>
                <li>
                    <p>Nome:</p> <p> <?= $usuario["nome"]; ?> </p><br>
                    <p>CPF:</p> <p> <?= $usuario["cpf"]; ?> </p><br>
                    <p>Data de nascimento:</p> <p> <?= $usuario["data_nascimento"]; ?> </p><br>
                    <a href="http://127.0.0.1/view/usuario/visualizarUsuario.php?id_usuario=<?= $usuario["id_usuario"]; ?>"> Visualizar perfil completo</a>
                </li><br>
            <?php endforeach; ?>
        </ul>
    </body>
</html>


