select * from videojuegos
select * from plataformas

select vid.nombre, vid.descripcion, vid.valoracion, plat.nombre_plataforma from videojuegos vid, plataformas plat
where vid.descripcion like '%Guerra%' and vid.valoracion > 7 or vid.nombre like 'C%' and vid.valoracion > 8 and vid.nombre like 'D%'

select * from videojuegos vid
where vid.codigo = '1002'