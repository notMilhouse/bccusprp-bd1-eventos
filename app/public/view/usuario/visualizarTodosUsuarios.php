<?php

include '../../application/usuario/visualizarTodosUsuarios.php';

$usuarios = getUsuarios();

include '../header.php';
?>

<title>Lista de usuarios</title>
</head>

<body>
    <?php include '../navbar.php'?>
    <div class="container section">
        <h5>Lista de usuarios</h5>
        <table class="row responsive-table striped">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Data de nascimento</th>
                    <th>Detalhes</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($usuarios as $usuario): ?>
                    <tr>
                        <td>
                            <?= $usuario["nome"]; ?>
                        </td>
                        <td>
                            <?= $usuario["cpf"]; ?>
                        </td>
                        <td>
                            <?= $usuario["data_nascimento"]; ?>
                        </td>
                        <td>
                            <a class="deep-purple-text accent-3" href="http://cacto.ffclrp.usp.br:8080/~11819111/view/usuario/visualizarUsuario.php?id_usuario=<?= $usuario["id_usuario"]; ?>"><i class="small material-icons">search</i></a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</body>
</html>


