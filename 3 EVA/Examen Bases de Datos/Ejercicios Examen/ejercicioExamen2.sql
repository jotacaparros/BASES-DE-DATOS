CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicioExamen2` AFTER DELETE ON `alumno` FOR EACH ROW BEGIN
UPDATE grupo SET num_alumnos = num_alumnos - 1 WHERE grupo.id = OLD.grupo;
END