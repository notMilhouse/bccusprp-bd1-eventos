<?php 

include '../../application/usuario/visualizarUsuario.php';

$usuario = getSingleUser($_GET['id_usuario']);

include '../header.php';
?>

<title>Visualizar usuario</title>
</head>

<body>
<?php include '../navbar.php'?>
<div class="container section">
    <div class="row">
        <div class="col s12">
            <div class="card deep-purple lighten-4">
                <div class="card-content">
                    <span class="card-title"><?= $usuario["nome"]; ?></span>
                    <p><strong>CPF:</strong> <?= $usuario["cpf"]; ?> </p>
                    <p><strong>Data de nascimento:</strong> <?= $usuario["data_nascimento"]; ?> </p>
                </div>
                <div class="card-action">
                    <a class="deep-purple-text accent-3" href="http://cacto.ffclrp.usp.br:8080/~11819111/application/usuario/removerUsuario.php?id_usuario=<?= $usuario["id_usuario"]; ?>"> Remover </a>
                    <a class="deep-purple-text accent-3" href="http://cacto.ffclrp.usp.br:8080/~11819111/view/usuario/atualizarUsuario.php?id_usuario=<?= $usuario["id_usuario"]; ?>"> Atualizar </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
