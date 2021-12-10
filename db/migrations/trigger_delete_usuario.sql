
CREATE OR REPLACE FUNCTION deleta_dependentes_usuario()
RETURNS TRIGGER AS
$$

BEGIN

DELETE FROM eventoinscricao
WHERE eventoinscricao.id_usuario = OLD.id_usuario;

RETURN OLD;

END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER deletaDependentesUsuario
BEFORE DELETE ON usuario FOR EACH ROW
EXECUTE FUNCTION deleta_dependentes_usuario();
