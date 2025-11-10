--script 4
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registro_entrada_pk primary key (codigo_registro)
)
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (123, 1234567890, '15/10/2004', '4:30')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (124, 1102345678, '16/10/2004', '8:15');
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (125, 1156789023, '17/10/2004', '7:45');
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (126, 1189054321, '18/10/2004', '9:00');
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (127, 1203456789, '19/10/2004', '6:55');
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (128, 1223344556, '20/10/2004', '10:10');
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (129, 1256677889, '21/10/2004', '5:40');
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (130, 1278901234, '22/10/2004', '3:20');
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (131, 1290011223, '23/10/2004', '11:05');
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (132, 1301122334, '24/10/2004', '2:50');