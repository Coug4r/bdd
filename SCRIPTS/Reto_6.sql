---PRODUCTOS---
select * from productos
delete from productos
where descripcion is null

---CUENTAS---
select * from cuentas
delete from cuentas 
where cedula_propietario like '10%'

---ESTUDIANTES---
select *from estudiantes
delete from estudiantes
where cedula like '%05'

---REGISTROS DE ENTRADA---
select * from registros_entrada
delete from registros_entrada 
where EXTRACT(MONTH FROM fecha)= 6

---VIDEOJUEGOS---
select * from videojuegos
delete from videojuegos
where valoracion < 7

---TRANSACCIONES---
select * from transacciones 
delete from transacciones
where EXTRACT(MONTH FROM fecha)=8 and hota between '14:00' and '18:00'