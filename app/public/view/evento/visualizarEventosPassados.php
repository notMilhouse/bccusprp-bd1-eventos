<?php 

include '../../application/evento/visualizarTodosEventos.php';

$eventos = getPastEvents();

?>

<a href="http://cacto.ffclrp.usp.br:8080/~11819111/view/evento/visualizarEventosFuturos.php">Vizualizar Eventos Futuros</a><br>
<a href="http://cacto.ffclrp.usp.br:8080/~11819111/view/evento/visualizarTodosEventos.php">Vizualizar Todos os Eventos</a><br>
<form action="http://cacto.ffclrp.usp.br:8080/~11819111/view/evento/buscaEventos.php">
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
            <a href="http://cacto.ffclrp.usp.br:8080/~11819111/view/evento/visualizarEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Visualizar </a>
        </li><br>

    <?php endforeach; ?>

</ul>

