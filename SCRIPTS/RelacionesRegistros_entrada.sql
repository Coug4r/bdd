create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)
select * from registros_entrada
delete from registros_entrada

alter table registros_entrada
add column codigo_empleado int not null
 
alter table registros_entrada
add constraint registros_entrada_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

INSERT INTO registros_entrada VALUES (1, '1150626693', '2023-08-05', '08:30', 2201);
INSERT INTO registros_entrada VALUES (2, '1150626694', '2023-08-15', '09:00', 2205);
INSERT INTO registros_entrada VALUES (3, '1150626695', '2023-09-01', '10:15', 2204);
INSERT INTO registros_entrada VALUES (4, '1150626696', '2023-09-20', '11:00', 2201);
INSERT INTO registros_entrada VALUES (5, '1150626697', '2023-10-10', '12:45', 2204);
INSERT INTO registros_entrada VALUES (6, '1150626698', '2023-10-25', '08:05', 2202);
INSERT INTO registros_entrada VALUES (7, '1150626699', '2023-11-03', '09:30', 2201);
INSERT INTO registros_entrada VALUES (8, '1150626700', '2023-11-18', '10:00', 2202);
INSERT INTO registros_entrada VALUES (9, '1150626701', '2023-12-05', '11:45', 2201);
INSERT INTO registros_entrada VALUES (10, '1150626702', '2023-12-20', '12:15', 2205);
INSERT INTO empleado VALUES (2201, 'Francisco', '2022-09-12', '06:00');
INSERT INTO empleado VALUES (2202, 'María', '2023-01-10', '07:00');
INSERT INTO empleado VALUES (2203, 'Jorge', '2023-02-15', '08:00');
INSERT INTO empleado VALUES (2204, 'Valentina', '2023-03-20', '09:00');
INSERT INTO empleado VALUES (2205, 'Esteban', '2023-04-25', '06:30');