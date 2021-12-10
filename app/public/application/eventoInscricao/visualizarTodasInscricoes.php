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

function getSubscriptions() {
    $db_connection = pg_connect (getConnectionInformation()) or die ("Falha na conexão!".pg_last_error());

    $retrieve_all_subs_query = "SELECT * FROM eventoinscricao;";
    $retrieved_all_subs = pg_exec($db_connection,$retrieve_all_subs_query);

    $subs_information_array = array();

    foreach (pg_fetch_all($retrieved_all_subs) as $sub) {
        $id_usuario = $sub["id_usuario"];
        $select_user_name_query = "SELECT nome FROM usuario WHERE id_usuario = '$id_usuario'";
        $nome_usuario_inscrito =
            pg_fetch_assoc(
                pg_exec(
                    $db_connection,
                    $select_user_name_query
                )
            )["nome"];

        $cod_evento = $sub["cod_evento"];
        $select_user_name_query = "SELECT titulo FROM evento WHERE cod_evento = '$cod_evento'";
        $titulo_evento =
            pg_fetch_assoc(
                pg_exec(
                    $db_connection,
                    $select_user_name_query
                )
            )["titulo"];

        array_push($subs_information_array,
            array(
                "nome_usuario" => $nome_usuario_inscrito,
                "titulo_evento" => $titulo_evento,
                "cod_inscricao" => $sub["cod_inscricao_evento"]
            )
        );
    }

    pg_close($db_connection);
    return $subs_information_array;
}
