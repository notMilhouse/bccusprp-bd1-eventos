<!DOCTYPE html>

<?php

/*

Form: mandar ação delete evento 

Php: 

pegar o id 
deletar 

*/

include '../../repository/dbConfig.php';

$db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

$idUsuario = $_GET['id_usuario'];


$delete_user = "DELETE FROM usuario WHERE id_usuario = '$idUsuario';";

$delete_user_result = pg_exec($db_connection,$delete_user);

if($delete_user_result === false) { ?>
    <h1>Algum erro ocorreu durante o processo de remoção do usuario!</h1><br>
<?php
} else {
    ?>
        <h1>Usuario removido com sucesso!</h1>
    <?php
}

pg_close ($db_connection);

?>
<a href="http://127.0.0.1/view/usuario/visualizarTodosUsuarios.php"> Voltar para lista de usuarios </a>