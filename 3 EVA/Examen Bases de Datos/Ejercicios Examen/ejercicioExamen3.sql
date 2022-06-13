CREATE DEFINER=`root`@`localhost` TRIGGER `ejercicioExamen3` AFTER UPDATE ON `alumno` FOR EACH ROW BEGIN
IF(OLD.grupo != NEW.grupo) THEN
UPDATE grupo SET num_alumnos = num_alumnos - 1 WHERE grupo.id = OLD.GRUPO;
UPDATE grupo SET num_alumnos = num_alumnos + 1 WHERE grupo.id = NEW.GRUPO;
END IF;
END