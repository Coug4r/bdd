create table profesores(
	codigo int,
	nombre varchar(50) not null,
	constraint Profesores_pk primary key(codigo)
)

delete from estudiantes
select * from estudiantes
select * from profesores

alter table estudiantes
add column codigo_profesor int

alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)

INSERT INTO estudiantes VALUES ('E001', 'Ana', 'Lopez', 'ana@gmail.com', '1990-09-12', 1001);
INSERT INTO estudiantes VALUES ('E002', 'Juan', 'Fernandez', 'juan@gmail.com', '1991-05-22', 1002); -- contiene 'n'
INSERT INTO estudiantes VALUES ('E003', 'Lucia', 'Mendoza', 'lucia@gmail.com', '1992-03-18', 1001); -- contiene 'n'
INSERT INTO estudiantes VALUES ('E004', 'Carlos', 'Gonzalez', 'carlos@gmail.com', '1993-07-10', 1002); -- contiene 'n'
INSERT INTO estudiantes VALUES ('E005', 'Sofia', 'Martinez', 'sofia@gmail.com', '1994-11-05', 1001); -- contiene 'n'
INSERT INTO estudiantes VALUES ('E006', 'Diego', 'Benitez', 'diego@gmail.com', '1995-01-30', 1002); -- contiene 'n'
INSERT INTO estudiantes VALUES ('E007', 'Valeria', 'Torres', 'valeria@gmail.com', '1996-06-14', 1001);
INSERT INTO estudiantes VALUES ('E008', 'Luis', 'Ramirez', 'luis@gmail.com', '1997-08-25', 1002);
INSERT INTO estudiantes VALUES ('E009', 'Monica', 'Salazar', 'monica@gmail.com', '1998-12-03', 1001);
INSERT INTO estudiantes VALUES ('E010', 'Esteban', 'Cordero', 'esteban@gmail.com', '1999-04-17', 1002);

INSERT INTO profesores VALUES (1001, 'Francisco'); -- requisito cumplido
INSERT INTO profesores VALUES (1002, 'Guanin');

