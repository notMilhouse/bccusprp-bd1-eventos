INSERT INTO 
    Evento (titulo, datetime_inicio, datetime_fim, local, descricao)
    VALUES
        ('Semana da Computação', '2021-10-21 18:18:18', '2021-10-31 19:19:19', 'Online', 'Semana com palestras de profissionais da computação');

INSERT INTO
    Patrocinador (email, nome)
    VALUES
        ('google@outlook.com', 'Google');

INSERT INTO
    PatrocinadorContato (id_patrocinador, telefone)
    VALUES
        (CURRVAL('patrocinador_id_patrocinador_seq'), '40028922');

INSERT INTO
    Patrocinio (seq_patrocinio, cod_evento, valor, data, id_patrocinador)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 200000.0, '2021-10-21', CURRVAL('patrocinador_id_patrocinador_seq'));
	

INSERT INTO
    EventoGasto (seq_gasto_evento, cod_evento, valor, destino)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 300.0, 'Cafézinho da tarde'),
        (2, CURRVAL('evento_cod_evento_seq'), 1000.0, 'Papel crepom');

INSERT INTO
    Atividade (seq_atividade, cod_evento, local, titulo, num_vagas, tipo)
    VALUES
        (1, CURRVAL('evento_cod_evento_seq'), 'Laboratório de informática', 'Curso de manutenção em computadores', 40, 'Curso');

INSERT INTO 
    Parceiro (nome, email)
    VALUES
        ('Tíbio', 'Tíbio@gmail.com');

INSERT INTO 
    ParceiroTelefone (id_parceiro, telefone)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), '993029941');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('parceiro_id_parceiro_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (1, 300, 'compra pasta térmica', '2021-10-25', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('10 kits de pasta térmica', 'ferramenta', 'pasta térmica');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('10 processadores', 'ferramenta', 'processadores');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Curso (data_inicio, data_fim, qtde_horas, ementa, seq_atividade, cod_evento)
    VALUES
        ('2021-10-29', '2021-10-29', 12, 'Aula de como realizar a substituição da pasta térmica', 1, CURRVAL('evento_cod_evento_seq'));

INSERT INTO Aula (seq_aula, data, hora_inicio, hora_fim, titulo, seq_atividade, cod_evento)
    VALUES 
        (2, '2021-10-30', '16:00:00', '17:00:00', 'Aula de como queimar um processador', 1, CURRVAL('evento_cod_evento_seq'));



INSERT INTO
    Atividade (seq_atividade, cod_evento, local, titulo, num_vagas, tipo)
    VALUES
        (2, CURRVAL('evento_cod_evento_seq'), 'Online', 'Competição de quem troca a pasta térmica de um computador primeiro', 10, 'Competição');

INSERT INTO
    AtividadeParceiro (id_parceiro, seq_atividade, cod_evento)
    VALUES
        (1, 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    AtividadeGasto (seq_gasto_atividade, valor, destino, data, seq_atividade, cod_evento)
    VALUES
        (2, 2000, 'peças', '2021-10-29', 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('10 placas mães', 'peças', 'peças de computadores');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Material (conteudo, tipo, titulo)
    VALUES
        ('10 kits de solda', 'ferramentas', 'solda para soldar');

INSERT INTO
    AtividadeMaterial (id_material, seq_atividade, cod_evento)
    VALUES
        (CURRVAL('material_id_material_seq'), 2, CURRVAL('evento_cod_evento_seq'));

INSERT INTO
    Competicao (plataforma, link, datetime_inicio, datetime_fim, seq_atividade, cod_evento)
    VALUES
        ('laboratório', 'presencial', '2021-10-23 13:00:00', '2021-10-23 17:00:00', 2, CURRVAL('evento_cod_evento_seq'));




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
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 4 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 1, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 1 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 2 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?'),
        ((SELECT cod_inscricao_evento FROM eventoinscricao WHERE id_usuario = 4 AND eventoinscricao.cod_evento = CURRVAL('evento_cod_evento_seq'))
            , 2, CURRVAL('evento_cod_evento_seq'), 'www.forms.com', 'voce prestou atencao?');

