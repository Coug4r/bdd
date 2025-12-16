select * from registros_entrada reg, empleado em

select reg.cedula_empleado, count(reg.codigo_registro) from registros_entrada reg, empleado em
group by reg.cedula_empleado

select MIN(reg.fecha)as fecha_minima, MAX(reg.fecha) as fecha_maxima from registros_entrada reg, empleado em

