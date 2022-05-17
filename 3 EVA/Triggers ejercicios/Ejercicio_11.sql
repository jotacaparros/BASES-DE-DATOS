Drop trigger if exists ejercicio_11;
Delimiter //
create trigger ejercicio_11 before insert on productos for each row
begin
	if (new.precio < 0) then
     set new.precio = 0;
     end if;
end //
delimiter ; 