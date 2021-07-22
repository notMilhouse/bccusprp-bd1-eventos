INSERT INTO 
    Evento (titulo, datetime_inicio, datetime_fim, local, descricao)
    VALUES
        ('Latinoware', '2021-08-20 7:00:00', '2021-08-22 20:00:00', 'FAFIG - Foz do Iguaçu, Paraná', 'Congresso Latino-Americano de Software Livre e Tecnologias Abertas');

INSERT INTO
    Patrocinador (email, nome)
    VALUES
        ('linuxclose@email.com', 'Linux International');

INSERT INTO
    PatrocinadorContato (id_patrocinador, telefone)
    VALUES
        (CURRVAL('patrocinador_id_patrocinador_seq'), '1 78864523');

INSERT INTO
    Patrocinio (seq_patrocinio, cod_evento, valor, data, id_patrocinador)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 15000.0, '2021-03-15', CURRVAL('patrocinador_id_patrocinador_seq'));

INSERT INTO
    EventoGasto (seq_gasto_evento, cod_evento, valor, destino)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 300.0, 'Emissão de ingresso'),
        (2, CURRVAL('evento_cod_evento_seq'), 1000.0, 'Funcionários');

INSERT INTO
    Atividade (seq_atividade, cod_evento, local, titulo, num_vagas, tipo)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 'Bloco A', 'O Sucesso do Linux', 800, 'Palestra'),
        (2, CURRVAL('evento_cod_evento_seq'), 'Bloco B', 'Fundamentos do Software Livre', 200, 'Curso'),
        (3, CURRVAL('evento_cod_evento_seq'), 'Biblioteca', 'Implementação de Software Livre ', 200, 'Competicao');
-- ---------------------------------------------------------------------------------------------------------------------------------------
-- tabelas relaciondas a atividade 1
-- ---------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO 
    Parceiro (nome, email)
    VALUES
        ('Prof. Dr. Arissu Tsuka', 'Tsukarissu@email.com');

INSERT INTO 
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), ' 1 51919198');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (1, 150, 'Alimentação palestrante', '2021-08-20', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('Apresentação em texto', 'Slide', 'O Sucesso do Linux');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Palestra (resumo, data, hora_inicio, hora_fim ,seq_atividade, cod_evento)
VALUES
    ('O professor doutor Arissu Tsuka vai apresentar os principais pontos que levaram o linux ao sucesso', '2021-08-20', '8:00:00', '10:00:00', 1, CURRVAL('evento_cod_evento_seq'));
    
-- ---------------------------------------------------------------------------------------------------------------------------------------
-- tabelas relaciondas a atividade 2
-- ---------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO 
    Parceiro (nome, email)
    VALUES
        ('Profa. Dra. Robin Scherbatsky', 'RobinS@email.com');

INSERT INTO 
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), ' 1 89596632');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (1, 145, 'Transporte da professora', '2021-08-20', 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('Apostila de Fundamentos', 'pdf', 'Apostila de fundamentos de software livre');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Curso (data_inicio, data_fim, qtde_horas, ementa, seq_atividade, cod_evento)
    VALUES
        ('2021-08-20', '2021-07-21', 10, 'curso para apresentar aos participantes a teoria basica de software livre e suas aplicações', 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO Aula (seq_aula, data, hora_inicio, hora_fim, titulo, seq_atividade, cod_evento)
    VALUES 
        (1, '2021-08-20', '15:00:00', '20:00:00', 'Motivações, História e Aplicação do Software Livre ', 2, CURRVAL('evento_cod_evento_seq')),
        (2, '2021-08-21', '15:00:00', '20:00:00', 'Implementação e Teoria de Desenvolvimento do SOftware Livre', 2, CURRVAL('evento_cod_evento_seq'));


-- ---------------------------------------------------------------------------------------------------------------------------------------
-- tabelas relaciondas a atividade 3
-- ---------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (1, 1500, 'Premiação do grupo melhor colocado', '2021-08-22', 3, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('Apresentação da proposta do hackathon, inpirações e instruções.', 'pdf', 'Hackathon Latinoware 2021');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 3, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Competicao (plataforma, link, datetime_inicio, datetime_fim, seq_atividade, cod_evento)
    VALUES
        ('IDE da preferência', 'presencial', '2021-08-22 8:00:00', '2021-08-22 20:00:00', 3, CURRVAL('evento_cod_evento_seq'));

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- inscricoes
-- ---------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO
    EventoInscricao (id_usuario, cod_evento)
    VALUES
        (2, CURRVAL('evento_cod_evento_seq')),
        (3, CURRVAL('evento_cod_evento_seq')),
        (4, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeInscricao (cod_inscricao_evento, seq_atividade, cod_evento, link_avaliacao, descricao_avaliacao)
    VALUES
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.formsLatinoW.com', 'Qual o ponto discutido como primordial para alavancar o linux?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.formsLatinoW.com', 'Qual o ponto discutido como primordial para alavancar o linux?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 4 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.formsLatinoW.com', 'Qual o ponto discutido como primordial para alavancar o linux?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.formsLatinoW.com', 'Faça uma breve redação dos fundamentos do software livre'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 3 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.formsLatinoW.com', 'Faça uma breve redação dos fundamentos do software livre'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 4 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.formsLatinoW.com', 'Faça uma breve redação dos fundamentos do software livre');
       

