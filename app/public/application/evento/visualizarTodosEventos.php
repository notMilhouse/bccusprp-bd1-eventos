<?php

/*


Front: pegar o que retornar da busca e apresentar na tela 

Do banco, pegar: 

coluna no banco      coluna no php
         
titulo                -> eventTitle
local                 -> eventLocation
descricao             -> eventDescription 
datetime_inicio       -> eventBegin
datetime_fim          -> eventEnd

*/

include '../../repository/dbConfig.php';

function getPastEvents() {
    $db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    $retrieve_all_events_query = "SELECT * FROM Evento WHERE datetime_fim <= '2021-11-10 19:00:00' ;";
    $retrieved_all_events = pg_exec($db_connection,$retrieve_all_events_query);

    pg_close($db_connection);
    return pg_fetch_all($retrieved_all_events);
}

function getCurrentEvents() {
    $db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    $retrieve_all_events_query = "SELECT * FROM Evento WHERE datetime_fim > '2021-11-10 19:00:00' ;";
    $retrieved_all_events = pg_exec($db_connection,$retrieve_all_events_query);

    pg_close($db_connection);
    return pg_fetch_all($retrieved_all_events);
}

function getEvents() {
    $db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    $retrieve_all_events_query = "SELECT * FROM Evento;";
    $retrieved_all_events = pg_exec($db_connection,$retrieve_all_events_query);

    pg_close($db_connection);
    return pg_fetch_all($retrieved_all_events);
}

function searchEvents($event_title){
    $db_connection = pg_connect(getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    $get_event_info_query = "SELECT * FROM Evento WHERE titulo LIKE '%$event_title%';";
    $retrieved_info = pg_exec($db_connection,$get_event_info_query);

    pg_close($db_connection);
    return  pg_fetch_all($retrieved_info);
}