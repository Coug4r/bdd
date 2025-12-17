---USUARIOS y GRUPO---
create table usuarios (
	id_usuario int not null,
	nombre varchar(50) not null,
	apellido varchar(25) not null,
	fecha_nacimiento DATE,
	constraint usuarios_pk primary key(id_usuario)
)
create table grupo(
	id_grupo int not null,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion DATE,
	constraint grupo_pk primary key(id_grupo)
)
create table usuario_grupo (
	us_id int not null ,
	gr_id int not null ,
	constraint usuario_fk foreign key(us_id) references usuarios(id_usuario),
	constraint grupo_fk foreign key(gr_id) references grupo(id_grupo),
	constraint usuario_grupo_pk primary key(us_id, gr_id)
)
---HABITACIONES y GUESPEDES---
create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key(habitacion_numero)
)
create table huespedes(
	id_huespedes int not null,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key(id_huespedes)
)

create table reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion int not null,
	huesped_id int not null,
	constraint habitaciones_fk foreign key(habitacion) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key(huesped_id)references huespedes(id_huespedes),
	constraint reservas_pk primary key(habitacion, huesped_id)
)

---MUNICIPIO y PROYECTO---
create table ciudad(
	id_ciudad int not null,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key(id_ciudad)
)
create table municipio(
	id_municipio int not null,
	nombre varchar(45) not null,
	ciudad_id int,
	constraint municipio_pk primary key(id_municipio),
	constraint ciudad_fk foreign key(ciudad_id) references ciudad(id_ciudad)
)
create table proyecto(
	id_proyecto int not null,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date ,
	fecha_entrega date,
	constraint proyecto_pk primary key(id_proyecto)
)

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key(municipio_id) references municipio(id_municipio),
	constraint proyecto_fk foreign key(proyecto_id) references proyecto(id_proyecto),
	constraint proyecto_municipio_pk primary key(municipio_id, proyecto_id)
)
