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

function getFilteredEvents($event_title, $event_filter){
    $db_connection = pg_connect(getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    // The WHERE clause condition makes it so when there is a title to search for, only the matching results are considered,
    // and when there is none, the LIKE pattern fails, at the same time as the second condition does not filter the title column,
    // giving us all tuples in the table if there is any.
    if($event_filter == 'allEvents'){
        $get_event_info_query = "SELECT * FROM Evento WHERE titulo LIKE '%$event_title%' OR '$event_title' = '';";
        $retrieved_info = pg_exec($db_connection,$get_event_info_query);
    } else if($event_filter == 'pastEvents'){
        $get_event_info_query = "SELECT * FROM Evento WHERE (titulo LIKE '%$event_title%' OR '$event_title' = '') AND datetime_fim <= NOW();";
        $retrieved_info = pg_exec($db_connection,$get_event_info_query);
    } else{
        $get_event_info_query = "SELECT * FROM Evento WHERE (titulo LIKE '%$event_title%' OR '$event_title' = '') AND datetime_fim > NOW()git co;";
        $retrieved_info = pg_exec($db_connection,$get_event_info_query);
    }
    pg_close($db_connection);
    return  pg_fetch_all($retrieved_info);
}
