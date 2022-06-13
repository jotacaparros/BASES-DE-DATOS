CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicio13(Productos)` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
-- Declaro la variable
DECLARE descripcion TEXT;
-- Añado a la variable la información que se va a registrar
SET descripcion := CONCAT_WS(' ', 'ACTUALIZACION DE PRODUCTOS OLD: CODIGO(',OLD.codigo,
 ') PRODUCTO(',OLD.PRODUCTO,') PRECIO(', OLD.PRECIO,') CALIDAD(', OLD.CALIDAD,
 ') ESTRELLAS(', OLD.ESTRELLAS, ') A PRODUCTOS NEW: CODIGO(', NEW.CODIGO,')
 PRODUCTO(',NEW.PRODUCTO,') PRECIO(', NEW.PRECIO,') CALIDAD(', NEW.CALIDAD,
 ') ESTRELLAS(', NEW.ESTRELLAS,')');

-- Ahora agregamos una fila al registro
INSERT INTO log VALUES(DEFAULT, NOW(), CURRENT_USER, descripcion);

END