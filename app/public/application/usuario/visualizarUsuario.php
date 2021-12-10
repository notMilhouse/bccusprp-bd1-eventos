
<?php
/*


Front: pegar o que retornar da busca e apresentar na tela 

Do banco, pegar: 

titulo -> eventTitle
local -> eventLocation
descricao -> eventDescription 
dateTime_inicio -> eventBegin
dateTime_fim -> eventEnd

*/

include '../../repository/dbConfig.php';

function getSingleUser($id_usuario) {

    $db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    $retrieve_single_user_query = "SELECT * FROM usuario WHERE id_usuario = '$id_usuario';";

    $retrieved_user = pg_exec($db_connection,$retrieve_single_user_query);


    pg_close ($db_connection);

    return pg_fetch_assoc($retrieved_user);

}