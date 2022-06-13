DROP TRIGGER IF EXISTS ejercicio2d;

DELIMITER // 

CREATE TRIGGER ejercicio2d AFTER UPDATE ON puesto FOR EACH ROW
BEGIN
IF (NEW.salario_base != OLD.salario_base) THEN
UPDATE empleado SET salario = NEW.salario_base + (anyos_exp * 50) WHERE puesto = NEW.id;
UPDATE departamento AS d SET suma_salarios = (SELECT SUM(salario) FROM empleado WHERE departamento = d.id);
END IF;
END //

INSERT INTO empleado VALUES('666', "aaaaa",0, 1, 1, 1300);
UPDATE puesto SET salario_base = 1400 WHERE id = 1;
SELECT * FROM empleado;
SELECT * FROM departamento; 
