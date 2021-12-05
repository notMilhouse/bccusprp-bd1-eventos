<?php 

include '../application/visualizarEvento.php';

$db_connection = pg_connect ($dbConnectionInformation) or die ("Falha na conexão!".pg_last_error());

$eventos = getSingleEvent($db_connection);

pg_close ($db_connection);

?>

<ul>

    <style>
        html,body {
            width: 100%;
            height: 100%;
        }

        ul {
            list-style-type: none;
            margin-left: 100px;
            margin-top: 100px;
            width: 70%;
            height: 100%;

            display: flex;
            flex-flow: row wrap;
            justify-content: space-around;
            align-items:center;
        }

        li {
            margin-top: 2em;
            padding: 2em;
            width: 200px;
            height: 500px;
            background-color: purple;
            color: white;
        }


    </style>

    <?php foreach ($eventos as $evento): ?> <!--como so tem 1 evento, pd tirar o for each, mas ai tem que ter o php em algum lugar aqui? acho que nao-->
        <li>
            <h3>Titulo:</h3> <p> <?= $evento["titulo"]; ?> </p><br>
            <h3> Descricao:</h3> <p> <?= $evento["descricao"]; ?> </p><br>
            <h3> Local:</h3> <p> <?= $evento["local"]; ?> </p><br>
            <h3> Inicio:</h3> <p> <?= $evento["dateTime_inicio"]; ?> </p><br>
            <h3> Fim:</h3> <p> <?= $evento["dateTime_fim"]; ?> </p><br>
        </li><br>
    <?php endforeach; ?>

</ul>