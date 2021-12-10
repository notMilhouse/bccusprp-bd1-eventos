<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cadastro de usuário</title>
</head>
<body>
    <a href="http://127.0.0.1/index.php">Voltar ao menu</a><br>

    <h1>Cadastro de usuário</h1>
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
        
        <input type="submit" value="Submit"><br>
    </form>
</body>
</html>



