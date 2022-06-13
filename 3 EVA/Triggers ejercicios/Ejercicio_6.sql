Drop trigger if exists ejercicio_6;
Delimiter //
create trigger ejercicio_6 before update on productos for each row
begin
DECLARE contador INT DEFAULT 0;
DECLARE numero INT DEFAULT 0;
REPEAT

 SET contador := contador + 1;
 SET numero := numero + contador;
UNTIL (contador > 5)
END REPEAT;
end //
delimiter ; 