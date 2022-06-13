CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicioExamen1` AFTER INSERT ON `alumno` FOR EACH ROW BEGIN
UPDATE grupo SET num_alumnos = num_alumnos + 1 WHERE grupo.id = new.grupo;

END