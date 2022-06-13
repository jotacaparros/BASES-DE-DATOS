CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicioExamen5` BEFORE INSERT ON `productos` FOR EACH ROW BEGIN
DECLARE precioMax INT;
SELECT MAX(precio) FROM productos INTO precioMax;
IF (NEW.precio - precioMax > 200) THEN
	SET NEW.precio = precioMax + 200;
END IF;
END