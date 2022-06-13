CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicio13Marcas` AFTER UPDATE ON `marcas` FOR EACH ROW BEGIN
	-- DECLARO LA VARIABLE descripcion DE TIPO texto 
    DECLARE descripcion TEXT;
    -- AÑADO A LA VARIABLE descripcion TODA LA INFO QUE QUIERO REGISTRAR EN LOG (CONCAT_WS sirve para juntarlo todo)
    SET descripcion := CONCAT_WS(' ', 'ACTUALIZACIÓN EN marcas. OLD: (', OLD.marca, ') NEW: (', NEW.marca, ')');
    -- INSERTO LA VARIABLE descripcion en la tabla log
    INSERT INTO log VALUES(DEFAULT, NOW(), CURRENT_USER, descripcion);
END