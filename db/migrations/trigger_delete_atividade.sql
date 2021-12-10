CREATE OR REPLACE FUNCTION deleta_dependentes_atividade()
RETURNS TRIGGER AS
$$

BEGIN

DELETE FROM AtividadeParceiro
WHERE cod_evento = OLD.cod_evento AND seq_atividade = OLD.seq_atividade;

DELETE FROM AtividadeInscricao
WHERE cod_evento = OLD.cod_evento AND seq_atividade = OLD.seq_atividade;

DELETE FROM AtividadeMaterial
WHERE cod_evento = OLD.cod_evento AND seq_atividade = OLD.seq_atividade;

DELETE FROM Aula
WHERE cod_evento = OLD.cod_evento AND seq_atividade = OLD.seq_atividade;

DELETE FROM Curso
WHERE cod_evento = OLD.cod_evento AND seq_atividade = OLD.seq_atividade;

DELETE FROM AtividadeGasto 
WHERE cod_evento = OLD.cod_evento AND seq_atividade = OLD.seq_atividade;

DELETE FROM Palestra 
WHERE cod_evento = OLD.cod_evento AND seq_atividade = OLD.seq_atividade;

DELETE FROM Competicao 
WHERE cod_evento = OLD.cod_evento AND seq_atividade = OLD.seq_atividade;

RETURN OLD;

END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER deletaDependentesAtividade
BEFORE DELETE ON Atividade FOR EACH ROW 
EXECUTE FUNCTION deleta_dependentes_atividade();
