<?php
include '../../application/evento/visualizarEvento.php';

$evento = getSingleEvent($_GET['cod_evento']);

include '../header.php';
?>

<title>Atualização de evento</title>
</head>

<body>
<?php include '../navbar.php'?>
<div class="container section">
    <h5>Atualizar evento</h5>
    <form action="../../application/evento/atualizarEvento.php" method="post">

        <input style = "display: none;" type="text" name="eventCode" value="<?=$evento["cod_evento"];?>">

        <label for="eventTitle">Titulo do evento</label>
        <input type="text" name="eventTitle" id="eventTitle" value="<?=$evento["titulo"];?>"><br>

        <label for="eventDescription">Descricao do evento</label>
        <input type="text" name="eventDescription" id="eventDescription" value="<?=$evento["descricao"];?>"><br>

        <label for="eventLocation">Local do evento</label>
        <input type="text" name="eventLocation" id="eventLocation" value="<?=$evento["local"];?>"><br>
        
        <label for="eventBegin">Data de inicio do evento</label>
        <input type="datetime-local" name="eventBegin" id="eventBegin" value="<?=$evento["datetime_inicio"];?>"><br>
        
        <label for="eventEnd">Data de fim do evento</label>
        <input type="datetime-local" name="eventEnd" id="eventEnd" value="<?=$evento["datetime_fim"];?>"><br>
        
        <input class="btn" type="submit" value="Submit"><br>
    </form>
</div>
</body>
</html>