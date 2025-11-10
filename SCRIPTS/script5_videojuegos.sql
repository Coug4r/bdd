--script 5
create table videojuegos(
	codigo int not null,
	nombre varChar(100) not null,
	descripcion varChar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)
-- 3 ejemplos con los campos obligatorios
insert into videojuegos (codigo, nombre, valoracion)
values (201, 'The Legend of Heroes', 9.5);
insert into videojuegos (codigo, nombre, valoracion)
values (202, 'Cyber Drift 2099', 8.7);
insert into videojuegos (codigo, nombre, valoracion)
values (203, 'Mystic Realms Online', 9.2);
--5 ejemplos con todos los campos
insert into videojuegos (codigo, nombre, descripcion, valoracion)
values (204, 'Shadow Crusade', 'Juego de acción y aventura ambientado en un mundo medieval lleno de misterios y criaturas oscuras.', 8.9);
insert into videojuegos (codigo, nombre, descripcion, valoracion)
values (205, 'Galaxy Raiders', 'Explora galaxias desconocidas, forma alianzas con razas alienígenas y conquista el espacio interestelar.', 9.1);
insert into videojuegos (codigo, nombre, descripcion, valoracion)
values (206, 'Racing Fever X', 'Carreras de autos de alta velocidad con personalización completa y circuitos urbanos realistas.', 8.3);
insert into videojuegos (codigo, nombre, descripcion, valoracion)
values (207, 'Ancient Quest', 'Un RPG de mundo abierto donde el jugador debe recuperar los fragmentos de un artefacto perdido.', 9.0);
insert into videojuegos (codigo, nombre, descripcion, valoracion)
values (208, 'Zombie Outbreak', 'Juego de supervivencia en un mundo post-apocalíptico infestado de zombis y recursos limitados.', 8.6);