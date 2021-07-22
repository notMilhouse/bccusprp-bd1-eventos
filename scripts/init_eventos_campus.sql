INSERT INTO 
    Evento (titulo, datetime_inicio, datetime_fim, local, descricao)
    VALUES
        ('Campus Party', '2021-07-20 13:00:00', '2021-07-21 19:00:00', 'Cantina do Walter', 'Festa do Campus');

INSERT INTO
    Patrocinador (email, nome)
    VALUES
        ('bb@email.com', 'Banco do Brasil');

INSERT INTO
    PatrocinadorContato (id_patrocinador, telefone)
    VALUES
        (CURRVAL('patrocinador_id_patrocinador_seq'), '999999998');

INSERT INTO
    Patrocinio (seq_patrocinio, cod_evento, valor, data, id_patrocinador)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 2000.0, '2021-04-19', CURRVAL('patrocinador_id_patrocinador_seq'));

INSERT INTO
    EventoGasto (seq_gasto_evento, cod_evento, valor, destino,data)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 300.0, 'Coffee Break','2021-07-20'),
        (2, CURRVAL('evento_cod_evento_seq'), 1000.0, 'Staff','2021-07-21');

INSERT INTO
    Atividade (seq_atividade, cod_evento, local, titulo, num_vagas, tipo)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 'Mesa 1', 'Curso de Gastronomia', 20, 'Curso');

INSERT INTO 
    Parceiro (nome, email)
    VALUES
        ('Prof Eggman', 'eggman@email.com');

INSERT INTO 
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '991919198');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (1, 150, 'ingredientes', '2021-07-19', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('50 ovos', 'ingrediente', 'Ovos');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('2L de água', 'ingrediente', 'Água pra gelo');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Curso (data_inicio, data_fim, qtde_horas, ementa, seq_atividade, cod_evento)
    VALUES
        ('2021-07-20', '2021-07-20', 4, 'Basico de cozinha', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO Aula (seq_aula, data, hora_inicio, hora_fim, titulo, seq_atividade, cod_evento)
    VALUES 
        (1, '2021-07-20', '15:00:00', '16:00:00', 'Aula de como fazer pão com ovo', 1, CURRVAL('evento_cod_evento_seq')),
        (2, '2021-07-20', '16:00:00', '17:00:00', 'Aula de como fazer gelo', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Atividade (seq_atividade, cod_evento, local, titulo, num_vagas, tipo)
    VALUES
        (2, CURRVAL('evento_cod_evento_seq'), 'Mesa 2', 'Competição de fazer ovo e gelo', 20, 'Competição');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (1, 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (2, 300, 'ingredientes', '2021-07-19', 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('150 ovos', 'ingrediente', 'Ovos');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('4L de água', 'ingrediente', 'Água pra gelo');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Competicao (plataforma, link, datetime_inicio, datetime_fim, seq_atividade, cod_evento)
    VALUES
        ('cozinha', 'presencial', '2021-07-21 13:00:00', '2021-07-21 17:00:00', 2, CURRVAL('evento_cod_evento_seq'));

-- Inscricoes

INSERT INTO
    EventoInscricao (id_usuario, cod_evento)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq')),
        (2, CURRVAL('evento_cod_evento_seq')),
        (4, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeInscricao (cod_inscricao_evento, seq_atividade, cod_evento, link_avaliacao, descricao_avaliacao)
    VALUES
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 1 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce fez o ovo?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce fez o ovo?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 4 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce fez o ovo?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 1 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce fez o ovo?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce fez o ovo?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 4 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce fez o ovo?');

