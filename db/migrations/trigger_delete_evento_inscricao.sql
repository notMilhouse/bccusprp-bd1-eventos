
CREATE OR REPLACE FUNCTION deleta_dependentes_evento_inscricao()
RETURNS TRIGGER AS
$$

BEGIN

DELETE FROM AtividadeInscricao
WHERE atividadeinscricao.cod_inscricao_evento = OLD.cod_inscricao_evento;


RETURN OLD;

END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER deletaDependentesEventoInscricao
BEFORE DELETE ON eventoinscricao FOR EACH ROW
EXECUTE FUNCTION deleta_dependentes_evento_inscricao();
