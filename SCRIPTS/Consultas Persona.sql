select * from persona per
select * from prestamo pre

select per.cantidad_ahorrada, pre.monto, pre.garante from persona per, prestamo pre
where pre.monto between money(100) and money(1000)

select * from persona per
where per.cedula = '1150626694'