--crear Tabla Clientes
drop table clientes

create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	edad int,
	constraint clientes_pk primary key (cedula)
)
--insertar datos en la tabla y en cada columna
insert into clientes (cedula, nombre, apellido)
values ('1150626693', 'David', 'Burneo')

--recuperar datos de la tabla
select cedula, nombre, apellido from clientes
--traer todas la columnas sin esepcion 
select * from clientes