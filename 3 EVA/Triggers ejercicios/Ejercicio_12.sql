Drop trigger if exists ejercicio_12;
Delimiter //
create trigger ejercicio_12 after update on productos for each row
begin
	if (new.precio < 0) then
     set new.precio = 0;
     end if;
end //
delimiter ; 