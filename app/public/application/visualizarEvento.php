/*


Front: pegar o que retornar da busca e apresentar na tela 

Do banco, pegar: 

titulo -> eventTitle
local -> eventLocation
descricao -> eventDescription 
dateTime_inicio -> eventBegin
dateTime_fim -> eventEnd

*/

<?php
$conex1 = pg_connect ("host = db
port = 5432  
dbname = evento  
user = evento  
password = evento")
or die ("Falha na conexão!".pg_last_error());

$title = $_POST['eventTitle'];
$cod = pg_exec($conex1,"SELECT cod_evento FROM Evento WHERE titulo = '$title'"); // gets event code based on the title, is it enough? I dont think so

$view_event = "SELECT titulo, local,descricao,dateTime_inicio, dateTime_fim FROM Evento WHERE cod_evento = $cod";

// como apresentar essas infos? echo, printf .... ?

$view_event_result = pg_exec($conex1,$view_event);


pg_close ($conex1);