CREATE DEFINER = CURRENT_USER TRIGGER `Q3ERP`.`verificarPrecioPositivoModificado` AFTER UPDATE ON `productos` FOR EACH ROW
BEGIN
	IF(NEW.precio < 0) THEN
		SET OLD.precio := 0;
    END IF;
END
