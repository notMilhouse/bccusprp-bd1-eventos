INSERT INTO
    Evento (titulo, datetime_inicio, datetime_fim, local, descricao)
    VALUES
        ('Nextstep', '2021-11-06 14:00:00', '2021-11-10 19:00:00', 'Lisboa', 'Evento anual da Outsystems');

INSERT INTO
    Patrocinador (email, nome)
    VALUES
        ('outsystems@email.com', 'Outsystems');

INSERT INTO
    PatrocinadorContato (id_patrocinador, telefone)
    VALUES
        (CURRVAL('patrocinador_id_patrocinador_seq'), '182297000');

INSERT INTO
    Patrocinio (seq_patrocinio, cod_evento, valor, data, id_patrocinador)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 5000.0, '2021-09-10', CURRVAL('patrocinador_id_patrocinador_seq'));

INSERT INTO
    EventoGasto (seq_gasto_evento, cod_evento, valor, destino)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 2000.0, 'Pastel de belem'),
        (2, CURRVAL('evento_cod_evento_seq'), 1500.0, 'Servidores para stream');

INSERT INTO
    Atividade (seq_atividade, cod_evento, local, titulo, num_vagas, tipo)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 'Sala de Videoconferencia 1', 'Always Start With The User', 200, 'Curso'),
        (2, CURRVAL('evento_cod_evento_seq'), 'Sala de Videoconferencia 2', 'Build Fast, Right and for the Future', 200, 'Curso'),
        (3, CURRVAL('evento_cod_evento_seq'), 'Sala de Videoconferencia 3', 'Experience Systems', 200, 'Curso'),
        (4, CURRVAL('evento_cod_evento_seq'), 'Sala de Videoconferencia 4', 'The Shortest Distance To The Cloud', 200, 'Curso'),
        (5, CURRVAL('evento_cod_evento_seq'), 'Sala de Videoconferencia 1', 'Get Out Of Debt And On With The Future With The OutSystems Platform', 300, 'Palestra'),
        (6, CURRVAL('evento_cod_evento_seq'), 'Sala de Videoconferencia 2', 'The 21st Century Workplace: Using Digital Experiences to Compete Like a Silicon Valley Company', 300, 'Palestra');

INSERT INTO
    Parceiro (nome, email)
    VALUES
        ('Fernando Santos', 'fernando@google.com');

INSERT INTO
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '+1 789 123123');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Parceiro (nome, email)
    VALUES
        ('Kerry Kim', 'kk@google.com');

INSERT INTO
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '999000000');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Parceiro (nome, email)
    VALUES
        ('Kenco Meau', 'kenco@outsystems.com');

INSERT INTO
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '101000200');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 3, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Parceiro (nome, email)
    VALUES
        ('Ja Vowto', 'jvow@outsystems.com');

INSERT INTO
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '103200200');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 4, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Parceiro (nome, email)
    VALUES
        ('Somi Wan', 'somiwan@outsystems.com');

INSERT INTO
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '104560200'),
        (CURRVAL('parceiro_id_parceiro_seq'), '107890200');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 5, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 6, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Curso (data_inicio, data_fim, qtde_horas, ementa, seq_atividade, cod_evento)
    VALUES
        ('2021-11-06', '2021-11-06', 4, '1- Start with the user 2- pretty much it', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO Aula (seq_aula, data, hora_inicio, hora_fim, titulo, seq_atividade, cod_evento)
    VALUES
        (1, '2021-11-06', '15:00:00', '16:00:00', 'Getting to know the user and starting it', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Curso (data_inicio, data_fim, qtde_horas, ementa, seq_atividade, cod_evento)
    VALUES
        ('2021-11-07', '2021-11-07', 4, 'Learning how to build fast', 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO Aula (seq_aula, data, hora_inicio, hora_fim, titulo, seq_atividade, cod_evento)
    VALUES
        (1, '2021-11-07', '15:00:00', '16:00:00', 'Building fast', 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Curso (data_inicio, data_fim, qtde_horas, ementa, seq_atividade, cod_evento)
    VALUES
        ('2021-11-07', '2021-11-07', 4, 'What are experience Systems and how to build one', 3, CURRVAL('evento_cod_evento_seq'));

INSERT INTO Aula (seq_aula, data, hora_inicio, hora_fim, titulo, seq_atividade, cod_evento)
    VALUES
        (1, '2021-11-07', '17:00:00', '18:00:00', 'Building an experience system', 3, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Curso (data_inicio, data_fim, qtde_horas, ementa, seq_atividade, cod_evento)
    VALUES
        ('2021-11-07', '2021-11-07', 4, 'The Cloud and how to get there', 4, CURRVAL('evento_cod_evento_seq'));

INSERT INTO Aula (seq_aula, data, hora_inicio, hora_fim, titulo, seq_atividade, cod_evento)
    VALUES
        (1, '2021-11-07', '15:00:00', '16:00:00', 'Building a cloud platform', 4, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Palestra (resumo, data, hora_inicio, hora_fim, seq_atividade, cod_evento)
    VALUES
       ('The OutSystems Platform as a job opportunity', '2021-11-08', '16:00:00', '18:00:00', 5, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Palestra (resumo, data, hora_inicio, hora_fim, seq_atividade, cod_evento)
    VALUES
       ('Using Digital Experiences as an advantage', '2021-11-08', '14:00:00', '16:00:00', 6, CURRVAL('evento_cod_evento_seq'));

-- Inscricoes

INSERT INTO
    EventoInscricao (id_usuario, cod_evento)
    VALUES
        (2, CURRVAL('evento_cod_evento_seq')),
        (3, CURRVAL('evento_cod_evento_seq')),
        (5, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeInscricao (cod_inscricao_evento, seq_atividade, cod_evento, link_avaliacao, descricao_avaliacao)
    VALUES
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 5 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 5 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 3, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 3, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 5 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 3, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 4, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 4, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 5 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 4, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 5, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 5, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 5 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 5, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 6, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 6, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 5 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 6, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?');
