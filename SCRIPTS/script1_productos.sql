--script 1 
create table productos(
	codigo int,
	nombre varChar(50) not null,
	descripcion varChar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)