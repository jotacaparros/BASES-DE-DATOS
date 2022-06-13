CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicioExamen6` BEFORE INSERT ON `clientes` FOR EACH ROW BEGIN
DECLARE idMaxima INT;
SELECT MAX(id) FROM clientes INTO idMaxima;
-- ES is Y no "=" porque no puedes comparar con un puto null.
IF(idMaxima is null) THEN
	SET NEW.id = 1;
ELSE     
SET	NEW.id = idMaxima + 1;

END IF;

END