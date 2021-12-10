<?php //TODO talvez deveria ser algo a partir de um usuario? passando id por get..? ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Inscrição de um usuário em um evento</title>
    </head>
    <body>
        <a href="http://127.0.0.1/index.php">Voltar ao menu</a><br>

        <h1>Se inscrever em um evento</h1>
        <form action="../../application/eventoInscricao/inscricaoEvento.php" method="post">
            <label for="eventTitle">Nome do evento</label>
            <input type="text" name="eventTitle" id="eventTitle"><br>

            <label for="idUser">id usuário </label>
            <input type="text" name="idUser" id="idUser"><br>

            <input type="submit" value="Submit"><br>
        </form>
    </body>
</html>