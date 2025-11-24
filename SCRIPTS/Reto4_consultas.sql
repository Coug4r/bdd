---PRODUCTOS---
Select * from productos
where nombre like 'Q%'

Select * from productos
where descripcion is null

Select * from productos
where precio between money(2) and money(3)

---CUENTAS---
Select numero_cuenta, saldo from cuentas

Select * from cuentas 
---CURRENT_DATE (fecha de hoy sin hora) INTERVAL (Para sumar o restar tiempo a una fecha)
where fecha_creacion::date BETWEEN CURRENT_DATE - INTERVAL '2 months' AND CURRENT_DATE;

Select numero_cuenta, saldo from cuentas 
---CURRENT_DATE (fecha de hoy sin hora) INTERVAL (Para sumar o restar tiempo a una fecha)
where fecha_creacion::date BETWEEN CURRENT_DATE - INTERVAL '2 months' AND CURRENT_DATE;

---ESTUDIANTES---
Select nombre, cedula from estudiantes

Select nombre from estudiantes
where cedula like '17%'

Select nombre, apellido from estudiantes
where nombre like 'A%'

---REGISTROS ENTRADA---
Select cedula_empleado, fecha, hora from registros_entrada

Select * from registros_entrada
where hora between '7:00' and '14:00'

Select * from registros_entrada
where hora > '8:00'

---Videojuegos---
Select * from videojuegos
where nombre like 'C%'

Select * from videojuegos
where valoracion between 9 and 10

Select * from videojuegos
where descripcion is null

---Transacciones---
Select * from transacciones
where tipo = 'D'

Select * from transacciones
where monto between money(200) and money(2000)

Select codigo, monto, tipo, fecha from transacciones
where fecha is not null






