<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Criacao de evento</title>
</head>
<body>
    <a href="http://127.0.0.1/index.php">Voltar ao menu</a><br>
    <h1>Criar evento</h1>
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
        
        <input type="submit" value="Submit"><br>
    </form>
</body>
</html>



