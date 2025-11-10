--script 3
create table estudiantes(
	cedula char(10) not null,
	nombre varChar(50) not null,
	apellido varChar(50) not null,
	email varChar(50) not null,
	fecha_nacimiento date,
	constraint estudiantes_pk primary key (cedula)
)
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1122334455', 'Pedro', 'Ramirez', 'pedro@mail.com', '02/11/1970')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1122334456', 'Juan', 'Contreras', 'juan@mail.com', '03/12/1971')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1122334457', 'Marcos', 'Zambrano', 'marcos@mail.com', '29/10/1973')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1122334458', 'Mateo', 'Vera', 'mate@mail.com', '09/01/1990')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1122334459', 'Lucas', 'Fernandez', 'lucas@mail.com', '31/05/2004')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1122334460', 'Jose', 'Peralta', 'jose@mail.com', '23/04/2005')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1122334461', 'Damian', 'Corleone', 'damian@mail.com', '13/09/2006')
insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento)
values ('1122334462', 'David', 'Burneo', 'david@mail.com', '25/07/2005')
