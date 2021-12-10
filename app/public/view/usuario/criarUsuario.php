<?php include '../header.php'; ?>

<title>Cadastro de usuário</title>
</head>

<body>
    <?php include '../navbar.php'?>
    <div class="container section">
        <h5>Cadastro de usuário</h5>
        <form action="../../application/usuario/criarUsuario.php" method="post">

            <label for="userName">Nome</label>
            <input type="text" name="userName" id="userName" placeholder="Josue o Dog"><br>

            <label for="userPassword">Senha</label>
            <input type="text" name="userPassword" id="userPassword" placeholder="123456"><br>

            <label for="userEmail">Email</label>
            <input type="text" name="userEmail" id="userEmail" placeholder="email@mail.com"><br>

            <label for="userBirthDate">Data de nascimento</label>
            <input type="date" name="userBirthDate" id="userBirthDate"><br>

            <label for="userCPF">CPF</label>
            <input type="text" name="userCPF" id="userCPF" placeholder="Sem pontos ou traços"><br>

            <input class="btn" type="submit" value="Submit"><br>
        </form>
    </div>
</body>
</html>



