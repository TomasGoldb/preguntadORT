USE [PreguntadORT]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Foto] [varchar](50) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[IdDificultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dificultades] PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[IdUsuario] [int] NOT NULL,
	[IdJugador] [int] NOT NULL,
	[IdPartida] [int] NOT NULL,
	[PersonajesConseguidos] [varchar](100) NULL,
	[CantidadParaCorona] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partida]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partida](
	[IdPartida] [int] IDENTITY(1,1) NOT NULL,
	[TiempoMax] [int] NOT NULL,
	[GirarNehuen] [bit] NOT NULL,
	[IdDificultad] [int] NOT NULL,
 CONSTRAINT [PK_Partida] PRIMARY KEY CLUSTERED 
(
	[IdPartida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[Nombre] [varchar](100) NOT NULL,
	[Foto] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[Enunciado] [varchar](250) NOT NULL,
	[Foto] [varchar](50) NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 21/09/2024 18:06:45 ******/
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
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Nick] [varchar](50) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[FotoPerfil] [varchar](50) NULL,
	[CodigoRecuperacion] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Historia', N'/personajesCategorias/historia.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Arte', N'/personajesCategorias/arte.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Ciencia', N'/personajesCategorias/ciencia.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Deportes', N'/personajesCategorias/deportes.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Entretenimiento', N'/personajesCategorias/entretenimiento.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (6, N'Geografía', N'/personajesCategorias/geografia.png')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Dificultades] ON 

INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (1, N'Facil')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (2, N'Medio')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (3, N'Dificil')
SET IDENTITY_INSERT [dbo].[Dificultades] OFF
GO
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 64, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 65, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 66, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 67, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 68, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 69, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (2, 2, 69, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 70, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 72, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 73, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (2, 2, 73, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 75, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 77, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (2, 2, 78, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 80, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 81, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 84, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 86, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 88, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 90, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 92, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 94, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 96, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 97, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (3, 2, 97, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 99, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 100, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (4, 2, 100, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 78, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 82, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 85, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 89, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Partida] ON 

INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (1, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (2, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (3, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (4, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (5, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (6, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (7, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (8, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (9, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (10, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (11, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (12, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (13, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (14, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (15, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (16, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (17, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (18, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (19, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (20, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (21, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (22, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (23, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (24, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (25, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (26, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (27, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (28, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (29, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (30, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (31, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (32, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (33, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (34, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (35, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (36, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (37, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (38, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (39, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (40, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (41, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (42, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (43, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (44, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (45, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (46, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (47, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (48, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (49, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (50, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (51, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (52, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (53, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (54, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (55, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (56, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (57, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (58, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (59, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (60, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (61, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (62, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (63, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (64, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (65, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (66, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (67, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (68, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (69, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (70, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (71, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (72, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (73, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (74, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (75, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (76, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (77, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (78, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (79, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (80, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (81, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (82, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (83, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (84, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (85, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (86, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (87, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (88, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (89, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (90, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (91, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (92, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (93, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (94, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (95, 15, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (96, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (97, 0, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (98, 30, 0, 0)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (99, 0, 0, 0)
GO
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad]) VALUES (100, 15, 0, 0)
SET IDENTITY_INSERT [dbo].[Partida] OFF
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, 1, N'¿Quién fue el primer presidente de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, 1, N'¿En qué año se declaró la independencia de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, 1, N'¿Cómo se llama el himno nacional de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, 1, N'¿Quién es conocido como el “Padre de la Patria” en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, 1, N'¿Qué ciudad fue la primera capital de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, 1, N'¿Cuál es el nombre del general que lideró la independencia en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 1, 1, N'¿Qué guerra enfrentó a Argentina contra el Reino Unido en 1982?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 1, 1, N'¿Qué conflicto se produjo entre 1835 y 1852 en Argentina, conocido como las guerras civiles?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 1, 1, N'¿Cuál fue el nombre del tratado que puso fin a la guerra con Brasil en 1828?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 1, 1, N'¿Qué evento ocurrió el 9 de julio de 1816?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 1, 1, N'¿Qué dictadura militar gobernó Argentina desde 1976 hasta 1983?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (12, 1, 1, N'¿Qué presidente argentino fue derrocado por un golpe militar en 1955?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 1, 1, N'¿Qué famoso general argentino luchó en la guerra de independencia y en las guerras de la independencia de América del Sur?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 1, 1, N'¿Qué acuerdo en 1880 estableció a Buenos Aires como la capital de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 1, 1, N'¿En qué año se aprobó la primera Constitución Nacional Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (16, 1, 1, N'¿Qué evento importante ocurrió el 25 de mayo de 1810 en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (17, 1, 1, N'¿Qué guerra se libró en 1982 entre Argentina y el Reino Unido?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (18, 1, 1, N'¿Quién fue el presidente de Argentina al inicio de la Primera Guerra Mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 1, 1, N'¿Quién fue el líder del movimiento peronista en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (20, 1, 1, N'¿En qué año se produjo el golpe de estado que instauró la dictadura de Jorge Rafael Videla?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (21, 1, 1, N'¿Qué evento importante ocurrió en 2001 en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (22, 1, 1, N'¿Cuál es la moneda oficial de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (23, 1, 1, N'¿Qué ciudad es la capital de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (24, 1, 1, N'¿En qué año se realizó la primera Copa Mundial de Fútbol en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (25, 1, 1, N'¿Qué famoso teatro de Buenos Aires es conocido por su arquitectura y su importancia cultural?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (26, 1, 1, N'¿Qué evento marcó el fin de la dictadura militar en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (27, 1, 1, N'¿Quién fue el presidente de Argentina durante la Guerra de las Malvinas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (28, 1, 1, N'¿Qué nombre recibió el periodo político posterior al final de la dictadura de Videla en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (29, 1, 1, N'¿Qué presidente argentino promulgó la Ley de Reforma del Estado en 1989?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (30, 1, 1, N'¿En qué año se realizó la última dictadura militar en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (31, 1, 1, N'¿Qué tratado marcó el fin de las hostilidades entre Argentina y Chile en 1984?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (32, 1, 1, N'¿Qué evento marcó el inicio de la democracia en Argentina en 1983?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (33, 1, 1, N'¿Qué presidente argentino fue conocido por sus políticas de "desarrollo económico" en los años 60?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (34, 1, 1, N'¿Qué batalla decisiva ocurrió en 1813 durante la lucha por la independencia argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (35, 1, 1, N'¿Qué evento histórico en 1982 llevó a la recuperación de las Islas Malvinas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (36, 1, 1, N'¿Qué nombre recibió el conflicto interno en Argentina durante los años 70, que involucró la represión de opositores?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (37, 1, 2, N'¿Qué general argentino fue el principal líder en la Campaña del Norte durante la Guerra de Independencia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (38, 1, 2, N'¿Quién fue el primer presidente de Argentina bajo la Constitución de 1853?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (39, 1, 2, N'¿Qué evento conocido como la “Revolución Libertadora” derrocó al presidente Perón en 1955?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (40, 1, 2, N'¿Qué tratado internacional resolvió el conflicto con Chile sobre la soberanía de la Patagonia en 1881?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (41, 1, 2, N'¿Qué presidente argentino instituyó el voto femenino en 1947?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (42, 1, 2, N'¿En qué año se realizó el primer censo nacional en Argentina después de la independencia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (43, 1, 2, N'¿Qué presidente argentino firmó el tratado que puso fin a la Guerra del Paraguay en 1870?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (44, 1, 2, N'¿Qué revolución social y política comenzó en Argentina en 1966 y llevó al gobierno de Juan Carlos Onganía?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (45, 1, 2, N'¿Cuál fue el objetivo principal de la Ley de Educación Común de 1884 en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (46, 1, 2, N'¿Quién fue el presidente de Argentina durante la Primera Guerra Mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (47, 1, 2, N'¿Qué guerra con Brasil finalizó con el tratado de Montevideo en 1828?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (48, 1, 2, N'¿Qué dictadura militar argentina llevó a la implementación de políticas económicas conocidas como "Plan de Convertibilidad"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (49, 1, 2, N'¿Qué presidente argentino implementó el "Gran Acuerdo Nacional" en la década de 1980?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (50, 1, 2, N'¿Qué acuerdo en 1880 permitió la federalización de Buenos Aires?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (51, 1, 2, N'¿Quién fue el líder de la facción liberal en la Guerra Civil Argentina de mediados del siglo XIX?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (52, 1, 2, N'¿Qué evento de 1983 marcó el retorno a la democracia en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (53, 1, 2, N'¿Qué importante ley de 1974 estableció el sistema de jubilaciones en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (54, 1, 2, N'¿Cuál fue el objetivo principal de la Reforma Universitaria de 1918 en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (55, 1, 2, N'¿Qué conflicto de la década de 1950 llevó al exilio de Juan Domingo Perón?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (56, 1, 2, N'¿Qué importante reforma constitucional se llevó a cabo en Argentina en 1994?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (57, 1, 2, N'¿Qué acuerdo entre Argentina y Brasil en 1985 estableció un plan de integración económica?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (58, 1, 2, N'¿Qué dictador argentino instauró la “Revolución Argentina” en 1966?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (59, 1, 2, N'¿Qué evento en 2001 llevó a una crisis económica en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (60, 1, 2, N'¿Qué nombre recibió la administración militar de 1982 que fue reemplazada por una democracia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (61, 1, 2, N'¿Qué nombre recibe el movimiento estudiantil que buscó reformas en la educación en 1968?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (62, 1, 2, N'¿Qué conflicto armado comenzó en 1835 entre las provincias del interior y el gobierno central?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (63, 1, 2, N'¿Qué famoso libro fue escrito por Domingo Faustino Sarmiento en 1845?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (64, 1, 2, N'¿Qué año marca el inicio de la dictadura militar conocida como el Proceso de Reorganización Nacional?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (65, 1, 2, N'¿Qué tratado de 1827 puso fin a la Guerra de la Banda Oriental?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (66, 1, 2, N'¿Qué reforma realizada en 1912 permitió el voto secreto y la representación proporcional en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (67, 1, 2, N'¿Qué presidente argentino fue conocido por su lucha contra la oligarquía y la implementación de la política de "Justicia Social"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (68, 1, 2, N'¿Qué revolución de 1955 derrocó al gobierno de Juan Domingo Perón?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (69, 1, 2, N'¿Quién fue el presidente argentino que instauró el "Estado de Bienestar" en la década de 1940?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (70, 1, 2, N'¿Qué dictadura argentina fue conocida por sus políticas de "Reorganización Nacional" y represión de la oposición?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (71, 1, 2, N'¿Qué evento político de 1983 marcó el fin del régimen militar en Argentina y el regreso a la democracia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (72, 1, 2, N'¿Qué guerra de 1839-1852 enfrentó a Buenos Aires contra el resto del país?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (73, 1, 2, N'¿Qué tratado de 1947 definió la relación de Argentina con el mundo tras la Segunda Guerra Mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (74, 1, 2, N'¿Qué importante reforma de 1958 permitió la modernización de la Constitución argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (75, 1, 2, N'¿Qué presidente argentino instauró el "Desarrollismo" en la década de 1960?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (76, 1, 2, N'¿Quién fue el general que lideró la Revolución de 1943 en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (77, 1, 2, N'¿Qué tratado de 1852 puso fin a las guerras civiles argentinas y estableció un gobierno federal?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (78, 1, 2, N'¿Qué movimiento político y social comenzó en 1916 con la elección de Hipólito Yrigoyen como presidente?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (79, 1, 2, N'¿Qué importante reforma educativa de 1949 buscó democratizar la educación en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (80, 1, 2, N'¿Qué nombre recibió el conflicto bélico entre Argentina y Paraguay de 1864 a 1870?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (81, 1, 2, N'¿Qué ley de 1927 buscó el control de la deuda externa en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (82, 1, 2, N'¿Qué dictadura argentina en 1981-1983 es conocida por su represión y violaciones de derechos humanos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (83, 1, 2, N'¿Qué evento de 1943 llevó al fin de la presidencia de Ramón Castillo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (84, 1, 3, N'¿Qué acuerdo internacional de 1825 estableció los límites definitivos entre Argentina y Brasil?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (85, 1, 3, N'¿Qué dictador argentino instauró la política de "Triple Alianza" y en qué año?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (86, 1, 3, N'¿Qué acuerdo de 1831 estableció el sistema de navegación por los ríos interiores de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (87, 1, 3, N'¿Qué presidente argentino promulgó la ley de "Capitalización del Estado" en 1949?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (88, 1, 3, N'¿Qué operación militar durante la dictadura argentina se denominó “Operativo Cóndor”?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (89, 1, 3, N'¿Qué figura política argentina fue clave en la creación de la "Conferencia del Rio de la Plata" en 1825?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (90, 1, 3, N'¿Qué resolución de 1859 permitió la incorporación de Buenos Aires a la Confederación Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (91, 1, 3, N'¿Qué ley de 1919 se conoció como la "Ley de la Jefa" y quién fue su impulsor?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (92, 1, 3, N'¿Qué plan económico implementado durante la presidencia de José Félix Uriburu tuvo un impacto profundo en la economía argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (93, 1, 3, N'¿Qué guerra entre 1865 y 1870 involucró a Argentina, Brasil y Uruguay contra Paraguay?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (94, 1, 3, N'¿Quién fue el principal rival político de Juan Domingo Perón durante su primera presidencia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (95, 1, 3, N'¿Qué evento histórico en 1820 resultó en la disolución de la Confederación Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (96, 1, 3, N'¿Qué reforma constitucional en 1934 permitió la reelección presidencial en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (97, 1, 3, N'¿Qué dictadura argentina se caracterizó por su política de "Reorganización Nacional" y represión de la oposición política?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (98, 1, 3, N'¿Qué importante acuerdo de 1941 con los Estados Unidos tuvo repercusiones en la política argentina durante la Segunda Guerra Mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (99, 1, 3, N'¿Qué proyecto de reforma agraria en 1949 buscó redistribuir tierras en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (100, 1, 3, N'¿Qué batalla decisiva de 1817 permitió la liberación de Chile de las fuerzas españolas?', NULL)
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (101, 1, 3, N'¿Qué movimiento político en 1970 promovió un modelo de economía de mercado y apertura al capital extranjero en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (102, 1, 3, N'¿Qué acuerdo internacional de 1991 estableció el MERCOSUR entre Argentina, Brasil, Paraguay y Uruguay?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (103, 1, 3, N'¿Qué influyente dictador argentino fue responsable del desarrollo del "Plan de Reorganización Nacional" en 1976?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (104, 1, 3, N'¿Qué evento en 1865 marcó el inicio de la Guerra de la Triple Alianza entre Argentina, Brasil y Uruguay contra Paraguay?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (105, 1, 3, N'¿Qué ley de 1920 estableció las bases del sufragio universal masculino en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (106, 1, 3, N'¿Qué tratado de 1825 estableció la independencia de las Provincias Unidas del Río de la Plata?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (107, 1, 3, N'¿Qué impacto tuvo la crisis económica global de 1930 en la política interna de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (108, 1, 3, N'¿Qué ley de 1949 fue conocida como la "Ley de la Nación"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (109, 1, 3, N'¿Qué líder de la Revolución Argentina de 1966 fue conocido por su autoritarismo y represión?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (110, 1, 3, N'¿Qué tratado en 1884 estableció la soberanía argentina sobre la Patagonia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (111, 1, 3, N'¿Qué reforma constitucional de 1949 fue derogada durante la dictadura de 1955?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (112, 1, 3, N'¿Qué importante conferencia de 1904 llevó a la expansión de la influencia argentina en la región?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (113, 1, 3, N'¿Qué dictadura argentina entre 1976 y 1983 se caracterizó por su política de "Represión y Control"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (114, 1, 3, N'¿Qué impacto tuvo la Revolución de Mayo de 1810 en el proceso de independencia de Sudamérica?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (115, 1, 3, N'¿Qué ley en 1912 reformó el sistema electoral argentino y permitió la participación de los partidos políticos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (116, 1, 3, N'¿Qué nombre recibe el tratado que resolvió el conflicto con Chile sobre el canal Beagle en 1984?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (117, 1, 3, N'¿Qué impacto tuvo el "Plan de Convertibilidad" en la economía argentina durante la década de 1990?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (118, 1, 3, N'¿Qué figura política en la década de 1980 lideró el retorno a la democracia en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (119, 1, 3, N'¿Qué presidente argentino impulsó el "Desarrollo Económico Nacional" en los años 60?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (120, 1, 3, N'¿Qué importante ley de 1934 permitió la creación de la "Corporación Argentina de Productores de Lácteos"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (121, 1, 3, N'¿Qué reforma constitucional de 1949 introdujo cambios significativos en la estructura del gobierno argentino?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (122, 1, 3, N'¿Qué nombre recibe el conflicto interno en Argentina durante la década de 1970 conocido como la "Guerra Sucia"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (123, 1, 3, N'¿Qué figura clave en la política argentina fue conocida por su oposición al régimen de Juan Domingo Perón en los años 50?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (124, 1, 3, N'¿Qué acuerdo internacional de 1945 estableció los fundamentos de la política exterior argentina durante la Segunda Guerra Mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (125, 1, 3, N'¿Qué reforma educativa de 1918 buscó la democratización y la autonomía universitaria en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (126, 1, 3, N'¿Qué dictador argentino implementó políticas de "Modernización y Reorganización" en 1980?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (127, 1, 3, N'¿Qué evento de 1829 resultó en la firma del tratado de paz entre Buenos Aires y el resto de las provincias argentinas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (128, 1, 3, N'¿Qué tratado internacional de 1865 marcó el final de la Guerra de la Triple Alianza?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (129, 1, 3, N'¿Qué dictadura argentina de 1983 a 1989 estuvo marcada por el intento de "Reformismo Económico"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (130, 1, 3, N'¿Qué reforma constitucional en 1956 modificó la estructura del gobierno argentino?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (131, 1, 3, N'¿Qué importante ley de 1960 permitió la reestructuración del sistema educativo argentino?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (132, 1, 3, N'¿Qué nombre recibe la crisis económica y política que ocurrió en Argentina en el año 2001?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (179, 6, 1, N'¿Cuál es la capital de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (180, 6, 1, N'¿Qué océano baña la costa este de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (181, 6, 1, N'¿Cuál es el río más largo de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (182, 6, 1, N'¿En qué provincia se encuentra el glaciar Perito Moreno?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (183, 6, 1, N'¿Qué cordillera atraviesa Argentina de norte a sur?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (184, 6, 1, N'¿Cuál es la montaña más alta de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (185, 6, 1, N'¿En qué provincia se encuentra la ciudad de Córdoba?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (186, 6, 1, N'¿Qué ciudad es conocida como la "Ciudad de la Furia"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (187, 6, 1, N'¿Qué provincia es conocida como la "Tierra de los Gigantes"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (188, 6, 1, N'¿En qué provincia se encuentra la ciudad de Mendoza?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (189, 6, 1, N'¿Cuál es el clima predominante en la región de la Pampa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (190, 6, 1, N'¿Qué provincia argentina es famosa por sus cataratas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (191, 6, 1, N'¿Qué provincia es conocida por el vino Malbec?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (192, 6, 1, N'¿Cuál es el nombre del desierto más grande de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (193, 6, 1, N'¿Qué región argentina es famosa por su producción de soja?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (194, 6, 1, N'¿Qué ciudad argentina es conocida por su arquitectura colonial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (195, 6, 1, N'¿Qué provincia argentina tiene una costa en el Atlántico Sur?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (196, 6, 1, N'¿En qué provincia se encuentra la ciudad de San Juan?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (197, 6, 1, N'¿Qué región de Argentina es conocida como la "Patagonia"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (198, 6, 1, N'¿Qué ciudad es la capital de la provincia de Buenos Aires?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (199, 6, 1, N'¿Qué provincia argentina es famosa por su producción de cuero?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (200, 6, 1, N'¿Cuál es el nombre del lago más grande de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (201, 6, 1, N'¿Qué provincia argentina es conocida por el carnaval de Gualeguaychú?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (202, 6, 1, N'¿En qué provincia se encuentra la ciudad de Salta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (203, 6, 1, N'¿Qué río forma parte de la frontera entre Argentina y Paraguay?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (204, 6, 1, N'¿Cuál es el nombre del parque nacional que protege los glaciares en el sur de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (205, 6, 1, N'¿Qué provincia es conocida por la producción de tabaco?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (206, 6, 1, N'¿Qué ciudad es famosa por su fiesta de la cerveza en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (207, 6, 1, N'¿Cuál es la principal actividad económica en la región de la Pampa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (208, 6, 1, N'¿Qué provincia argentina es conocida por el desarrollo de la industria pesquera?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (209, 6, 1, N'¿Cuál es el nombre de la ciudad universitaria en el norte de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (210, 6, 1, N'¿Qué provincia argentina es famosa por su cultura guaraní?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (211, 6, 1, N'¿Qué ciudad es conocida como la "Cuna de la Bandera"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (212, 6, 1, N'¿Qué provincia argentina es conocida por su producción de aceite de oliva?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (213, 6, 1, N'¿En qué provincia se encuentra la ciudad de Ushuaia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (214, 6, 1, N'¿Qué ciudad argentina es famosa por su centro histórico y su arquitectura?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (215, 6, 1, N'¿Qué provincia es conocida por su producción de algodón?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (216, 6, 1, N'¿Cuál es la región más al sur de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (217, 6, 1, N'¿En qué provincia se encuentra el Parque Nacional Los Alerces?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (218, 6, 1, N'¿Qué ciudad argentina es conocida por su arquitectura modernista?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (219, 6, 1, N'¿Qué río forma parte de la frontera entre Argentina y Brasil?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (220, 6, 1, N'¿Qué provincia es conocida por el Parque Nacional Talampaya?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (221, 6, 1, N'¿Cuál es el nombre de la ciudad que es la capital de la provincia de Santa Fe?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (222, 6, 1, N'¿Qué provincia argentina es famosa por sus viñedos y bodegas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (223, 6, 1, N'¿Qué región de Argentina es conocida por su producción de cereales?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (224, 6, 1, N'¿Qué ciudad es conocida por su carnaval en la provincia de Jujuy?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (225, 6, 2, N'¿Cuál es el nombre del sistema montañoso que se encuentra en la frontera entre Argentina y Chile?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (226, 6, 2, N'¿Qué provincia argentina se encuentra al noreste de Buenos Aires y es conocida por su producción de yerba mate?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (227, 6, 2, N'¿Cuál es la capital de la provincia de La Pampa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (228, 6, 2, N'¿En qué provincia argentina se encuentra la ciudad de San Rafael?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (229, 6, 2, N'¿Qué río forma parte de la frontera entre Argentina y Uruguay?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (230, 6, 2, N'¿Cuál es el nombre del volcán activo en la provincia de Neuquén?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (231, 6, 2, N'¿Qué ciudad argentina es conocida por sus termas y se encuentra en la provincia de Entre Ríos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (232, 6, 2, N'¿Cuál es el nombre del lago ubicado en la provincia de Neuquén que es conocido por sus aguas cristalinas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (233, 6, 2, N'¿Qué provincia argentina es famosa por su festival de la vendimia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (234, 6, 2, N'¿En qué provincia se encuentra el Parque Nacional Quebrada del Condorito?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (235, 6, 2, N'¿Cuál es el nombre del canal que conecta el Río Paraná con el Río de la Plata?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (236, 6, 2, N'¿Qué ciudad argentina es conocida por su arquitectura de estilo alemán y está en la provincia de Córdoba?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (237, 6, 2, N'¿En qué provincia se encuentra el Parque Nacional Los Alerces?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (238, 6, 2, N'¿Qué río forma el límite natural entre la región de Cuyo y la región de la Pampa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (239, 6, 2, N'¿Cuál es el nombre del glaciar que se encuentra en la provincia de Santa Cruz, además del Perito Moreno?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (240, 6, 2, N'¿Qué ciudad argentina es conocida como la "Ciudad de los Reyes" y está en la provincia de San Juan?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (241, 6, 2, N'¿Cuál es la mayor ciudad de la provincia de Jujuy?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (242, 6, 2, N'¿Qué provincia argentina es conocida por la producción de azúcar de caña?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (243, 6, 2, N'¿En qué provincia se encuentra el Parque Nacional Talampaya?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (244, 6, 2, N'¿Qué ciudad argentina es famosa por su carnaval y se encuentra en la provincia de Corrientes?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (245, 6, 2, N'¿Cuál es el nombre del río que atraviesa la provincia de Santiago del Estero y forma parte del sistema fluvial del río Paraná?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (246, 6, 2, N'¿Qué provincia argentina es conocida por sus formaciones rocosas llamadas "Los Gigantes"?', NULL)
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (247, 6, 2, N'¿Cuál es la ciudad más importante de la provincia de Formosa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (248, 6, 2, N'¿Qué provincia argentina tiene una costa en el Océano Atlántico y es conocida por su producción de mariscos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (249, 6, 2, N'¿Qué provincia argentina es famosa por sus formaciones geológicas denominadas "Valle de la Luna"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (250, 6, 2, N'¿En qué provincia se encuentra el Parque Nacional Lanín?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (251, 6, 2, N'¿Cuál es el nombre de la ciudad situada al sur de Buenos Aires, conocida por su puerto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (252, 6, 2, N'¿En qué provincia se encuentra el volcán Ojos del Salado?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (253, 6, 2, N'¿Qué ciudad es la capital de la provincia de Chaco?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (254, 6, 2, N'¿Qué provincia argentina es famosa por su producción de frutos secos, como nueces y almendras?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (255, 6, 2, N'¿En qué provincia argentina se encuentra la ciudad de General Roca?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (256, 6, 2, N'¿Cuál es el nombre del lago en la provincia de Mendoza que es utilizado para el riego de cultivos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (257, 6, 2, N'¿Qué región de Argentina es conocida por su producción de vino de alta calidad?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (258, 6, 2, N'¿Cuál es la ciudad más grande de la provincia de Misiones?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (259, 6, 2, N'¿En qué provincia se encuentra la Reserva Natural Otamendi?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (260, 6, 2, N'¿Cuál es el nombre del glaciar que se encuentra en la provincia de Santa Cruz, al norte del Perito Moreno?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (261, 6, 2, N'¿Qué ciudad es conocida como la "Ciudad de la Amistad" y se encuentra en la provincia de Córdoba?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (262, 6, 2, N'¿Qué provincia argentina es famosa por sus salinas y el Salar de Hombre Muerto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (263, 6, 2, N'¿Qué ciudad argentina es conocida por su centro histórico y está en la provincia de Tucumán?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (264, 6, 2, N'¿Qué provincia argentina es famosa por sus rutas del vino y se encuentra al oeste del país?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (265, 6, 2, N'¿Cuál es el nombre del río que recorre la provincia de Salta y es uno de los afluentes del río Paraguay?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (266, 6, 2, N'¿Qué ciudad es la capital de la provincia de Santa Cruz?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (267, 6, 3, N'¿Cuál es la altitud exacta del Cerro Bonete, una de las montañas más altas de la provincia de La Rioja?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (268, 6, 3, N'¿Qué tres provincias argentinas están delimitadas por el río Pilcomayo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (269, 6, 3, N'¿Cuál es el nombre del desierto en el norte de Argentina que es uno de los más áridos del país?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (270, 6, 3, N'¿Qué lagos de la Patagonia argentina están comunicados por el Canal de los Témpanos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (271, 6, 3, N'¿Cuál es el nombre del parque nacional en la provincia de Mendoza que protege la flora y fauna del área del Aconcagua?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (272, 6, 3, N'¿Qué importante falla geológica atraviesa el noroeste de Argentina, desde la región andina hasta el Gran Chaco?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (273, 6, 3, N'¿Qué río argentino nace en la cordillera de los Andes y recorre la provincia de Mendoza antes de desembocar en el Océano Atlántico?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (274, 6, 3, N'¿Qué formación geológica en la provincia de Salta es famosa por sus formaciones de roca multicolores y cómo se llama el parque que la protege?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (275, 6, 3, N'¿Cuál es el nombre de la región de gran extensión que se encuentra al sur de la provincia de Buenos Aires, conocida por sus estepas y valles secos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (276, 6, 3, N'¿Qué glaciares en la provincia de Santa Cruz son parte del Campo de Hielo Patagónico Sur y qué particularidad tienen?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (277, 6, 3, N'¿Qué fenómeno geológico es responsable de la formación de la Quebrada de Humahuaca en el noroeste de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (278, 6, 3, N'¿Cuál es la profundidad máxima del Lago Argentino, el lago más grande de la Patagonia argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (279, 6, 3, N'¿Qué importante río argentino se encuentra en la región del Gran Chaco y cuáles son sus principales afluentes?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (280, 6, 3, N'¿Cuál es el nombre de la reserva natural en la provincia de Córdoba que protege la mayor área de bosque de yungas en Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (281, 6, 3, N'¿Qué montaña en la provincia de San Juan es conocida por sus formaciones rocosas únicas y cómo se llama el parque que la protege?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (282, 6, 3, N'¿Qué río atraviesa la provincia de Tucumán y es crucial para la irrigación de los cultivos en la región?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (283, 6, 3, N'¿Cuál es el nombre del macizo montañoso en el sur de Argentina que incluye el Cerro Fitz Roy y el Cerro Torre?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (284, 6, 3, N'¿Qué parque nacional en la provincia de Jujuy es famoso por sus formaciones geológicas y su biodiversidad?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (285, 6, 3, N'¿Qué río forma parte de la frontera natural entre Argentina y Bolivia, y cuál es su importancia para la región?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (286, 6, 3, N'¿Cuál es el nombre del glaciar en la provincia de Santa Cruz que es conocido por su actividad de ruptura de grandes bloques de hielo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (287, 6, 3, N'¿Qué región argentina es conocida por su producción de sal y cuáles son las principales salinas que se encuentran allí?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (288, 6, 3, N'¿Qué ciudad argentina, ubicada en la provincia de Mendoza, es conocida por ser un centro de investigación y conservación de fauna silvestre?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (289, 6, 3, N'¿Qué importante recurso hídrico se encuentra en el subsuelo de la región del Gran Chaco, conocido como el Acuífero Guaraní?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (290, 6, 3, N'¿Qué parque nacional en la provincia de Tierra del Fuego protege una de las últimas selvas subantárticas del planeta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (291, 6, 3, N'¿Cuál es la extensión en kilómetros cuadrados del Parque Nacional Los Alerces y qué tipo de ecosistemas protege?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (292, 6, 3, N'¿Qué fenómeno geológico ha dado lugar a la formación de la Quebrada del Toro en la provincia de Salta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (293, 6, 3, N'¿Qué importantes cordilleras se encuentran en la provincia de Mendoza y cuáles son sus picos más altos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (294, 6, 3, N'¿Qué parque nacional en la provincia de Salta es famoso por sus pinturas rupestres y su paisaje árido?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (295, 6, 3, N'¿Cuál es la importancia ecológica del Parque Nacional Talampaya en la provincia de La Rioja?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (296, 6, 3, N'¿Qué ciudad argentina, ubicada en la provincia de Córdoba, es conocida por su papel en la historia del transporte ferroviario?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (297, 6, 3, N'¿Cuál es la importancia geográfica y ecológica del sistema de lagos en la región de la Patagonia Norte?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (298, 6, 3, N'¿Qué importantes yacimientos paleontológicos se encuentran en la provincia de Neuquén y qué fósiles han sido encontrados allí?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (299, 6, 3, N'¿Cuál es el nombre del río que forma la frontera entre Argentina y Paraguay en el noreste del país?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (300, 6, 3, N'¿Qué ciudad argentina es conocida por su influencia en el desarrollo de la industria del vino y se encuentra en la provincia de San Juan?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (301, 6, 3, N'¿Qué región argentina es famosa por sus formaciones rocosas conocidas como “Los Gigantes” y qué actividades al aire libre se pueden realizar allí?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (302, 6, 3, N'¿Qué ciudad argentina es el centro de la producción de azúcar de caña y qué provincia la alberga?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (303, 6, 3, N'¿Qué parque nacional en la provincia de Buenos Aires es famoso por sus campos de médanos y su biodiversidad?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (304, 6, 3, N'¿Cuál es la importancia del río Paraná en la economía y el transporte de la región del Litoral argentino?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (305, 6, 3, N'¿Qué ciudad argentina es conocida como la "Ciudad del Sol" y cuál es su importancia en la región del noroeste?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (306, 6, 3, N'¿Cuál es el nombre del sistema montañoso en la provincia de San Luis que forma parte de la región de las Sierras de San Luis?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (307, 6, 3, N'¿Qué parque nacional en la provincia de Mendoza es conocido por sus valles y formaciones rocosas únicas, incluyendo el famoso Valle de las Leñas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (308, 6, 3, N'¿Qué sistema de lagos en el sur de Argentina está formado por el Lago Viedma, el Lago Argentino y el Lago Roca?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (309, 6, 3, N'¿Qué provincia argentina es conocida por su producción de minerales como el litio y el potasio en el Salar del Hombre Muerto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (310, 6, 3, N'¿Qué importantes formaciones rocosas y geológicas se encuentran en la provincia de Mendoza y cuál es su importancia científica?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (311, 3, 1, N'¿Cuál de los siguientes deportes se juega con una pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (312, 3, 1, N'¿En qué deporte se usa una raqueta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (313, 3, 1, N'¿Qué deporte se juega en una cancha de baloncesto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (314, 3, 1, N'¿Cuál de estos deportes se juega en una piscina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (315, 3, 1, N'¿Qué deporte involucra correr en una pista?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (316, 3, 1, N'¿Cuál es el deporte más popular en el mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (317, 3, 1, N'¿En qué deporte se realizan giros y saltos en el aire?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (318, 3, 1, N'¿Cuál de estos deportes se juega con un aro y una pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (319, 3, 1, N'¿Cuál de los siguientes deportes es de equipo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (320, 3, 1, N'¿Qué deporte se juega en un campo con porterías?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (321, 3, 1, N'¿Cuál de estos es un deporte de combate?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (322, 3, 1, N'¿Cuál de estos deportes es conocido como el "deporte rey"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (323, 3, 1, N'¿En qué deporte se utiliza una pelota ovalada?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (324, 3, 1, N'¿Cuál de estos deportes se juega en una pista de hielo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (325, 3, 1, N'¿En qué deporte se compite en maratones?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (326, 3, 1, N'¿Cuál es el objetivo del baloncesto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (327, 3, 1, N'¿Cuál de estos es un deporte de equipo que se juega con bate y pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (328, 3, 1, N'¿Qué deporte utiliza un aro y una pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (329, 3, 1, N'¿Cuál de estos deportes se juega en una mesa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (330, 3, 1, N'¿En qué deporte se utiliza una pelota de golf?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (331, 3, 1, N'¿Cuál es el deporte que se juega en una pista de atletismo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (332, 3, 1, N'¿Qué deporte involucra saltar sobre un caballo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (333, 3, 1, N'¿Cuál de estos es un deporte de invierno?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (334, 3, 1, N'¿Qué deporte se juega con un disco en una pista?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (335, 3, 1, N'¿Qué deporte se juega con un balón en un campo rectangular?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (336, 3, 1, N'¿Cuál de estos deportes se juega con raquetas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (337, 3, 1, N'¿Qué deporte involucra lanzar una jabalina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (338, 3, 1, N'¿Cuál de estos deportes se juega en un campo de césped?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (339, 3, 1, N'¿Qué deporte se practica en el mar con una tabla?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (340, 3, 1, N'¿Cuál de los siguientes deportes se juega con una pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (341, 3, 1, N'¿En qué deporte se usa una raqueta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (342, 3, 1, N'¿Qué deporte se juega en una cancha de baloncesto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (343, 3, 1, N'¿Cuál de estos deportes se juega en una piscina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (344, 3, 1, N'¿Qué deporte involucra correr en una pista?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (345, 3, 1, N'¿Cuál es el deporte más popular en el mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (346, 3, 1, N'¿En qué deporte se realizan giros y saltos en el aire?', NULL)
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (347, 3, 1, N'¿Cuál de estos deportes se juega con un aro y una pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (348, 3, 1, N'¿Cuál de los siguientes deportes es de equipo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (349, 3, 1, N'¿Qué deporte se juega en un campo con porterías?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (350, 3, 1, N'¿Cuál de estos es un deporte de combate?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (351, 3, 1, N'¿Cuál de estos deportes es conocido como el "deporte rey"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (352, 3, 1, N'¿En qué deporte se utiliza una pelota ovalada?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (353, 3, 1, N'¿Cuál de estos deportes se juega en una pista de hielo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (354, 3, 1, N'¿En qué deporte se compite en maratones?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (355, 3, 1, N'¿Cuál es el objetivo del baloncesto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (356, 3, 1, N'¿Cuál de estos es un deporte de equipo que se juega con bate y pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (357, 3, 1, N'¿Qué deporte utiliza un aro y una pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (358, 3, 1, N'¿Cuál de estos deportes se juega en una mesa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (359, 3, 1, N'¿En qué deporte se utiliza una pelota de golf?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (360, 3, 1, N'¿Cuál es el deporte que se juega en una pista de atletismo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (361, 3, 1, N'¿Qué deporte involucra saltar sobre un caballo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (362, 3, 1, N'¿Cuál de estos es un deporte de invierno?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (363, 3, 1, N'¿Qué deporte se juega con un disco en una pista?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (364, 3, 1, N'¿Qué deporte se juega con un balón en un campo rectangular?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (365, 3, 1, N'¿Cuál de estos deportes se juega con raquetas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (366, 3, 1, N'¿Qué deporte involucra lanzar una jabalina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (367, 3, 1, N'¿Cuál de estos deportes se juega en un campo de césped?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (368, 3, 1, N'¿Qué deporte se practica en el mar con una tabla?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (369, 3, 1, N'¿En qué deporte se juega con una pelota de baloncesto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (370, 3, 1, N'¿Cuál es el objetivo del fútbol?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (371, 3, 1, N'¿Qué deporte se juega en una pista de atletismo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (372, 3, 1, N'¿Cuál de estos deportes se juega en una cancha de tenis?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (373, 3, 1, N'¿Qué deporte se practica en la nieve?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (374, 3, 1, N'¿Qué deporte utiliza un balón redondo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (375, 3, 1, N'¿Cuál de estos deportes se juega con un palo y una pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (376, 3, 1, N'¿Qué deporte se juega con un disco volador?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (377, 3, 1, N'¿Cuál de estos deportes involucra un anillo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (378, 3, 1, N'¿Qué deporte se juega en una cancha cubierta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (379, 3, 1, N'¿En qué deporte se utilizan pelotas de diferentes tamaños?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (380, 3, 2, N'¿En qué deporte se utilizan los términos "ace", "deuce" y "match point"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (381, 3, 2, N'¿Qué deporte se practica en un octágono?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (382, 3, 2, N'¿Qué deporte es conocido como el "deporte rey"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (383, 3, 2, N'¿Qué deporte se juega con una red y una pelota en la playa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (384, 3, 2, N'¿Qué deporte se juega con un aro y una pelota?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (385, 3, 2, N'¿En qué deporte se utiliza un disco?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (386, 3, 2, N'¿Qué deporte utiliza una pelota ovalada?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (387, 3, 2, N'¿Qué deporte es popular en los Juegos Olímpicos de verano?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (388, 3, 2, N'¿Qué deporte se juega en una piscina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (389, 3, 2, N'¿Qué deporte tiene un torneo llamado "Wimbledon"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (390, 3, 2, N'¿Cuál es la duración de un partido de fútbol?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (391, 3, 2, N'¿En qué deporte se hace un "shootout"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (392, 3, 2, N'¿Qué deporte se juega con una paleta y una bola en una cancha?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (393, 3, 2, N'¿Cuál es la posición de un jugador que es el último en la defensa en fútbol?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (394, 3, 2, N'¿Qué deporte se juega en una cancha de baloncesto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (395, 3, 2, N'¿Qué deporte tiene un balón de fútbol que se usa en los partidos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (396, 3, 2, N'¿Cuál es la distancia de una maratón?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (397, 3, 2, N'¿Qué deporte se juega con una raqueta y un volante?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (398, 3, 2, N'¿En qué deporte se realizan los "dribles"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (399, 3, 2, N'¿Qué deporte se practica en un ring?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (400, 3, 2, N'¿Qué deporte se basa en el lanzamiento de una bola?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (401, 3, 2, N'¿Qué deporte se juega con un balón de cuero?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (402, 3, 2, N'¿Qué deporte se juega en una cancha rectangular?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (403, 3, 2, N'¿Qué deporte tiene un balón que se puede patear?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (404, 3, 2, N'¿Qué deporte se practica en una pista de hielo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (405, 3, 2, N'¿Cuál es el equipo de fútbol más laureado en la historia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (406, 3, 2, N'¿Qué deporte tiene como objetivo lanzar un balón a través de un aro elevado?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (407, 3, 3, N'¿Cuál es el único país que ha participado en todas las Copas del Mundo de la FIFA desde 1930?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (408, 3, 3, N'¿Quién es el atleta con más medallas olímpicas de todos los tiempos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (409, 3, 3, N'¿En qué año se celebraron los primeros Juegos Olímpicos modernos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (410, 3, 3, N'¿Qué equipo ha ganado más Copas de Europa en fútbol?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (411, 3, 3, N'¿Quién es el máximo goleador de la historia del fútbol mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (412, 3, 3, N'¿Qué deporte se practica en el Tour de Francia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (413, 3, 3, N'¿Quién fue el primer jugador en ganar el Balón de Oro?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (414, 3, 3, N'¿Cuál es el récord mundial de 100 metros planos en hombres?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (415, 3, 3, N'¿Qué país ganó la Copa del Mundo de Rugby en 2019?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (416, 3, 3, N'¿En qué deporte se utiliza el término "grand slam"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (417, 3, 3, N'¿Quién es considerado el mejor tenista de todos los tiempos por muchos expertos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (418, 3, 3, N'¿Qué país es conocido por su equipo de cricket llamado "Los All Blacks"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (419, 3, 3, N'¿Qué famoso boxeador se conocía como "The Greatest"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (420, 3, 3, N'¿Cuál es el deporte más antiguo que se practica en la actualidad?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (421, 3, 3, N'¿Qué país tiene más títulos de la Copa América?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (422, 3, 3, N'¿Quién fue el primer piloto en ganar siete campeonatos mundiales de Fórmula 1?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (423, 3, 3, N'¿En qué año se fundó la NBA?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (424, 3, 3, N'¿Qué deporte se juega en el All England Club?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (425, 3, 3, N'¿Quién es el jugador con más títulos de Grand Slam en tenis femenino?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (426, 3, 3, N'¿Cuál es la ciudad que ha acogido más Juegos Olímpicos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (427, 3, 3, N'¿Quién es el único jugador en la historia de la NBA que ha anotado 100 puntos en un solo partido?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (428, 3, 3, N'¿En qué deporte se lleva a cabo el "Ironman"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (429, 3, 3, N'¿Qué país ganó la primera Copa del Mundo de la FIFA?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (430, 3, 3, N'¿Quién es el máximo goleador de la historia de la UEFA Champions League?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (431, 3, 3, N'¿Qué deporte combina esquí y tiro?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (432, 3, 3, N'¿Cuál es la distancia de una maratón completa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (433, 3, 3, N'¿Qué famoso nadador ganó ocho medallas de oro en los Juegos Olímpicos de Pekín 2008?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (434, 3, 3, N'¿Quién es el atleta más rápido del mundo en la historia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (435, 3, 3, N'¿Qué deporte se practica en un velódromo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (436, 3, 3, N'¿Qué equipo nacional ha ganado más títulos de la Eurocopa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (437, 3, 3, N'¿Quién fue el primer jugador en anotar un gol en un Mundial de fútbol?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (438, 3, 3, N'¿Qué país ganó el oro en baloncesto masculino en los Juegos Olímpicos de Londres 2012?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (439, 3, 3, N'¿Cuál es el nombre del torneo de golf más prestigioso del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (440, 3, 3, N'¿Qué equipo de fútbol tiene el apodo "Los Diablos Rojos"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (441, 3, 3, N'¿Quién fue el primer jugador en ser seleccionado en el draft de la NBA?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (442, 3, 3, N'¿Qué famoso torneo de tenis se celebra en Australia cada enero?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (443, 3, 3, N'¿Cuál es el nombre del famoso maratón que se celebra en Boston?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (444, 3, 3, N'¿Qué deporte se juega en el "Wimbledon"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (445, 3, 3, N'¿Quién es el jugador de fútbol con más apariciones en la selección argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (446, 3, 3, N'¿Qué país organizó los Juegos Olímpicos de 2008?', NULL)
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (447, 3, 3, N'¿Cuál es la superficie de juego más rápida en tenis?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (448, 3, 3, N'¿En qué deporte se usa un "caddy"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (449, 3, 3, N'¿Quién es el máximo anotador en la historia de la selección de Brasil?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (450, 3, 3, N'¿Cuál es la duración de un partido de rugby?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (451, 3, 3, N'¿En qué país se originó el yoga?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (452, 3, 3, N'¿Quién fue el primer entrenador en ganar la Champions League con tres clubes diferentes?', NULL)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (1, 3, 1, N'Tenis', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (2, 3, 2, N'Futbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (3, 3, 3, N'Baloncesto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (4, 3, 4, N'handball', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (5, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (6, 3, 2, N'Golf', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (7, 3, 3, N'Esquí', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (8, 3, 4, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (9, 3, 1, N'Tenis', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (10, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (11, 3, 3, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (12, 3, 4, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (13, 3, 1, N'Baloncesto', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (14, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (15, 3, 3, N'Voleibol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (16, 3, 4, N'Bádminton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (17, 3, 1, N'Natación', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (18, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (19, 3, 3, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (20, 3, 4, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (21, 3, 1, N'Atletismo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (22, 3, 2, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (23, 3, 3, N'Esquí', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (24, 3, 4, N'Bádminton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (25, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (26, 3, 2, N'Cricket', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (27, 3, 3, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (28, 3, 4, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (29, 3, 1, N'Gimnasia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (30, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (31, 3, 3, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (32, 3, 4, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (33, 3, 1, N'Baloncesto', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (34, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (35, 3, 3, N'Voleibol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (36, 3, 4, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (37, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (38, 3, 2, N'Golf', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (39, 3, 3, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (40, 3, 4, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (41, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (42, 3, 2, N'Bádminton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (43, 3, 3, N'Baloncesto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (44, 3, 4, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (45, 3, 1, N'Boxeo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (46, 3, 2, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (47, 3, 3, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (48, 3, 4, N'Voleibol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (49, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (50, 3, 2, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (51, 3, 3, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (52, 3, 4, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (53, 3, 1, N'Rugby', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (54, 3, 2, N'Baloncesto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (55, 3, 3, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (56, 3, 4, N'Bádminton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (57, 3, 1, N'Hockey sobre hielo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (58, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (59, 3, 3, N'Baloncesto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (60, 3, 4, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (61, 3, 1, N'Atletismo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (62, 3, 2, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (63, 3, 3, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (64, 3, 4, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (65, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (66, 3, 2, N'Golf', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (67, 3, 3, N'Esquí', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (68, 3, 4, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (69, 3, 1, N'Tenis', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (70, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (71, 3, 3, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (72, 3, 4, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (73, 3, 1, N'Baloncesto', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (74, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (75, 3, 3, N'Voleibol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (76, 3, 4, N'Bádminton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (77, 3, 1, N'Natación', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (78, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (79, 3, 3, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (80, 3, 4, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (81, 3, 1, N'Atletismo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (82, 3, 2, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (83, 3, 3, N'Esquí', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (84, 3, 4, N'Bádminton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (85, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (86, 3, 2, N'Cricket', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (87, 3, 3, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (88, 3, 4, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (89, 3, 1, N'Gimnasia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (90, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (91, 3, 3, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (92, 3, 4, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (93, 3, 1, N'Baloncesto', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (94, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (95, 3, 3, N'Voleibol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (96, 3, 4, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (97, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (98, 3, 2, N'Golf', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (99, 3, 3, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (100, 3, 4, N'Natación', 0)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (101, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (102, 3, 2, N'Bádminton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (103, 3, 3, N'Baloncesto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (104, 3, 4, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (105, 3, 1, N'Boxeo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (106, 3, 2, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (107, 3, 3, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (108, 3, 4, N'Voleibol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (109, 3, 1, N'Fútbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (110, 3, 2, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (111, 3, 3, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (112, 3, 4, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (113, 3, 1, N'Rugby', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (114, 3, 2, N'Baloncesto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (115, 3, 3, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (116, 3, 4, N'Bádminton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (117, 3, 1, N'Hockey sobre hielo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (118, 3, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (119, 3, 3, N'Baloncesto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (120, 3, 4, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (121, 3, 1, N'Atletismo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (122, 3, 2, N'Ciclismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (123, 3, 3, N'Natación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (124, 3, 4, N'Fútbol', 0)
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (1, N'tomi', N'loquin', N'123', N'w@w', NULL, -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (2, N'Goldberg', N'Goldberg', N'Goldberg', N'Goldberg@Goldberg', NULL, -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (3, N'Uriel berman', N'UrCrack', N'123', N'q@q', NULL, -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (4, N'ii', N'iii', N'ii', N'i@i', NULL, -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (5, N'goldberg', N'goldberg', N'goldberg', N'goldberg@goldberg', NULL, -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (6, N'Juan Domingo', N'Perón', N'A', N'juandperon@gmail.com', N'/fotosPerfil/fotoDefault.png', -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (7, N'tomigoldberg', N'tomigoldberg', N'tomigoldberg', N'tomigoldberg@tomigoldberg', N'/fotosPerfil/fotoDefault.png', -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (8, N'julian', N'julian', N'julian', N'julian@gmail.com', N'/fotosPerfil/fotoDefault.png', -1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Partida] FOREIGN KEY([IdPartida])
REFERENCES [dbo].[Partida] ([IdPartida])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Partida]
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Usuario]
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
/****** Object:  StoredProcedure [dbo].[SP_CategoriaPorID]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CategoriaPorID]
@idCategoria int
as
begin

select * from categorias where IdCategoria=@idCategoria
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CrearJugador]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CrearJugador]
@IdUsuario INT,
@IdJugador INT,
@IdPartida INT
AS BEGIN
INSERT INTO Jugador (IdUsuario, IdJugador, IdPartida) VALUES (@IdUsuario, @IdJugador, @IdPartida);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CrearPartida]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CrearPartida]
@TiempoMax INT,
@GirarNehuen INT,
@IdDificultad INT
AS BEGIN
DECLARE @GirarNehuenBit BIT;
SET @GirarNehuenBit = CAST(@GirarNehuen AS BIT);
INSERT INTO Partida (TiempoMax, GirarNehuen, IdDificultad) VALUES (@TiempoMax, @GirarNehuen, @IdDificultad);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CrearUsuario]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_CrearUsuario]
@contra varchar(100),
@nick varchar(100),
@nombre varchar(100),
@mail varchar(100)
as
begin
insert into Usuario(nombre, nick, contrasena, mail, FotoPerfil, codigorecuperacion) values(@nombre,@nick,@contra,@mail,'/fotosPerfil/fotoDefault.png',-1)
end


select * from Usuario
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarCategorias]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarCategorias]
AS BEGIN SELECT * FROM Categorias;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarDificultades]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarDificultades]
AS BEGIN 
SELECT * FROM Dificultades; 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarPreguntas]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarPreguntas]
@dificultadId int,
@categoriaId int
AS BEGIN 
IF (@dificultadId = -1 AND @categoriaId = -1)
	SELECT * FROM Preguntas order by newid();
ELSE IF (@dificultadId = -1)
	SELECT * FROM Preguntas WHERE IdCategoria = @categoriaId order by newid();
ELSE IF (@categoriaId = -1)
	SELECT * FROM Preguntas WHERE IdDificultad = @dificultadId order by newid();
ELSE
	SELECT * FROM Preguntas WHERE IdCategoria = @categoriaId AND IdDificultad = @dificultadId order by newid();
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarRespuestas]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarRespuestas]
@PreguntaId INT
AS BEGIN 
SELECT * FROM Respuestas WHERE IdPregunta = @PreguntaId;
END
--CREATE TYPE PreguntasList AS TABLE ( PreguntaId INT );
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarUsuarios]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarUsuarios]
AS BEGIN
select * from Usuario;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarUsuariosXIDPartida]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ListarUsuariosXIDPartida]

@IdPartida int
as
begin
select u.IdUsuario, u.Nombre, u.FotoPerfil, j.PersonajesConseguidos, j.CantidadParaCorona from partida p
inner join jugador j on j.IdPartida=p.IdPartida
inner join Usuario u on u.IdUsuario=j.IdUsuario
where j.IdPartida=@IdPartida
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarUsuariosXMail]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarUsuariosXMail]
@Mail VARCHAR(320)
AS BEGIN
select * from Usuario where mail= @Mail;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerIDDeCategoria]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ObtenerIDDeCategoria]
@Categoria varchar(100)
as begin
select * from Categorias where Nombre=@Categoria
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerIdPartida]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerIdPartida]
AS BEGIN 
SELECT TOP 1 IdPartida FROM Partida ORDER BY IdPartida DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerJugador]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerJugador]
@JugadorID INT,
@PartidaID INT
AS BEGIN
SELECT IdJugador FROM Partida p INNER JOIN Jugador j ON p.IdPartida = j.IdPartida WHERE p.IdPartida = @PartidaID AND IdJugador = @JugadorID;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerPartida]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerPartida]
@PartidaID INT
AS BEGIN
SELECT IdPartida FROM Partida WHERE IdPartida = @PartidaID;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SeleccionarUsuarioXID]    Script Date: 21/09/2024 18:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_SeleccionarUsuarioXID]
@IdUsuario int
as begin
select * from usuario where IdUsuario=@IdUsuario
end
GO
