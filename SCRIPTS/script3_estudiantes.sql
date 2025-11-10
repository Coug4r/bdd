--script 3
create table estudiantes(
	cedula char(10) not null,
	nombre varChar(50) not null,
	apellido varChar(50) not null,
	email varChar(50) not null,
	fecha_nacimiento date,
	constraint estudiantes_pk primary key (cedula)
)