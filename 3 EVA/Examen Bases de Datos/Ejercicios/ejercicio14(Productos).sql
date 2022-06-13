CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicio14(Productos)` AFTER DELETE ON `productos` FOR EACH ROW BEGIN
DECLARE descripcion TEXT;
SET descripcion := concat_ws(' ', ' Se ha eliminado el siguiente producto: ', OLD.producto);
INSERT INTO log VALUES(DEFAULT, NOW(), CURRENT_USER, descripcion);

END