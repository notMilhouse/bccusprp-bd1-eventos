<?php
include '../../application/usuario/visualizarUsuario.php';

$usuario = getSingleUser($_GET['id_usuario']);

include '../header.php';
?>



<title>Atualização de usuario</title>
</head>

<body>
    <?php include '../navbar.php'?>
    <div class="container section">
        <h5>Atualizar usuario</h5>
        <form action="../../application/usuario/atualizarUsuario.php" method="post">

            <input style = "display: none;" type="text" name="userId" value="<?=$usuario["id_usuario"];?>">

            <label for="userName">Nome</label>
            <input type="text" name="userName" id="userName" value = "<?= $usuario["nome"]; ?>"><br>

            <label for="userPassword">Senha</label>
            <input type="text" name="userPassword" id="userPassword" value = "<?= $usuario["senha"]; ?>"><br>

            <label for="userEmail">Email</label>
            <input type="text" name="userEmail" id="userEmail" value = "<?= $usuario["email"]; ?>"><br>

            <label for="userBirthDate">Data de nascimento</label>
            <input type="date" name="userBirthDate" id="userBirthDate"value = "<?= $usuario["data_nascimento"]; ?>"><br>

            <label for="userCPF">CPF</label>
            <input type="text" name="userCPF" id="userCPF" value = "<?= $usuario["cpf"]; ?>"><br>

            <input class="btn" type="submit" value="Submit"><br>
        </form>
    </div>
</body>
</html>