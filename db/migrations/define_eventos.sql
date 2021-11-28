-- -----------------------------------------------------
-- Table Usuario
-- -----------------------------------------------------
DROP TABLE IF EXISTS Usuario ;

CREATE TABLE IF NOT EXISTS Usuario (
  id_usuario SERIAL NOT NULL,
  nome TEXT NULL,
  senha VARCHAR(100) NULL,
  email TEXT NULL,
  data_nascimento DATE NOT NULL,
  cpf VARCHAR(11) NULL,
  is_adm BOOLEAN NULL,
  PRIMARY KEY (id_usuario)
  
);

-- -----------------------------------------------------
-- Table Evento
-- -----------------------------------------------------
DROP TABLE IF EXISTS Evento ;

CREATE TABLE IF NOT EXISTS Evento (
  cod_evento SERIAL NOT NULL,
  datetime_inicio TIMESTAMP NOT NULL,
  datetime_fim TIMESTAMP NOT NULL,
  local TEXT NULL,
  titulo TEXT NULL,
  descricao TEXT NULL,
  PRIMARY KEY (cod_evento)
  
);


-- -----------------------------------------------------
-- Table EventoGasto
-- -----------------------------------------------------
DROP TABLE IF EXISTS EventoGasto ;

CREATE TABLE IF NOT EXISTS EventoGasto (
  seq_gasto_evento INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  valor FLOAT NULL,
  destino TEXT NULL,
  data DATE NOT NULL,
  PRIMARY KEY (seq_gasto_evento, cod_evento),
  CONSTRAINT cod_evento
    FOREIGN KEY (cod_evento)
    REFERENCES Evento (cod_evento)

);

-- -----------------------------------------------------
-- Table EventoInscricao
-- -----------------------------------------------------
DROP TABLE IF EXISTS EventoInscricao ;

CREATE TABLE IF NOT EXISTS EventoInscricao (
  cod_inscricao_evento SERIAL NOT NULL,
  id_usuario INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  is_certified BOOLEAN NULL,
  PRIMARY KEY (cod_inscricao_evento),
  CONSTRAINT cod_evento
    FOREIGN KEY (cod_evento)
    REFERENCES Evento (cod_evento),

  CONSTRAINT id_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES Usuario (id_usuario)

);


-- -----------------------------------------------------
-- Table Atividade
-- -----------------------------------------------------
DROP TABLE IF EXISTS Atividade ;

CREATE TABLE IF NOT EXISTS Atividade (
  cod_evento INTEGER NOT NULL,
  seq_atividade INTEGER NOT NULL,
  local TEXT NULL,
  titulo TEXT NULL,
  num_vagas INTEGER NULL,
  tipo VARCHAR(15) NULL,
  PRIMARY KEY (seq_atividade, cod_evento),
  CONSTRAINT cod_evento
    FOREIGN KEY (cod_evento)
    REFERENCES Evento (cod_evento)

);



-- -----------------------------------------------------
-- Table AtividadeInscricao
-- -----------------------------------------------------
DROP TABLE IF EXISTS AtividadeInscricao ;

CREATE TABLE IF NOT EXISTS AtividadeInscricao (
  cod_inscricao_evento INTEGER NOT NULL,
  status_avaliacao BOOLEAN NULL,
  link_avaliacao VARCHAR(45) NULL,
  descricao_avaliacao TEXT NULL,
  is_certified BOOLEAN NULL,
  seq_atividade INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  PRIMARY KEY (cod_inscricao_evento, seq_atividade, cod_evento),
  CONSTRAINT cod_inscricao
    FOREIGN KEY (cod_inscricao_evento)
    REFERENCES EventoInscricao (cod_inscricao_evento),

  CONSTRAINT fk_AtividadeInscricao_Atividade1
    FOREIGN KEY (seq_atividade , cod_evento)
    REFERENCES Atividade (seq_atividade , cod_evento)

);


-- -----------------------------------------------------
-- Table Parceiro
-- -----------------------------------------------------
DROP TABLE IF EXISTS Parceiro ;

CREATE TABLE IF NOT EXISTS Parceiro (
  id_parceiro SERIAL NOT NULL,
  nome TEXT NULL,
  email TEXT NULL,
  PRIMARY KEY (id_parceiro)
  
);


-- -----------------------------------------------------
-- Table ParceiroTelefone
-- -----------------------------------------------------
DROP TABLE IF EXISTS ParceiroTelefone ;

CREATE TABLE IF NOT EXISTS ParceiroTelefone (
  id_parceiro INTEGER NOT NULL,
  telefone VARCHAR(25) NOT NULL,
  PRIMARY KEY (id_parceiro, telefone),
  CONSTRAINT id_parceiro
    FOREIGN KEY (id_parceiro)
    REFERENCES Parceiro (id_parceiro)

);


-- -----------------------------------------------------
-- Table Patrocinador
-- -----------------------------------------------------
DROP TABLE IF EXISTS Patrocinador ;

CREATE TABLE IF NOT EXISTS Patrocinador (
  id_patrocinador SERIAL NOT NULL,
  email TEXT NULL,
  nome TEXT NULL,
  PRIMARY KEY (id_patrocinador)

);


-- -----------------------------------------------------
-- Table PatrocinadorContato
-- -----------------------------------------------------
DROP TABLE IF EXISTS PatrocinadorContato ;

CREATE TABLE IF NOT EXISTS PatrocinadorContato (
  id_patrocinador INTEGER NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  PRIMARY KEY (id_patrocinador, telefone),
  CONSTRAINT id_patrocinador
    FOREIGN KEY (id_patrocinador)
    REFERENCES Patrocinador (id_patrocinador)

);


-- -----------------------------------------------------
-- Table Patrocinio
-- -----------------------------------------------------
DROP TABLE IF EXISTS Patrocinio ;

