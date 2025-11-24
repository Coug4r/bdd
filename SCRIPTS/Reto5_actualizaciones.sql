---PRODUCTOS---
select * from productos
update productos set stock = 0
where stock is null
---CUENTAS---
select * from cuentas
update cuentas set saldo = money(10)
where cedula_propietario like '17%'
---ESTUDIANTES---
select * from estudiantes
update estudiantes set apellido = 'Hernández'
where cedula like '17%'
---REGISTROS ENTRADA---
select * from registros_entrada
update registros_entrada set cedula_empleado = '082345679'
--EXTRACT para comparar solo el mes de la fecha--
where EXTRACT(MONTH FROM fecha) = 8

---VIDEOJUEGOS---
select * from videojuegos
update videojuegos set descripcion = 'Mejor puntuado'
where valoracion > 9

---TRANSACIONES---
select * from transacciones
update transacciones set tipo = 'T'
where monto > money(100) and monto < money(500) and EXTRACT(MONTH FROM fecha) = 9 and hota between '14:00' and '20:00'