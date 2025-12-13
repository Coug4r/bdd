create table plataformas(
	id_plataforma int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint plataformas_pk primary key(id_plataforma)
)

delete from videojuegos

select * from videojuegos

alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)

INSERT INTO videojuegos VALUES (1001, 'Call of Duty', 'FPS de Guerra realista', 8); -- inicia con C, contiene 'Guerra'
INSERT INTO videojuegos VALUES (1002, 'God of War', 'Acción mitológica épica', 9); -- requisito cumplido
INSERT INTO videojuegos VALUES (1003, 'Counter Strike', 'Shooter táctico de Guerra', 7); -- inicia con C, contiene 'Guerra'
INSERT INTO videojuegos VALUES (1004, 'Doom', 'FPS de acción infernal', 8); -- inicia con D
INSERT INTO videojuegos VALUES (1005, 'Civilization VI', 'Estrategia histórica con guerras y diplomacia', 9); -- inicia con C, contiene 'Guerra'
INSERT INTO videojuegos VALUES (1006, 'Dead Space', 'Terror espacial y supervivencia', 8); -- inicia con D
INSERT INTO videojuegos VALUES (1007, 'Minecraft', 'Construcción y aventura libre', 10); -- contiene 'm'
INSERT INTO videojuegos VALUES (1008, 'FIFA 23', 'Simulador de fútbol competitivo', 7);
INSERT INTO videojuegos VALUES (1009, 'Halo Infinite', 'Shooter futurista con conflictos bélicos', 8); -- contiene 'Guerra' implícita
INSERT INTO videojuegos VALUES (1010, 'Cyberpunk 2077', 'RPG futurista con combate urbano', 7); -- inicia con C

INSERT INTO plataformas VALUES (1, 'PC', 1001);       -- Call of Duty
INSERT INTO plataformas VALUES (2, 'PS5', 1002);      -- God of War
INSERT INTO plataformas VALUES (3, 'PC', 1003);       -- Counter Strike
INSERT INTO plataformas VALUES (4, 'Xbox', 1004);     -- Doom
INSERT INTO plataformas VALUES (5, 'PC', 1005);       -- Civilization VI
INSERT INTO plataformas VALUES (6, 'PS5', 1006);      -- Dead Space
INSERT INTO plataformas VALUES (7, 'PC', 1007);       -- Minecraft
INSERT INTO plataformas VALUES (8, 'PS4', 1008);      -- FIFA 23
INSERT INTO plataformas VALUES (9, 'Xbox', 1009);     -- Halo Infinite
INSERT INTO plataformas VALUES (10, 'PC', 1010);      -- Cyberpunk 2077
