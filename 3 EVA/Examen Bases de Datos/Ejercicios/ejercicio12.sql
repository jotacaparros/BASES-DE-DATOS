CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicio12` BEFORE UPDATE ON `productos` FOR EACH ROW BEGIN
IF(NEW.precio < 0) THEN
	SET NEW.precio := 0;
END IF;
END