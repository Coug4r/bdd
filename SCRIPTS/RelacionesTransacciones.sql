create table banco(
	codigo_banco int primary key,
	codigo_transaccion int,
	detalle varchar(100)
)
delete from transacciones
select * from transacciones
alter table banco
add constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)

INSERT INTO transacciones VALUES (01, '10011', money(200), 'C', '2025-12-13', '00:52'); -- código 1
INSERT INTO transacciones VALUES (02, '22001', money(500), 'C', '2025-12-14', '08:00'); -- tipo C, cuenta válida
INSERT INTO transacciones VALUES (03, '22002', money(300), 'C', '2025-12-15', '09:15'); -- tipo C, cuenta válida
INSERT INTO transacciones VALUES (04, '22003', money(450), 'C', '2025-12-16', '10:30'); -- tipo C, cuenta válida
INSERT INTO transacciones VALUES (05, '10012', money(700), 'D', '2025-12-17', '11:45');
INSERT INTO transacciones VALUES (06, '10013', money(600), 'D', '2025-12-18', '12:00');
INSERT INTO transacciones VALUES (07, '10014', money(800), 'D', '2025-12-19', '13:15');
INSERT INTO transacciones VALUES (08, '10015', money(900), 'D', '2025-12-20', '14:30');
INSERT INTO transacciones VALUES (09, '10016', money(1000), 'D', '2025-12-21', '15:45');
INSERT INTO transacciones VALUES (10, '10017', money(1100), 'D', '2025-12-22', '16:00');
INSERT INTO banco VALUES ('1001', 01, 'Pago luz');