CREATE DEFINER=CURRENT_USER TRIGGER PROCEDURE 'ejercicio16' (IN nota INT, OUT descripcion VARCHAR(20))
BEGIN
	IF (nota < 0 or nota > 10) THEN
		SET descripcion := 'Nota invalida';
	ELSEIF (nota < 5 ) THEN
		SET descripcion := 'Insuficiente';
	ELSEIF (nota < 6 ) THEN
		SET descripcion := 'Aprobado';
	ELSEIF (nota < 7 ) THEN
		SET descripcion := 'Bien';
	ELSEIF (nota < 9 ) THEN
		SET descripcion := 'Notable';
	ELSEIF (nota <= 10 ) THEN
		SET descripcion := 'Sobresaliente';
	END IF;
    
    END
    ;