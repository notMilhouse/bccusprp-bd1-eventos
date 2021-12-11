<?php

include '../../application/eventoInscricao/visualizarTodasInscricoes.php';

$inscricoes = getSubscriptions();

include '../header.php';
?>

<title>Lista de inscricoes</title>
</head>

<body>
    <?php include '../navbar.php'?>
    <div class="container section">
        <h5>Lista de inscricoes</h5>
        <table class="row responsive-table striped">
            <thead>
                <tr>
                    <th>Evento</th>
                    <th>Usuario</th>
                    <th>Remover</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($inscricoes as $inscricao): ?>
                    <tr>
                        <td>
                            <?= $inscricao["titulo_evento"]; ?>
                        </td>
                        <td>
                            <?= $inscricao["nome_usuario"]; ?>
                        </td>
                        <td>
                            <a class="deep-purple-text accent-3" href="http://cacto.ffclrp.usp.br:8080/~11819111/application/eventoInscricao/removerInscricao.php?cod_inscricao_evento=<?= $inscricao["cod_inscricao"]; ?>"><i class="small material-icons">close</i></a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</body>
</html>


