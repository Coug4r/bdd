select * from persona per, prestamo pres

select per.cedula,sum(monto) from persona per, prestamo pres
where per.cedula = '1150626693'
group by per.cedula

select count(*) from persona 
where numero_hijos > 0