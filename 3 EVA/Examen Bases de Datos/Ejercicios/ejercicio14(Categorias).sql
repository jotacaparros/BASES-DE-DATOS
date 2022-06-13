CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicio14(Categorias)` AFTER DELETE ON `categorias` FOR EACH ROW BEGIN

-- La tabla log tiene una celda que se llama descripción y es de tipo varchar, vamos a meter ahí la información en el momento de eliminar
DECLARE descripcion TEXT;
-- Ahora añadimos a la variable la información 
SET descripcion := concat_ws(' ', ' Se ha eliminado la categoria: ', OLD.CATEGORIA);
-- Metemos esta variable en otra fila log
INSERT INTO log VALUES(default, NOW(), CURRENT_USER, descripcion);
END