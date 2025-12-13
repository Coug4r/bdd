create Table ventas (
	id_ventas int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_ventas)
)

delete from productos

select * from productos
select * from ventas
alter table ventas
add constraint ventas_productos_fk
foreign key (codigo_producto)
references productos(codigo)

INSERT INTO ventas VALUES (1, 1001, '2022-01-12', 5); -- cantidad = 5
INSERT INTO ventas VALUES (2, 1002, '2022-02-15', 3);
INSERT INTO ventas VALUES (3, 1003, '2022-03-20', 2);
INSERT INTO ventas VALUES (4, 1004, '2022-04-10', 4);
INSERT INTO ventas VALUES (5, 1005, '2022-05-05', 1);
INSERT INTO ventas VALUES (6, 1006, '2022-06-18', 6);
INSERT INTO ventas VALUES (7, 1007, '2022-07-22', 2);
INSERT INTO ventas VALUES (8, 1008, '2022-08-30', 3);
INSERT INTO ventas VALUES (9, 1009, '2022-09-14', 7);
INSERT INTO ventas VALUES (10, 1010, '2022-10-01', 4);
	
INSERT INTO productos VALUES (1001, 'Manzanas', 'Manzanas rojas', money(0.50), 10); -- contiene 'm'
INSERT INTO productos VALUES (1002, 'Tomates', 'Tomates frescos', money(0.60), 15); -- contiene 'm'
INSERT INTO productos VALUES (1003, 'Limones', 'Limones verdes', money(0.40), 20); -- contiene 'm'
INSERT INTO productos VALUES (1004, 'Peras', 'Peras dulces', money(0.55), 12);
INSERT INTO productos VALUES (1005, 'Uvas', 'Uvas moradas', money(0.70), 18);
INSERT INTO productos VALUES (1006, 'Bananas', 'Bananas maduras', money(0.45), 25);
INSERT INTO productos VALUES (1007, 'Papayas', 'Papayas tropicales', money(0.65), 10);
INSERT INTO productos VALUES (1008, 'Sandías', NULL, money(0.80), 8); -- descripción NULL
INSERT INTO productos VALUES (1009, 'Kiwi', 'Kiwi importado', money(0.90), 5);
INSERT INTO productos VALUES (1010, 'Melón', 'Melón fresco', money(0.75), 14); -- contiene 'm'