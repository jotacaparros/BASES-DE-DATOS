

CREATE DEFINER = CURRENT_USER TRIGGER `Q3ERP`.`ejercicio_11` BEFORE INSERT ON `productos` FOR EACH ROW
BEGIN
IF(NEW.precio < 0) THEN
	SET NEW.precio := 0;
END IF;
END
