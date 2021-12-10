
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

function getSingleEvent($cod) {

    $db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    $retrieve_single_event_query = "SELECT * FROM evento WHERE cod_evento = '$cod'";
    $retrieved_event = pg_exec($db_connection,$retrieve_single_event_query);

    pg_close ($db_connection);
    return pg_fetch_assoc($retrieved_event);

}