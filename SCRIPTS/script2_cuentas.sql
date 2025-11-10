--script 2
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12345', '11002', '12/02/2003', 200)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12346', '11003', '10/03/2007', 20)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12347', '11004', '01/02/2003', 400)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12348', '11005', '03/12/2003', 60)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12349', '11006', '07/07/2007', 777)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12350', '11007', '30/06/2020', 1)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12351', '11008', '31/01/2000', 4000)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12352', '11009', '02/08/2007', 500)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12353', '11010', '31/12/1999', 2000)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('12354', '11011', '25/07/2005', 10000)