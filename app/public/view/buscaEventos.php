<?php 

include '../application/visualizarTodosEventos.php';

$db_connection = pg_connect($dbConnectionInformation) or die ("Falha na conexão!".pg_last_error());

$event_title = $_GET['eventTitle'];
$eventos = searchEvents($db_connection, $event_title);

pg_close ($db_connection);

?>

<ul>
<br>
    <a href="http://127.0.0.1/view/visualizarTodosEventos.php">Vizualizar Todos os Eventos</a><br>
    <a href="http://127.0.0.1/view/visualizarEventosFuturos.php">Vizualizar Eventos Futuros</a><br>
    <a href="http://127.0.0.1/view/visualizarEventosPassados.php">Vizualizar Eventos Passados</a><br>
    <form action="http://127.0.0.1/view/buscaEventos.php" method="GET">
        <label for="eventTitle">Busca por Título</label><br>
        <input type="text" name="eventTitle">
        <input type="submit" value="submit">
    </form>
    <?php foreach ($eventos as $evento): ?>
        <li>
            <h3>Titulo:</h3> <p> <?= $evento["titulo"]; ?> </p><br>
            <h3> Descricao:</h3> <p> <?= $evento["descricao"]; ?> </p><br>
            <h3> Local:</h3> <p> <?= $evento["local"]; ?> </p><br>
            <h3> Inicio:</h3> <p> <?= $evento["datetime_inicio"]; ?> </p><br>
            <h3> Fim:</h3> <p> <?= $evento["datetime_fim"]; ?> </p><br>
            <a href="http://127.0.0.1/view/visualizarEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Visualizar </a>
        </li><br>

    <?php endforeach; ?>

</ul>

