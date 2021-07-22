INSERT INTO 
    Evento (titulo, datetime_inicio, datetime_fim, local, descricao)
    VALUES
        ('Google I/O', '2021-10-20 15:45:00', '2021-10-24 19:00:00', 'Auditorio 1', 'Serie de palestrar sobre boas praticas de programacao.');

INSERT INTO
    Patrocinador (email, nome)
    VALUES
        ('alphabet@email.com', 'Alphabet Corporation');

INSERT INTO
    PatrocinadorContato (id_patrocinador, telefone)
    VALUES
        (CURRVAL('patrocinador_id_patrocinador_seq'), '119756231');

INSERT INTO
    Patrocinio (seq_patrocinio, cod_evento, valor, data, id_patrocinador)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 3000.0, '2021-10-17', CURRVAL('patrocinador_id_patrocinador_seq'));

INSERT INTO
    EventoGasto (seq_gasto_evento, cod_evento, valor, destino)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 500.0, 'Degustacao de gelattos'),
        (2, CURRVAL('evento_cod_evento_seq'), 1000.0, 'Segurancas');

INSERT INTO
    Atividade (seq_atividade, cod_evento, local, titulo, num_vagas, tipo)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 'Auditorio 1', 'AMA: Progressive Web Applications and Fugu', 500, 'Palestra'),
        (2, CURRVAL('evento_cod_evento_seq'), 'Auditoria 1','5 things you can do to prepare your app for large screens', 100, 'Curso'),
        (3, CURRVAL('evento_cod_evento_seq'), 'Laboratorio', 'Google Kickstart Replay', 200, 'Competição');

INSERT INTO 
    Parceiro (nome, email)
    VALUES
        ('Sundar Pichai', 'sunpichai@google.com');

INSERT INTO 
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '982749100');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Parceiro (nome, email)
    VALUES
        ('Ven Mecomer', 'vm@google.com');

INSERT INTO
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '666000000');
        
INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Parceiro (nome, email)
    VALUES
        ('Ken Ven Vay', 'kvv@google.com');

INSERT INTO
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '777000000');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 3, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (1, 250, 'Monitores para a competicao', '2021-10-21', 3, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (2, 600, 'Uma tela grande', '2021-10-21', 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('10 copias de Competitive Programming Handbook', 'livro', 'Livro de apoio para o Kickstart');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 3, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('Slides da palestra', 'slide de power point', 'PWA presentation slide');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Palestra (resumo, data, hora_inicio, hora_fim, seq_atividade, cod_evento)
    VALUES
       ('Talk about PWAs', '2021-10-20', '16:00:00', '18:00:00', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Palestra (resumo, data, hora_inicio, hora_fim, seq_atividade, cod_evento)
    VALUES
       ('Talk about PWAs', '2021-10-21', '16:00:00', '18:00:00', 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Competicao (plataforma, link, datetime_inicio, datetime_fim, seq_atividade, cod_evento)
    VALUES
        ('Google', 'www.kickstart.com', '2021-10-20 20:00:00', '2021-10-20 22:00:00', 3, CURRVAL('evento_cod_evento_seq'));

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
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'e dessa vez, prestou?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'e dessa vez, prestou?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 5 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'e dessa vez, prestou?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 3, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'o que achou da maratona?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 3, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'o que achou da maratona?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 5 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 3, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'o que achou da maratona?');

