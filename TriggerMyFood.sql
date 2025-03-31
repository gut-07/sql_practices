delimiter |
create trigger actualizar_inventario
after insert on factura
for each row
begin
	update myfood.inventario
	set cantidad = cantidad - new.cantidad
	where idProducto = new.idProducto;
end
|