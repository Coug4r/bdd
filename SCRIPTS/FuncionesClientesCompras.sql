select * from clientes, compras

select sum(monto) as monto_total from clientes cli, compras com
where cli.cedula = '1000000000'

select com.fecha_compra, sum(com.monto)as total_compra from clientes cli, compras com
where fecha_compra = '2022-09-15'
group by com.fecha_compra



