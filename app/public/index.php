<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inicio</title>
</head>
<body>

    <style>
        html, body{
            height: 100vh;
            width: 100vw;
            
            display: flex;
            justify-content: space-around;
            align-items:center;
        }
        .button {
            text-align: center;
            width: 30%;
            height: 1rem;
            border-radius: 0.5em;
            padding:1em;
            background-color: #9550FF;
            color: white;
        }
    </style>

    <a class="button" href="/view/criarEvento.php">Criar um evento</a>
    <a class="button" href="/view/visualizarTodosEventos.php">Visualizar todos os eventos</a>
    <a class="button" href="/view/atualizarEvento.php">Atualizar evento</a>
</body>
</html>
