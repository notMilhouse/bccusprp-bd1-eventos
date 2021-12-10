<?php

include '../../repository/dbConfig.php';

function getUsuarios() {
    $db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    $retrieve_all_users_query = "SELECT * FROM usuario;";

    $retrieved_all_users = pg_exec($db_connection,$retrieve_all_users_query);

    pg_close($db_connection);
    return pg_fetch_all($retrieved_all_users);
}

?>