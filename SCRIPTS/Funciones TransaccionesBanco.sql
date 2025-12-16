select * from transacciones trans, banco ban

select count(*) as total_transacciones_credito from transacciones trans, banco ban
where trans.tipo = 'C'

select trans.numero_cuenta, avg(cast(trans.monto as decimal)) from transacciones trans, banco ban
group by trans.numero_cuenta