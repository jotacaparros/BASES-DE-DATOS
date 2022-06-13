CREATE DEFINER=CURRENT_USER TRIGGER categorias_trigger AFTER UPDATE ON categoria FOR EACH ROW
BEGIN

	INSERT INTO log (categoria_id, categoria)
	VALUES (NOW(), USER(), CONCAT('UPDATE PRODUCTOS: ', ' OLD (', OLD.categoria_id, ', ' , OLD.categoria, ')', ' NEW (', NEW.categoria_id, '. ' , NEW.categoria, ')'));
 END
 