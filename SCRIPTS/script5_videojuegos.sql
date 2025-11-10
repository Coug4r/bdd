--script 5
create table videojuegos(
	codigo int not null,
	nombre varChar(100) not null,
	descripcion varChar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)