---PRODUCTOS---
select * from productos
where stock = 10 and precio < money(10)

select nombre, stock from productos
where nombre like '%m%' or descripcion like '% %'

select nombre from productos
where descripcion is null and stock = 0

---CUENTAS---
select numero_cuenta, saldo from cuentas
where saldo > money(100) and saldo < money(1000)

select * from cuentas
where fecha_creacion::date BETWEEN CURRENT_DATE - INTERVAL '1 year' AND CURRENT_DATE

select * from cuentas 
where saldo = money(0) or cedula_propietario like '%2'

---ESTUDIANTES---
select nombre, apellido from estudiantes
where nombre like 'M%' or apellido like '%z'

select nombre from estudiantes
where cedula like '%32%' or cedula like '18%'

select nombre from estudiantes
where cedula like '%06' or cedula like '17%'

---REGISTROS ENTRADA---
select * from registros_entrada
where EXTRACT(MONTH FROM fecha) = 9 or cedula_empleado like '17%'

select * from registros_entrada
where EXTRACT(MONTH FROM fecha) = 8 or cedula_empleado like '17%' and hora between '08:00' and '12:00'

select * from registros_entrada
where EXTRACT(MONTH FROM fecha) = 8 and cedula_empleado like '17%' and hora between '08:00' and '12:00' or EXTRACT(MONTH FROM fecha) = 9 and cedula_empleado like '08%' and hora between '09:00' and '13:00'

---VIDEOJUEGOS---
select * from videojuegos
where nombre like '%c%' or valoracion = 7

select * from videojuegos
where codigo between 3 and 7 or valoracion = 7

select * from videojuegos
where descripcion like '%guerra%' and valoracion > 7 and nombre like 'C%' or valoracion > 8 and nombre like 'D%'

---TRANSACCIONES---
select * from transacciones
where tipo = 'C' and numero_cuenta between '222001' and '22004'

select * from transacciones
where tipo = 'D' and EXTRACT(MONTH FROM fecha)=5 and EXTRACT(DAY FROM fecha)=25 and numero_cuenta between '222007' and '220010'

select * from transacciones 
where codigo between 1 and 5 and numero_cuenta between '22002' and '22004' and EXTRACT(DAY FROM fecha) = 26 or EXTRACT(DAY FROM fecha) = 29












