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


select * from estudiantes where fecha_nacimiento >= '31/05/2004'
---Se puede usar operadores relacionales y el betweenn para comparar dos valores
select * from estudiantes where fecha_nacimiento between '01/01/2000' and '31/05/2004'

---Los % serian los valores indeterminados al poner el caracter antes o despues de el % 
--SE OBTIENE la respuesta
select * from estudiantes 
where nombre like '%a%'

select * from estudiantes 
where cedula like '%5%'

---Buscar un null
select * from estudiantes 
where fecha_nacimiento is null

---Buscar con operador "diferente" (<> o !=) este operador no trae valores null
select * from estudiantes where nombre <> 'David'
select * from estudiantes where cedula != '1122334456'

---Actualizar tabla---
update estudiantes set cedula = '1150626693'
where cedula = '1122334462'
---Actualizar null---
update estudiantes set cedula = '1150626693'
where cedula is null
---Actualizar varios valores---
update estudiantes set email = 'francisco@gmail.com', fecha_nacimiento = '15/10/2004'
where cedula = '1150626693'

---Eliminaciones--- NO HACER DELETE SIN WHERE NI UPDATE SIN WHERE
delete from clientes 
where cedula = '1150626693'
select * from clientes

insert into estudiantes (cedula, nombre, apellido, email)
values ('112312313','Pedro', 'Ludena','pedro@gmail')