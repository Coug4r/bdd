select * from estudiantes es, profesores pro

select es.codigo_profesor,count(*) from estudiantes es, profesores pro
group by es.codigo_profesor

select round(avg(extract(year from current_date)-extract(year from es.fecha_nacimiento))) as edad_promedio from estudiantes es

