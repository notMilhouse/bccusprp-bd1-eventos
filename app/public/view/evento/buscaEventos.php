<?php 

include '../../application/evento/visualizarTodosEventos.php';

$eventos = searchEvents($_GET['eventTitle']);

?>

<a href="http://127.0.0.1/index.php">Voltar ao menu</a><br>
<a href="http://127.0.0.1/view/evento/visualizarTodosEventos.php">Vizualizar Todos os Eventos</a><br>
<a href="http://127.0.0.1/view/evento/visualizarEventosFuturos.php">Vizualizar Eventos Futuros</a><br>
<a href="http://127.0.0.1/view/evento/visualizarEventosPassados.php">Vizualizar Eventos Passados</a><br>

<form action="http://127.0.0.1/view/evento/buscaEventos.php" method="GET">
    <label for="eventTitle">Busca por Título</label><br>
    <input type="text" name="eventTitle">
    <input class="btn" type="submit" value="submit">
</form>

<ul>
    <?php foreach ($eventos as $evento): ?>
        <li>
            <h3>Titulo:</h3> <p> <?= $evento["titulo"]; ?> </p><br>
            <h3> Descricao:</h3> <p> <?= $evento["descricao"]; ?> </p><br>
            <h3> Local:</h3> <p> <?= $evento["local"]; ?> </p><br>
            <h3> Inicio:</h3> <p> <?= $evento["datetime_inicio"]; ?> </p><br>
            <h3> Fim:</h3> <p> <?= $evento["datetime_fim"]; ?> </p><br>
            <a href="http://127.0.0.1/view/evento/visualizarEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Visualizar </a>
        </li><br>

    <?php endforeach; ?>

</ul>

