
CREATE OR REPLACE FUNCTION deleta_dependentes_evento()
RETURNS TRIGGER AS
$$

BEGIN

DELETE FROM Atividade
WHERE Atividade.cod_evento = OLD.cod_evento;

DELETE FROM EventoGasto 
WHERE EventoGasto.cod_evento = OLD.cod_evento;

DELETE FROM Patrocinio
WHERE Patrocinio.cod_evento = OLD.cod_evento;


RETURN OLD;

END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER deletaDependentesEvento
BEFORE DELETE ON Evento FOR EACH ROW
EXECUTE FUNCTION deleta_dependentes_evento();
