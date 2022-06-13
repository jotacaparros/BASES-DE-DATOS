DELIMITER //
CREATE FUNCTION compararPrecios(minimo DOUBLE, maximo DOUBLE) RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE resultado INT;
	SELECT Count(*) FROM productos Where Precio between minimo and maximo INTO resultado;
	RETURN resultado;
END

//


