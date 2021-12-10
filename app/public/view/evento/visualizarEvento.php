<?php 

include '../../application/evento/visualizarEvento.php';

$evento = getSingleEvent($_GET['cod_evento']);

?>
<a href="http://127.0.0.1/view/evento/visualizarTodosEventos.php"> Voltar para lista de eventos </a>
<ul>
    <li>
        <h3>Titulo:</h3> <p> <?= $evento["titulo"]; ?> </p><br>
        <h3> Descricao:</h3> <p> <?= $evento["descricao"]; ?> </p><br>
        <h3> Local:</h3> <p> <?= $evento["local"]; ?> </p><br>
        <h3> Inicio:</h3> <p> <?= $evento["datetime_inicio"]; ?> </p><br>
        <h3> Fim:</h3> <p> <?= $evento["datetime_fim"]; ?> </p><br>
        <a href="http://127.0.0.1/application/evento/removerEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Remover </a><br>
        <a href="http://127.0.0.1/view/evento/atualizarEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Atualizar </a><br>
    </li><br>
</ul>
