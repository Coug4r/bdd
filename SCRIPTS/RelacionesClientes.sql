create table compras(
	id_compra int,
	cedula char(10) not null,
	fecha_compra date,
	monto money,
	constraint compras_pk primary key(id_compra)
)

delete from clientes
delete from compras

select * from compras
select * from clientes

alter table compras
add constraint clientes_compras_fk
foreign key (cedula)
references clientes(cedula)

INSERT INTO clientes VALUES ('1000000000', 'David', 'Burneo', 20, 'C')
INSERT INTO clientes VALUES ('1723456789', 'Carlos', 'Mendez');
INSERT INTO clientes VALUES ('1876543210', 'Lucia', 'Vega');
INSERT INTO clientes VALUES ('1928374650', 'Monica', 'Lopez');
INSERT INTO clientes VALUES ('1234567897', 'Jorge', 'Ramirez');
INSERT INTO clientes VALUES ('1472583690', 'Ana', 'Torres');
INSERT INTO clientes VALUES ('1007070707', 'Luis', 'Martinez');
INSERT INTO clientes VALUES ('7654321098', 'Valeria', 'Mendoza');
INSERT INTO clientes VALUES ('1700000001', 'Diego', 'Castro');
INSERT INTO clientes VALUES ('1777777777', 'Sofia', 'Rojas');

INSERT INTO compras  VALUES (1, '1000000000', '2022-09-15', money(300));
INSERT INTO compras  VALUES (2, '1723456789', '2022-01-05', money(500));
INSERT INTO compras  VALUES (3, '1876543210', '2022-08-22', money(100));
INSERT INTO compras  VALUES (4, '1928374650', '2022-02-11', money(600));
INSERT INTO compras  VALUES (5, '1234567897', '2022-12-01', money(800));
INSERT INTO compras  VALUES (6, '1472583690', '2021-12-25', money(700));
INSERT INTO compras  VALUES (7, '1007070707', '2021-02-15', money(70));
INSERT INTO compras  VALUES (8, '7654321098', '2022-03-10', money(500));
INSERT INTO compras  VALUES (9, '1700000001', '2022-04-30', money(900));
INSERT INTO compras  VALUES (10, '1777777777', '2022-05-23', money(900));