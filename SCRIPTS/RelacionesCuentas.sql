create table usuario(
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal,
	constraint usuario_pk primary key(cedula)
)


select * from usuario
select * from cuentas

alter table cuentas
add constraint usuario_cuenta_fk 
foreign key (cedula_propietario)
references usuario(cedula)
delete from cuentas

INSERT INTO usuario VALUES ('10001', 'Ana', 'Lopez', 'Corriente', 500.00);
INSERT INTO usuario VALUES ('10002', 'Luis', 'Martinez', 'Ahorros', 750.00);
INSERT INTO usuario VALUES ('10003', 'Maria', 'Gomez', 'Corriente', 1000.00);
INSERT INTO usuario VALUES ('10004', 'Carlos', 'Perez', 'Ahorros', 250.00);
INSERT INTO usuario VALUES ('10005', 'Sofia', 'Torres', 'Corriente', 900.00);
INSERT INTO usuario VALUES ('10006', 'Jorge', 'Ramirez', 'Ahorros', 300.00);
INSERT INTO usuario VALUES ('10007', 'Lucia', 'Vega', 'Corriente', 850.00);
INSERT INTO usuario VALUES ('10008', 'Diego', 'Castro', 'Ahorros', 600.00);
INSERT INTO usuario VALUES ('10009', 'Valeria', 'Mendoza', 'Corriente', 400.00);
INSERT INTO usuario VALUES ('10010', 'Andres', 'Rojas', 'Ahorros', 950.00);

INSERT INTO cuentas VALUES ('C001', '10001', '2022-09-15', 250.00);
INSERT INTO cuentas VALUES ('C002', '10002', '2022-11-20', 800.00);
INSERT INTO cuentas VALUES ('C003', '10003', '2023-01-05', 500.00);
INSERT INTO cuentas VALUES ('C004', '10004', '2023-03-12', 300.00);
INSERT INTO cuentas VALUES ('C005', '10005', '2023-05-25', 950.00);
INSERT INTO cuentas VALUES ('C006', '10006', '2023-06-30', 700.00);
INSERT INTO cuentas VALUES ('C007', '10007', '2023-07-10', 400.00);
INSERT INTO cuentas VALUES ('C008', '10008', '2023-08-01', 600.00);
INSERT INTO cuentas VALUES ('C009', '10009', '2023-09-10', 100.00);
INSERT INTO cuentas VALUES ('C010', '10010', '2023-09-20', 850.00);
