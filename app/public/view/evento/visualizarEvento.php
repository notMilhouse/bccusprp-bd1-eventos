<?php 

include '../../application/evento/visualizarEvento.php';

$evento = getSingleEvent($_GET['cod_evento']);

include '../header.php';
?>

<title>Visualizar evento</title>
</head>

<body>
<?php include '../navbar.php'?>
<div class="container section">
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
                    <a class="deep-purple-text accent-3" href="http://cacto.ffclrp.usp.br:8080/~11819111/www/application/evento/removerEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Remover </a>
                    <a class="deep-purple-text accent-3" href="http://cacto.ffclrp.usp.br:8080/~11819111/www/view/evento/atualizarEvento.php?cod_evento=<?= $evento["cod_evento"]; ?>"> Atualizar </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>