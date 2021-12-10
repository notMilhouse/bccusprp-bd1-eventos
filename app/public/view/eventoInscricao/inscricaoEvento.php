<?php include '../header.php'; ?>

<title>Inscrição de um usuário em um evento</title>
    </head>
    <body>
        <?php include '../navbar.php'?>
        <div class="container section">
            <h5>Inscricao de usuario em evento</h5>
            <form action="../../application/eventoInscricao/inscricaoEvento.php" method="post">
                <label for="eventTitle">Nome do evento</label>
                <input type="text" name="eventTitle" id="eventTitle"><br>

                <label for="idUser">id usuário </label>
                <input type="text" name="idUser" id="idUser"><br>

                <input class="btn" type="submit" value="Submit"><br>
            </form>
        </div>
    </body>
</html>