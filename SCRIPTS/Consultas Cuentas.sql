select cu.numero_cuenta, us.nombre from cuentas cu, usuario us
where cu.saldo between money(100) and money(1000)

select * from cuentas cu, usuario us

select * from usuario us, cuentas cu
where cu.fecha_creacion between '2022-09-21' and '2023-09-21'