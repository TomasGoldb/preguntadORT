USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 18/9/2024 11:55:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Foto] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 18/9/2024 11:55:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[IdDificultad] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dificultades] PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 18/9/2024 11:55:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[Enunciado] [varchar](max) NOT NULL,
	[Foto] [varchar](max) NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 18/9/2024 11:55:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](50) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](max) NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Fútbol argentino', N'https://upload.wikimedia.org/wikipedia/commons/5/5c/Logo_Liga_Profesional_de_F%C3%BAtbol_%28Argentina%29.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Copas Internacionales', N'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Mapa_del_mundo_en_1970.jpg/2560px-Mapa_del_mundo_en_1970.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Historia del fútbol', N'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Jogo_no_Est%C3%A1dio_do_Maracan%C3%A3%2C_antes_da_Copa_do_Mundo_de_1950.tif/lossy-page1-640px-Jogo_no_Est%C3%A1dio_do_Maracan%C3%A3%2C_antes_da_Copa_do_Mundo_de_1950.tif.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Fútbol Europeo', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwAyugiywH9W4jK6PKAuc5O-gX1hpQgKHwYg&s')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Messi', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMgVdujAh-m-YES5IIsKZUPQRS3DujHyLpgQ&s')
GO
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (1, N'Fácil')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (2, N'Media')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (3, N'Difícil')
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, 1, N'¿Qué equipo argentino es conocido como "Los Millonarios"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, 1, N'¿Cuál es el estadio de Boca Juniors?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, 1, N'¿En qué ciudad se juega el clásico rosarino?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, 2, N'¿Qué club argentino tiene más títulos en la Copa Sudamericana?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV_HKD93icMOQmHlmylqBD2qVrieseScKWDg&s')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, 2, N'¿En qué año se creó la Superliga Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, 2, N'¿Qué equipo logró un tricampeonato en la liga argentina entre 1998 y 2000?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 1, 3, N'¿Quién fue el goleador del Torneo Metropolitano de 1974?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 1, 3, N'¿Qué equipo argentino fue el primero en ganar la Copa Intercontinental?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 1, 3, N'¿Qué equipo descendió en 1983 y luego regresó en 1984 tras comprar su plaza?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 2, 1, N'¿Qué selección ganó la Eurocopa 2020?', N'https://logos-world.net/wp-content/uploads/2021/10/UEFA-Euro-2024-Emblem.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 2, 1, N'¿Qué selección ganó la Copa Mundial de la FIFA en 2010?', N'https://fifpro.org/media/50ukxy3p/world-cup-trophy.jpg?rxy=0.50542495479204341,0.18066237927585291&width=1600&height=1024&rnd=133129144183130000')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (12, 2, 1, N'¿Qué país es el máximo ganador de la Copa América?', N'https://media.tycsports.com/files/2023/07/17/594486/copa-america-trofeo_1440x810_wmk.webp?v=3')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 2, 2, N'¿En qué año se disputó la primera Eurocopa?', N'https://logos-world.net/wp-content/uploads/2021/10/UEFA-Euro-2024-Emblem.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 2, 2, N'¿Qué país ganó la Copa América Centenario en 2016?', N'https://media.tycsports.com/files/2023/07/17/594486/copa-america-trofeo_1440x810_wmk.webp?v=3')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 2, 2, N'¿Cuántos títulos ha ganado Alemania en la Eurocopa?', N'https://logos-world.net/wp-content/uploads/2021/10/UEFA-Euro-2024-Emblem.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (16, 2, 3, N'¿Qué selección fue subcampeona en la Eurocopa de 1984?', N'https://logos-world.net/wp-content/uploads/2021/10/UEFA-Euro-2024-Emblem.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (17, 2, 3, N'¿En qué país se celebró la Copa América 2001?', N'https://media.tycsports.com/files/2023/07/17/594486/copa-america-trofeo_1440x810_wmk.webp?v=3')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (18, 2, 3, N'¿Quién fue el máximo goleador de la Eurocopa 2004?', N'https://logos-world.net/wp-content/uploads/2021/10/UEFA-Euro-2024-Emblem.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 3, 1, N'¿En qué país se celebró el primer Mundial de fútbol en 1930?', N'https://cdn2.mediotiempo.com/uploads/media/2022/11/15/uruguay-aprovecho-condicion-local-llevarse.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (20, 3, 1, N'¿Quién es conocido como "La Mano de Dios" en el fútbol?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (21, 3, 1, N'¿Qué país ganó el Mundial de 1998?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (22, 3, 2, N'¿En qué año se jugó el primer Superclásico entre Boca y River?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (23, 3, 2, N'¿Quién fue el primer ganador del Balón de Oro?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (24, 3, 2, N'¿Qué selección ganó la primera Copa del Mundo fuera de Europa en 1950?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (25, 3, 3, N'¿Quién fue el primer director técnico en ganar tres Copas del Mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (26, 3, 3, N'¿Quién es el único jugador que ganó tres Copas del Mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (27, 3, 3, N'¿Quién anotó el primer gol en la historia de los Mundiales?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (28, 4, 1, N'¿Qué equipo ganó la Champions League en 2021?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (29, 4, 1, N'¿En qué país juega el FC Barcelona?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (30, 4, 1, N'¿Qué equipo es conocido como "Los Diablos Rojos" en Inglaterra?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (31, 4, 2, N'¿Qué equipo ganó la Champions League en 1999 con una remontada histórica en la final?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (32, 4, 2, N'¿Quién es el máximo goleador histórico de la Premier League?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (33, 4, 2, N'¿Qué jugador ganó cinco Balones de Oro jugando en el Real Madrid?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (34, 4, 3, N'¿Qué equipo es el máximo ganador de la Champions League?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (35, 4, 3, N'¿Qué equipo italiano tiene más títulos de la Serie A?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (36, 4, 3, N'¿Qué equipo ganó la Champions League en la temporada 2003-2004?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (37, 5, 1, N'¿En qué equipo debutó Lionel Messi como profesional?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (38, 5, 1, N'¿Qué número de camiseta ha usado Messi la mayor parte de su carrera?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (39, 5, 1, N'¿En qué año ganó Messi su primer Balón de Oro?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (40, 5, 2, N'¿Cuántos goles anotó Messi en el Mundial de Qatar 2022?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQN6GHbeGNwdeyN_4UrovBHtEYynJ05Pp3uw&s')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (41, 5, 2, N'¿En qué año Messi ganó su primer título con la selección mayor de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (42, 5, 2, N'¿Qué equipo derrotó al Barcelona en la final de la Champions League 2020-21, cuando Messi aún formaba parte del club?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (43, 5, 3, N'¿En qué año Messi ganó su primer título de Champions League?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (44, 5, 3, N'¿Qué selección derrotó a Argentina en la final de la Copa América 2015?', N'https://static.vecteezy.com/system/resources/previews/017/796/851/non_2x/south-and-north-america-political-map-in-mercator-projection-map-with-name-of-countries-isolated-on-white-vector.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (45, 5, 3, N'¿Cuál fue el primer equipo al que Messi le anotó 4 goles en un partido de Champions League?', NULL)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1, 1, 1, N'Boca Juniors', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoNtvvGIajNmhti-ZzSeKN5nSTXp4Db0zew&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (2, 1, 2, N'San Lorenzo', 0, N'https://upload.wikimedia.org/wikipedia/commons/6/62/Escudo_del_Club_Atl%C3%A9tico_San_Lorenzo_de_Almagro.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (3, 1, 3, N'Independiente', 0, N'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Escudo_del_Club_Atl%C3%A9tico_Independiente.svg/1200px-Escudo_del_Club_Atl%C3%A9tico_Independiente.svg.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (4, 1, 4, N'River Plate', 1, N'https://upload.wikimedia.org/wikipedia/commons/a/ac/Escudo_del_C_A_River_Plate.svg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (5, 2, 1, N'Estadio Monumental', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (6, 2, 2, N'La Bombonera', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (7, 2, 3, N'Estadio José Amalfitani', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (8, 2, 4, N'Estadio Presidente Perón', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (9, 3, 1, N'Córdoba', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (10, 3, 2, N'La Plata', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (11, 3, 3, N'Rosario', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (12, 3, 4, N'Mendoza', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (13, 4, 1, N'Lanús', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (14, 4, 2, N'Boca Juniors', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (15, 4, 3, N'Independiente', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (16, 4, 4, N'Racing Club', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (17, 5, 1, N'2015', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (18, 5, 2, N'2017', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (19, 5, 3, N'2019', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (20, 5, 4, N'2012', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (21, 6, 1, N'Boca Juniors', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (22, 6, 2, N'Vélez Sarsfield', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (23, 6, 3, N'River Plate', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (24, 6, 4, N'Independiente', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (25, 7, 1, N'Carlos Bianchi', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (26, 7, 2, N'Mario Kempes', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (27, 7, 3, N'Enrique Wolff', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (28, 7, 4, N'Leopoldo Luque', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (29, 8, 1, N'Boca Juniors', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (30, 8, 2, N'Estudiantes', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (31, 8, 3, N'Racing Club', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (32, 8, 4, N'Independiente', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (33, 9, 1, N'Huracán', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (34, 9, 2, N'Ferro Carril Oeste', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (35, 9, 3, N'Rosario Central', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (36, 9, 4, N'San Lorenzo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (37, 10, 1, N'Francia', 0, N'https://brandemia.org/contenido/subidas/2022/12/escudo-seleccion-francesa-2018-2022-1024x576.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (38, 10, 2, N'Italia', 1, N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Logo_Italy_National_Football_Team_-_2023.svg/800px-Logo_Italy_National_Football_Team_-_2023.svg.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (39, 10, 3, N'Inglaterra', 0, N'https://i.pinimg.com/originals/7b/01/45/7b0145c50f44f268b6c5f5d5000e6a8c.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (40, 10, 4, N'Portugal', 0, N'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDautDKT4RO1vBCJm0jHoApZZ96ZMtLtAKdx8luOeuci1ivwp1wQ2ClVwZwXWVfFMDzWXLfhV88nX5n55ujnzYJ5F7mLzl5J7Hl6Riux83_lxZaT8YMrOnHf-2wRXKQ_LedYArpRaHHQQ/s1600/fpf.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (41, 11, 1, N'Brasil', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (42, 11, 2, N'España', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (43, 11, 3, N'Alemania', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (44, 11, 4, N'Italia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (45, 12, 1, N'Brasil', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (46, 12, 2, N'Argentina', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (47, 12, 3, N'Uruguay', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (48, 12, 4, N'Chile', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (49, 13, 1, N'1960', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (50, 13, 2, N'1968', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (51, 13, 3, N'1956', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (52, 13, 4, N'1972', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (53, 14, 1, N'Argentina', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (54, 14, 2, N'Chile', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (55, 14, 3, N'Brasil', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (56, 14, 4, N'Colombia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (57, 15, 1, N'2', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (58, 15, 2, N'3', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (59, 15, 3, N'4', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (60, 15, 4, N'1', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (61, 16, 1, N'Francia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (62, 16, 2, N'España', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (63, 16, 3, N'Italia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (64, 16, 4, N'Alemania', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (65, 17, 1, N'Venezuela', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (66, 17, 2, N'Colombia', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (67, 17, 3, N'Uruguay', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (68, 17, 4, N'Ecuador', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (69, 18, 1, N'Thierry Henry', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (70, 18, 2, N'Ruud van Nistelrooy', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (71, 18, 3, N'Milan Baroš', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (72, 18, 4, N'Wayne Rooney', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (73, 19, 1, N'Brasil', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (74, 19, 2, N'Italia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (75, 19, 3, N'Uruguay', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (76, 19, 4, N'Argentina', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (77, 20, 1, N'Lionel Messi', 0, N'https://s.france24.com/media/display/451ed2b8-eed6-11ea-afdd-005056bf87d6/w:1280/p:4x3/messi-1805.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (78, 20, 2, N'Diego Maradona', 1, N'https://cdn.conmebol.com/wp-content/uploads/2023/10/000_322A2WL-1024x683.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (79, 20, 3, N'Gabriel Batistuta', 0, N'https://library.sportingnews.com/styles/crop_style_16_9_desktop/s3/2021-08/gabriel-batistuta-argentina-japan-1998-world-cup_1l2lm9mzcrn41tpuxexlonlci.jpg?itok=0kT5G2pZ')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (80, 20, 4, N'Pelé', 0, N'https://ca-times.brightspotcdn.com/dims4/default/1eae43b/2147483647/strip/true/crop/2546x1697+0+0/resize/2000x1333!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F4a%2F6b%2F5326bd3645d6a92ce8c6a7cc4b15%2Fwcup-six-pack-greatest-players-soccer.JPEG')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (81, 21, 1, N'Brasil', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (82, 21, 2, N'Alemania', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (83, 21, 3, N'Francia', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (84, 21, 4, N'Argentina', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (85, 22, 1, N'1913', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (86, 22, 2, N'1920', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (87, 22, 3, N'1905', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (88, 22, 4, N'1930', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (89, 23, 1, N'Alfredo Di Stéfano', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (90, 23, 2, N'Lev Yashin', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (91, 23, 3, N'Stanley Matthews', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (92, 23, 4, N'Johan Cruyff', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (93, 24, 1, N'Uruguay', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (94, 24, 2, N'Brasil', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (95, 24, 3, N'Argentina', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (96, 24, 4, N'Inglaterra', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (97, 25, 1, N'Helmut Schön', 0, N'https://e00-marca.uecdn.es/assets/multimedia/imagenes/2017/01/19/14847850408452.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (98, 25, 2, N'César Luis Menotti', 0, N'https://elciudadano.com.ar/download/multimedia.normal.9ce8a1c8f8f6a19a.TWVub3R0aSAyX25vcm1hbC53ZWJw.webp')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (99, 25, 3, N'Vittorio Pozzo', 1, N'https://www.futbol-tactico.com/phpexcale.php?file=/data/news/es/20150210_191512_pozzofoto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (100, 25, 4, N'Vicente del Bosque', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtjwKhLxQUxHZL3tWRem13DxudXjMTLBJbEA&s')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (101, 26, 1, N'Pelé', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (102, 26, 2, N'Maradona', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (103, 26, 3, N'Zinedine Zidane', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (104, 26, 4, N'Romário', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (105, 27, 1, N'Guillermo Stábile', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (106, 27, 2, N'Giuseppe Meazza', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (107, 27, 3, N'Lucien Laurent', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (108, 27, 4, N'Obdulio Varela', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (109, 28, 1, N'Chelsea', 1, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyyKNmW0zw5XoUKIRjOatmFz8blsvPa8gcfJW9laVxzeMU0-slY-A2Eii5NBAp5fGUerQ&usqp=CAU')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (110, 28, 2, N'Manchester City', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlTIXbdA6z6GprlOhgrpg7buS2oXjNp7Dz5HQ9AEffU2r_OXueDH_i17ZAxG4Cq7CLWe0&usqp=CAU')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (111, 28, 3, N'PSG', 0, N'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Paris_Saint-Germain_F.C..svg/800px-Paris_Saint-Germain_F.C..svg.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (112, 28, 4, N'Real Madrid', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBbV1TiEYDWjKh7wTTSwn4F8LkTSy7gb2vHg&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (113, 29, 1, N'Francia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (114, 29, 2, N'Italia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (115, 29, 3, N'Alemania', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (116, 29, 4, N'España', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (117, 30, 1, N'Liverpool', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (118, 30, 2, N'Manchester United', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (119, 30, 3, N'Arsenal', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (120, 30, 4, N'Tottenham', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (121, 31, 1, N'Real Madrid', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (122, 31, 2, N'Manchester United', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (123, 31, 3, N'Bayern Múnich', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (124, 31, 4, N'Juventus', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (125, 32, 1, N'Wayne Rooney', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRymgQcbRrRjZDPo_Bt4DsgrNStH0cHb7lhnw&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (126, 32, 2, N'Thierry Henry', 0, N'https://static.standard.co.uk/s3fs-public/thumbnails/image/2015/08/17/20/ThierryHenry.jpg?width=1200&height=1200&fit=crop')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (127, 32, 3, N'Alan Shearer', 1, N'https://focus.independent.ie/thumbor/gj4rihg7dfiBAE5_MMDahxvxIzM=/0x12:2464x1371/960x640/prod-mh-ireland/919cfbac-c0c9-11ed-9fe2-0210609a3fe2')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (128, 32, 4, N'Sergio Agüero', 0, N'https://e2.365dm.com/21/03/2048x1152/skysports-aguero-manchester-city_5323351.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (129, 33, 1, N'Raúl', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (130, 33, 2, N'Cristiano Ronaldo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (131, 33, 3, N'Luka Modric', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (132, 33, 4, N'Alfredo Di Stéfano', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (133, 34, 1, N'Real Madrid', 1, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBbV1TiEYDWjKh7wTTSwn4F8LkTSy7gb2vHg&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (134, 34, 2, N'Barcelona', 0, N'https://images.daznservices.com/di/library/DAZN_News/b8/37/fc-barcelona-la-liga_1jxdxq19a7z4i1mdvawqvnk2js.jpg?t=-2107146871')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (135, 34, 3, N'Bayern Múnich', 0, N'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg/2048px-FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (136, 34, 4, N'AC Milan', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq8dFJsuB1VTnOk-agROgXqUXF5OtGixK9EA&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (137, 35, 1, N'Inter de Milán', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (138, 35, 2, N'AC Milan', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (139, 35, 3, N'Juventus', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (140, 35, 4, N'Roma', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (141, 36, 1, N'Porto', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (142, 36, 2, N'Valencia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (143, 36, 3, N'Mónaco', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (144, 36, 4, N'Lyon', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (145, 37, 1, N'PSG', 0, N'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Paris_Saint-Germain_F.C..svg/800px-Paris_Saint-Germain_F.C..svg.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (146, 37, 2, N'FC Barcelona', 1, N'https://images.daznservices.com/di/library/DAZN_News/b8/37/fc-barcelona-la-liga_1jxdxq19a7z4i1mdvawqvnk2js.jpg?t=-2107146871')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (147, 37, 3, N'Newells Old Boys', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1uieopH-oo-LY3SPU-8Tm36Y7O00cZJIM1Q&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (148, 37, 4, N'Manchester City', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XM8kJ-Dg1mnLPzNPWv-pQ-BJG1PgzM0_Vg&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (149, 38, 1, N'7', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (150, 38, 2, N'19', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (151, 38, 3, N'11', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (152, 38, 4, N'10', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (153, 39, 1, N'2009', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (154, 39, 2, N'2008', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (155, 39, 3, N'2010', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (156, 39, 4, N'2012', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (157, 40, 1, N'6', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (158, 40, 2, N'5', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (159, 40, 3, N'8', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (160, 40, 4, N'7', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (161, 41, 1, N'2014', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (162, 41, 2, N'2021', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (163, 41, 3, N'2019', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (164, 41, 4, N'2015', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (165, 42, 1, N'Bayern Múnich', 1, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo6LMFy2BylWQTsdc5wYl1Ah-Y9s3JOZvcQA&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (166, 42, 2, N'PSG', 0, N'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Paris_Saint-Germain_F.C..svg/800px-Paris_Saint-Germain_F.C..svg.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (167, 42, 3, N'Real Madrid', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBbV1TiEYDWjKh7wTTSwn4F8LkTSy7gb2vHg&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (168, 42, 4, N'Liverpool', 0, N'https://i.pinimg.com/originals/bc/16/5d/bc165d74fa7c0a79a89ff1fcf5db2678.png')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (169, 43, 1, N'2006', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (170, 43, 2, N'2009', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (171, 43, 3, N'2011', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (172, 43, 4, N'2008', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (173, 44, 1, N'Brasil', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (174, 44, 2, N'Chile', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (175, 44, 3, N'Uruguay', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (176, 44, 4, N'Paraguay', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (177, 45, 1, N'Chelsea', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyyKNmW0zw5XoUKIRjOatmFz8blsvPa8gcfJW9laVxzeMU0-slY-A2Eii5NBAp5fGUerQ&usqp=CAU')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (178, 45, 2, N'Real Madrid', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBbV1TiEYDWjKh7wTTSwn4F8LkTSy7gb2vHg&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (179, 45, 3, N'Bayern Múnich', 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo6LMFy2BylWQTsdc5wYl1Ah-Y9s3JOZvcQA&s')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (180, 45, 4, N'Arsenal', 1, N'https://4.bp.blogspot.com/-nDetwaRQ0o4/WVLm49xGJZI/AAAAAAABJ84/iqbDvvSbRoEANsQbda3xkvg3yvSp3BPtQCLcBGAs/s1600/Arsenal%2BFC.png')
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Categorias]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Dificultades] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultades] ([IdDificultad])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Dificultades]
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Preguntas] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas] ([IdPregunta])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Preguntas]
GO
