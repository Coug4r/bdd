--- 1 ---
select us.nombre, gr.nombre from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id_usuario and ug.gr_id = id_grupo

select us.id_usuario from usuarios us, usuario_grupo ug, grupo gr
where ug.us_id = us.id_usuario and ug.gr_id = id_grupo
and ug.gr_id = 1

select gr.nombre,count(ug.us_id) from usuarios us, usuario_grupo ug, grupo gr
where ug.us_id = us.id_usuario and ug.gr_id = id_grupo
group by gr.nombre
--- 2 ---
select us.nombre, gr.nombre from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id_usuario and ug.gr_id = id_grupo
and gr.nombre like '%intensivo%'

select usuarios.nombre from usuarios
where id_usuario IN ( SELECT us_id FROM usuario_grupo WHERE gr_id = 2);

select gr.nombre, MAX(ug.us_id), MIN(ug.us_id) from usuarios us, grupo gr, usuario_grupo ug
where ug.gr_id = id_grupo
group by gr.nombre
---3---
select us.nombre,gr.fecha_creacion from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id_usuario and ug.gr_id = id_grupo
and gr.fecha_creacion between '2020-03-08' and '2022-03-08'

select us.nombre from usuarios us
where id_usuario in (select us_id from usuario_grupo where gr_id = 3)

select * from usuarios us, grupo gr

select gr.descripcion, count(ug.us_id) from grupo gr, usuario_grupo ug
where ug.gr_id = id_grupo
group by gr.descripcion
--- HABITANTES Y HUESPEDES ---
--- 1 ---
select ha.habitacion_numero, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re
where re.habitacion = habitacion_numero and re.huesped_id = hu.id_huespedes

select hu.nombres,hu.apellidos from huespedes hu
where id_huespedes in (select huesped_id from reservas where habitacion = 2)

select ha.habitacion_numero, count(re.huesped_id) from habitaciones ha, reservas re
where re.habitacion = habitacion_numero
group by ha.habitacion_numero

--- 2 ---
select ha.habitacion_numero, ha.piso, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re
where re.habitacion = habitacion_numero and re.huesped_id = hu.id_huespedes
and ha.piso = 4

select hu.nombres, hu.apellidos from huespedes hu
where id_huespedes in(select huesped_id from reservas where habitacion = 3)

select ha.habitacion_numero, round(avg(re.huesped_id),2) from habitaciones ha, reservas re
where re.habitacion = habitacion_numero 
group by ha.habitacion_numero

--- 3 ---
select ha.habitacion_numero, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re
where re.habitacion = habitacion_numero and re.huesped_id = hu.id_huespedes

select hu.nombres, hu.apellidos from huespedes hu
where id_huespedes in(select huesped_id from reservas where habitacion = 4)

select ha.habitacion_numero, sum(ha.precio_por_noche)  from habitaciones ha, reservas re
where re.habitacion = habitacion_numero 
group by ha.habitacion_numero

--- MUNICIPIOS Y PROYECTOS ---
--- 1 ---
select mun.nombre, pro.proyecto from municipio mun, proyecto pro, proyecto_municipio prm
where mun.id_municipio = prm.municipio_id and pro.id_proyecto = prm.proyecto_id

select pro.proyecto from proyecto pro
where id_proyecto in (select proyecto_id from proyecto_municipio where municipio_id = 1)

select mun.nombre, count(prm.proyecto_id) from municipio mun, proyecto_municipio prm
where mun.id_municipio = prm.municipio_id
group by mun.nombre 

--- 2 ---
select mun.nombre, pro.proyecto from municipio mun, proyecto pro, proyecto_municipio prm
where mun.id_municipio = prm.municipio_id and pro.id_proyecto = prm.proyecto_id
and mun.nombre like '%GAD%'

select mun.nombre, MIN(prm.proyecto_id) from municipio mun, proyecto_municipio prm
where mun.id_municipio = prm.municipio_id
group by mun.nombre

--- 3 ---
select mun.nombre, cid.nombre from municipio mun, ciudad cid
where mun.ciudad_id = cid.id_ciudad

select pro.proyecto from proyecto pro
where id_proyecto in(select proyecto_id from proyecto_municipio where municipio_id = 3)

select mun.nombre, MAX(prm.proyecto_id) from municipio mun, proyecto_municipio prm
where mun.id_municipio = prm.municipio_id
group by mun.nombre