CREATE TABLE IF NOT EXISTS Patrocinio (
  seq_patrocinio INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  valor FLOAT NULL,
  data DATE NULL,
  id_patrocinador INTEGER NOT NULL,
  PRIMARY KEY (seq_patrocinio, cod_evento),
  CONSTRAINT cod_evento
    FOREIGN KEY (cod_evento)
    REFERENCES Evento (cod_evento),

  CONSTRAINT id_patrocinador
    FOREIGN KEY (id_patrocinador)
    REFERENCES Patrocinador (id_patrocinador)

);


-- -----------------------------------------------------
-- Table Material
-- -----------------------------------------------------
DROP TABLE IF EXISTS Material ;

CREATE TABLE IF NOT EXISTS Material (
  id_material SERIAL NOT NULL,
  conteudo TEXT NULL,
  tipo VARCHAR(25) NULL,
  titulo VARCHAR(50) NULL,
  PRIMARY KEY (id_material)

);


-- -----------------------------------------------------
-- Table AtividadeMaterial
-- -----------------------------------------------------
DROP TABLE IF EXISTS AtividadeMaterial ;

CREATE TABLE IF NOT EXISTS AtividadeMaterial (
  id_material INTEGER NOT NULL,
  seq_atividade INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  PRIMARY KEY (id_material, seq_atividade, cod_evento),
  CONSTRAINT id_material
    FOREIGN KEY (id_material)
    REFERENCES Material (id_material),

  CONSTRAINT fk_AtividadeMaterial_Atividade1
    FOREIGN KEY (seq_atividade , cod_evento)
    REFERENCES Atividade (seq_atividade , cod_evento)

);


-- -----------------------------------------------------
-- Table AtividadeGasto
-- -----------------------------------------------------
DROP TABLE IF EXISTS AtividadeGasto ;

CREATE TABLE IF NOT EXISTS AtividadeGasto (
  seq_gasto_atividade INTEGER NOT NULL,
  valor FLOAT NULL,
  destino VARCHAR(45) NULL,
  data DATE NOT NULL,
  seq_atividade INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  PRIMARY KEY (seq_gasto_atividade, seq_atividade, cod_evento),
  CONSTRAINT fk_AtividadeGasto_Atividade1
    FOREIGN KEY (seq_atividade , cod_evento)
    REFERENCES Atividade (seq_atividade , cod_evento)

);


-- -----------------------------------------------------
-- Table AtividadeParceiro
-- -----------------------------------------------------
DROP TABLE IF EXISTS AtividadeParceiro ;

CREATE TABLE IF NOT EXISTS AtividadeParceiro (
  id_parceiro INTEGER NOT NULL,
  seq_atividade INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  PRIMARY KEY (id_parceiro, seq_atividade, cod_evento),
  CONSTRAINT id_parceiro
    FOREIGN KEY (id_parceiro)
    REFERENCES Parceiro (id_parceiro),

  CONSTRAINT fk_AtividadeParceiro_Atividade1
    FOREIGN KEY (seq_atividade , cod_evento)
    REFERENCES Atividade (seq_atividade , cod_evento)

);



-- -----------------------------------------------------
-- Table Competicao
-- -----------------------------------------------------
DROP TABLE IF EXISTS Competicao ;

CREATE TABLE IF NOT EXISTS Competicao (
  plataforma VARCHAR(45) NULL,
  link VARCHAR(45) NULL,
  datetime_inicio TIMESTAMP NOT NULL,
  datetime_fim TIMESTAMP NOT NULL,
  seq_atividade INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  PRIMARY KEY (seq_atividade, cod_evento),
  CONSTRAINT fk_Competicao_Atividade1
    FOREIGN KEY (seq_atividade, cod_evento)
    REFERENCES Atividade (seq_atividade, cod_evento)

);


-- -----------------------------------------------------
-- Table Curso
-- -----------------------------------------------------
DROP TABLE IF EXISTS Curso ;

CREATE TABLE IF NOT EXISTS Curso (
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  qtde_horas INTEGER NULL,
  ementa TEXT NULL,
  seq_atividade INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  PRIMARY KEY (seq_atividade, cod_evento),
  CONSTRAINT fk_Curso_Atividade1
    FOREIGN KEY (seq_atividade, cod_evento)
    REFERENCES Atividade (seq_atividade, cod_evento)

);


-- -----------------------------------------------------
-- Table Aula
-- -----------------------------------------------------
DROP TABLE IF EXISTS Aula ;

CREATE TABLE IF NOT EXISTS Aula (
  seq_aula INTEGER NOT NULL,
  data DATE NOT NULL,
  hora_inicio TIME NOT NULL,
  hora_fim TIME NOT NULL,
  titulo VARCHAR(100) NULL,
  seq_atividade INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  PRIMARY KEY (seq_aula, seq_atividade, cod_evento),
  CONSTRAINT fk_Aula_Curso1
    FOREIGN KEY (seq_atividade, cod_evento)
    REFERENCES Curso (seq_atividade, cod_evento)

);


-- -----------------------------------------------------
-- Table Palestra
-- -----------------------------------------------------
DROP TABLE IF EXISTS Palestra ;

CREATE TABLE IF NOT EXISTS Palestra (
  resumo TEXT NULL,
  data DATE NOT NULL,
  hora_inicio TIME NOT NULL,
  hora_fim TIME NOT NULL,
  seq_atividade INTEGER NOT NULL,
  cod_evento INTEGER NOT NULL,
  PRIMARY KEY (seq_atividade, cod_evento),
  CONSTRAINT fk_Palestra_Atividade1
    FOREIGN KEY (seq_atividade, cod_evento)
    REFERENCES Atividade (seq_atividade, cod_evento)

);

