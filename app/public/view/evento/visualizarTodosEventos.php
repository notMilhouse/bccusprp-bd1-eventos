<?php 

include '../../application/evento/visualizarTodosEventos.php';

if(isset($_GET['eventTitle'])){
    $eventos = getFilteredEvents($_GET['eventTitle'], $_GET['filtroData']);
} else{
    $eventos = getEvents();
}
include '../header.php';
?>

<title>Visualizar todos os evento</title>
</head>

<body>
<?php include '../navbar.php'?>
<div class="container section">
    <h5>Busca</h5>
    <div class="row">
        <form action="http://cacto.ffclrp.usp.br:8080/~11819111/www/view/evento/visualizarTodosEventos.php" method="GET">
            <label for="eventTitle">Busca por Título</label><br>
            <input type="text" name="eventTitle"/><br>
            <label for="allEvents">
                <input class="with-gap" type="radio" name="filtroData" id="allEvents" value="allEvents" checked/>
                <span>Todos Eventos</span>
            </label><br>
            <label for="futureEvents">
                <input class="with-gap" type="radio" name="filtroData" id="futureEvents" value="futureEvents"/>
                <span>Eventos Futuros</span>
            </label><br>
            <label for="pastEvents">
                <input class="with-gap" type="radio" name="filtroData" id="pastEvents" value="pastEvents"/>
                <span>Eventos Passados</span>
            </label><br>
            <input class="btn" type="submit" value="submit">
        </form>
    </div>
</div>
<div class="container section">
    <h5>Lista de eventos</h5>
    <ul class="row">
        <?php foreach ($eventos as $evento): ?>
            <li class="col s6">
                <div class="row">
                    <div class="col s12">
                        <div class="card deep-purple lighten-4">
                            <div class="card-content">
                                <span class="card-title"><?= $evento["titulo"]; ?></span>
                                <p><strong>Descrição:</strong> <?= $evento["descricao"]; ?> </p>
                                <p><strong>Local:</strong> <?= $evento["local"]; ?> </p>
                                <p><strong>Data de início:</strong> <?= $evento["datetime_inicio"]; ?> </p>
                                <p><strong>Data de encerramento:</strong> <?= $evento["datetime_fim"]; ?> </p>
                            </div>
                            <div class="card-action">
                                <a class="deep-purple-text accent-3"  href="http://cacto.ffclrp.usp.br:8080/~11819111/www/view/evento/visualizarEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Visualizar detalhes</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
</body>
</html>
