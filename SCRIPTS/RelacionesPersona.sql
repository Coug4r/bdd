create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key(cedula)
)
create table persona(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key(cedula)
)

select * from prestamo

alter table prestamo
add constraint prestamo_persona_fk
foreign key (cedula)
references persona(cedula)

INSERT INTO persona VALUES('1150626693', 'David', 'Burneo', 1.71, '2005-07-25', '12:00', money(2000), 0);
INSERT INTO persona VALUES('1150626694', 'Sean', 'Mendoza', 1.75, '1998-03-22', '09:00', money(1500), 1); -- requisito cumplido
INSERT INTO persona VALUES('1150626695', 'Lucia', 'Torres', 1.65, '1997-06-10', '10:00', money(1800), 0);
INSERT INTO persona VALUES('1150626696', 'Carlos', 'Ramirez', 1.80, '1995-02-18', '11:00', money(2200), 1);
INSERT INTO persona VALUES('1150626697', 'Valeria', 'Gomez', 1.68, '1996-12-05', '08:00', money(1600), 0);

INSERT INTO prestamo VALUES('1150626693', money(200), '2025-12-13', '00:43', 'Gabriela'); -- entre 100 y 1000
INSERT INTO prestamo VALUES('1150626693', money(1200), '2025-12-14', '09:00', 'Luis');
INSERT INTO prestamo VALUES('1150626694', money(500), '2025-11-10', '10:15', 'Carlos'); -- entre 100 y 1000
INSERT INTO prestamo VALUES('1150626695', money(300), '2025-11-20', '12:45', 'Esteban'); -- entre 100 y 1000
INSERT INTO prestamo VALUES('1150626696', money(150), '2025-11-30', '14:15', 'Jorge'); -- entre 100 y 1000
INSERT INTO prestamo VALUES('1150626697', money(850), '2025-12-10', '16:45', 'Pedro'); -- entre 100 y 1000

