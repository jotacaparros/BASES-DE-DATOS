CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicio13Categorias` AFTER UPDATE ON `categorias` FOR EACH ROW BEGIN
	DECLARE descripcion TEXT;
    SET descripcion := CONCAT_WS(' ', 'UPDATE ON categorias. OLD: (', OLD.categoria,')','NEW: (', NEW.categoria, ')');
    INSERT INTO log VALUES(DEFAULT, NOW(), CURRENT_USER, descripcion); 
END