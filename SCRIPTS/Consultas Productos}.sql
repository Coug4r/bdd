select * from productos
select * from ventas

select pro.nombre, pro.stock, ven.cantidad from productos pro, ventas ven
where pro.nombre like '%m%' or pro.descripcion = null

select pro.nombre, pro.stock from productos pro, ventas ven
where ven.cantidad = 5