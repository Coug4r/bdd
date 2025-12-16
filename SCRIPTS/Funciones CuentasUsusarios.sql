select avg(cast(cu.saldo as numeric))as saldo_promedio from cuentas cu, usuario us 
where cedula_propietario = '10001' 

select * from usuario

select us.tipo_cuenta,count(*) as total_cuentas from cuentas cu, usuario us
group by tipo_cuenta

