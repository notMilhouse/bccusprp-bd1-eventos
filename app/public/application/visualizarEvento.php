
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

include '../repository/dbConfig.php';

function getSingleEvent($db_connection) {

    $cod = $_GET['cod_evento'];
    $retrieve_single_event_query = "SELECT * FROM evento WHERE cod_evento = '$cod'";

    $retrieved_event = pg_exec($db_connection,$retrieve_single_event_query);


    return pg_fetch_all($retrieved_event);

}