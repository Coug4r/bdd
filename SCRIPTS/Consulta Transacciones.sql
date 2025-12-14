select * from transacciones
select * from banco

select * from transacciones trans, banco ban
where tipo = 'C' and numero_cuenta between '22001' and '22004'

select * from transacciones trans
where codigo = 1