select * from videojuegos vid, plataformas plat

select vid.codigo, count(plat.nombre_plataforma)as total_plataformas from videojuegos vid, plataformas plat
group by vid.codigo

select round(avg(vid.valoracion), 2) from videojuegos vid

