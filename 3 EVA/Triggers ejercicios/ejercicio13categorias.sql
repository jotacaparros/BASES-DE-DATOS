CREATE DEFINER = CURRENT_USER TRIGGER `Q3ERP`.`registroModificacionCategorias` AFTER UPDATE ON `categorias` FOR EACH ROW
BEGIN
	INSERT INTO log (fecha, usuario, descripcion)
    VALUES (NOW(), USER(), CONCAT('UPDATE categorias: ', ' OLD ',( OLD.categoria), 'NEW', (NEW.categroia)));

END
