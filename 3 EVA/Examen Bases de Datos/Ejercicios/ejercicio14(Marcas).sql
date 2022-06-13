CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicio14(Marcas)` AFTER DELETE ON `marcas` FOR EACH ROW BEGIN
DECLARE descripcion TEXT;
SET descripcion := CONCAT_ws(' ', 'Se ha eliminado la marca: ', OLD.marca);
INSERT INTO log VALUES(default, NOW(), CURRENT_USER, descripcion);

END