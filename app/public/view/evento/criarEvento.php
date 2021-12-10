<?php include '../header.php'; ?>
<title>Criacao de evento</title>
</head>

<body>
<?php include '../navbar.php'?>
<div class="container section">
    <h5>Criar evento</h5>
    <form action="../../application/evento/criarEvento.php" method="post">

        <label for="eventTitle">Titulo do evento</label>
        <input type="text" name="eventTitle" id="eventTitle"><br>

        <label for="eventDescription">Descricao do evento</label>
        <input type="text" name="eventDescription" id="eventDescription"><br>

        <label for="eventLocation">Local do evento</label>
        <input type="text" name="eventLocation" id="eventLocation"><br>
        
        <label for="eventBegin">Data de inicio do evento</label>
        <input type="datetime-local" name="eventBegin" id="eventBegin"><br>
        
        <label for="eventEnd">Data de fim do evento</label>
        <input type="datetime-local" name="eventEnd" id="eventEnd"><br>
        
        <input class="btn" type="submit" value="Submit"><br>
    </form>
</div>
</body>
</html>



