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

function getEvents($db_connection) {
    $retrieve_all_events_query = "SELECT * FROM Evento;";


    $retrieved_all_events = pg_exec($db_connection,$retrieve_all_events_query);


    return pg_fetch_all($retrieved_all_events);
}
