<?php 

include '../application/visualizarEvento.php';

$eventos = getSingleEvent($_GET['cod_evento']);

?>

<ul>

    <?php foreach ($eventos as $evento): ?> <!--como so tem 1 evento, pd tirar o for each, mas ai tem que ter o php em algum lugar aqui? acho que nao-->
        <li>
            <h3>Titulo:</h3> <p> <?= $evento["titulo"]; ?> </p><br>
            <h3> Descricao:</h3> <p> <?= $evento["descricao"]; ?> </p><br>
            <h3> Local:</h3> <p> <?= $evento["local"]; ?> </p><br>
            <h3> Inicio:</h3> <p> <?= $evento["datetime_inicio"]; ?> </p><br>
            <h3> Fim:</h3> <p> <?= $evento["datetime_fim"]; ?> </p><br>
            <a href="http://127.0.0.1/application/removerEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Remover </a><br>
            <a href="http://127.0.0.1/view/atualizarEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Atualizar </a>
        </li><br>
    <?php endforeach; ?>

</ul>