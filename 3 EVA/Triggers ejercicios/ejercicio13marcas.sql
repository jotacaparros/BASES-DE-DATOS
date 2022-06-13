INSERT marcas SET marca = 'ZARA', marca_id = 1;

DROP TRIGGER IF EXISTS registroModificacionMarcas;

DELIMITER //
CREATE DEFINER = CURRENT_USER TRIGGER `Q3ERP`.`registroModificacionMarcas` AFTER UPDATE ON `marcas` FOR EACH ROW
BEGIN
	DECLARE descripcion TEXT;
        SET descripcion := concat_ws(' ', 'ACTUALIZACIÓN en marcas OLD:
        (', OLD.marca, ')', 'NEW: (', NEW.marca, ')');
	INSERT INTO log VALUES(DEFAULT, NOW(), current_user(), descripcion);
END//
DELIMITER ;

SELECT * FROM marcas;
UPDATE marcas SET marca = 'HM' WHERE marca_id = 1;
SELECT * FROM log;
