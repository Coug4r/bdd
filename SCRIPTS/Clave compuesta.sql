---TABLAS A RELACIONAR---
create table PRODUCTOS (
	codigo int not null,---PK
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

create table proveedores(
	codigo int not null, ---PK
	nombre varchar(50) not null,
	telefono char(10) not null,
	constraint proveedores_pk primary key(codigo)
)

insert into PRODUCTOS (codigo, nombre, stock)
values (100,'DORITOS', 100);
insert into PRODUCTOS (codigo, nombre, stock)
values (200, 'KACHITOS',200);
insert into PRODUCTOS (codigo, nombre, stock)
values (300, 'PAPAS', 300);
insert into PRODUCTOS (codigo, nombre, stock)
values (400, 'TAKIS', 0);

select * from PRODUCTOS

insert into proveedores (codigo, nombre, telefono)
values (1, 'SNACKS S.A', '0993168120');
insert into proveedores (codigo, nombre, telefono)
values (2, 'DISTRI SNACKS', '0979740616');

select * from proveedores


---CREACION TABLA ROMPIMIENTO---
create table productos_por_proveedor(
	pp_codigo_producto int not null, ---Debe ser el mismo tipo de la clave foranea a la que se relaciona a la tabla productos
	pp_codigo_proveedor int not null, ---Mismo tipo que la Pk de Proveedor
	precio money not null,
	constraint producto_fk foreign key(pp_codigo_producto) references PRODUCTOS(codigo), ---Relaciones de clave foranea
	constraint proveedor_fk foreign key(pp_codigo_proveedor) references proveedores(codigo),---Relaciones de clave foranea
	constraint productos_por_proveedor_pk primary key(pp_codigo_producto, pp_codigo_proveedor)---Clave primaria compuesta
)
---INSERTS EN TABLA ROMPIMIENTO
select * from productos_por_proveedor
insert into productos_por_proveedor (pp_codigo_producto, pp_codigo_proveedor, precio)
values (300, 1, 0.48);
insert into productos_por_proveedor (pp_codigo_producto, pp_codigo_proveedor, precio)
values (300, 2, 0.49);
insert into productos_por_proveedor (pp_codigo_producto, pp_codigo_proveedor, precio)
values (100, 1, 0.50);
insert into productos_por_proveedor (pp_codigo_producto, pp_codigo_proveedor, precio)
values (200, 1, 0.51);
insert into productos_por_proveedor (pp_codigo_producto, pp_codigo_proveedor, precio)
values (400, 2, 0.50);

---No se puede repetir la clave primaria compuesta---
insert into productos_por_proveedor (pp_codigo_producto, pp_codigo_proveedor, precio)
values (300, 1, 0.42);

---SELECTS EN TABLA DE ROMPIMIENTO---
select * from PRODUCTOS prod, productos_por_proveedor pp,proveedores prov
where pp.pp_codigo_producto = prod.codigo and pp.pp_codigo_proveedor = prov.codigo 

select prod.nombre, prod.codigo, prov.nombre, pp.precio from PRODUCTOS prod, productos_por_proveedor pp,proveedores prov
where pp.pp_codigo_producto = prod.codigo and pp.pp_codigo_proveedor = prov.codigo 
and prod.codigo = 300