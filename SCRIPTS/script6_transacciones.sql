--script 6
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hota time not null,
	constraint transacciones_pk primary key (codigo)
)
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (301, 'A1023', 250.75, 'C', '15/10/2024', '08:45');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (302, 'B2045', 120.00, 'D', '15/10/2024', '09:10');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (303, 'C3098', 500.00, 'C', '16/10/2024', '10:30');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (304, 'D4501', 75.25, 'D', '16/10/2024', '11:15');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (305, 'E5120', 980.40, 'C', '17/10/2024', '12:00');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (306, 'F6782', 150.00, 'D', '17/10/2024', '14:25');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (307, 'G7345', 640.90, 'C', '18/10/2024', '15:10');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (308, 'H8450', 310.60, 'D', '18/10/2024', '16:35');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (309, 'I9012', 1200.00, 'C', '19/10/2024', '18:20');
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hota)
values (310, 'J9901', 450.50, 'D', '19/10/2024', '19:00');