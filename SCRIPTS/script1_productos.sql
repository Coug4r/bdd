--script 1 
create table productos(
	codigo int,
	nombre varChar(50) not null,
	descripcion varChar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
insert into productos (codigo, nombre, descripcion, precio, stock)
values ('111', 'manzana', 'Manzana jugosa', 2.99, 10)
insert into productos (codigo, nombre, descripcion, precio, stock)
values ('121', 'pera', 'Pera jugosa', 2.00, 20)
insert into productos (codigo, nombre, descripcion, precio, stock)
values ('131', 'platano', 'Platano verde', 0.45, 100)
insert into productos (codigo, nombre, descripcion, precio, stock)
values ('141', 'Uva', 'Uvas jugosas', 2.30, 50)
insert into productos (codigo, nombre, descripcion, precio, stock)
values ('151', 'Papaya', 'Papaya jugosa', 4, 5)

insert into productos (codigo, nombre, precio, stock)
values ('161', 'Jamon', 3.99, 30)
insert into productos (codigo, nombre, precio, stock)
values ('171', 'Chuleta', 6.50, 30)
insert into productos (codigo, nombre, precio, stock)
values ('181', 'Salami', 2.99, 20)

