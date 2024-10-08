USE [PreguntadORT]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  Table [dbo].[Dificultades]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  Table [dbo].[Jugador]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  Table [dbo].[Partida]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partida](
	[IdPartida] [int] IDENTITY(1,1) NOT NULL,
	[TiempoMax] [int] NOT NULL,
	[GirarNehuen] [bit] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[PartidaIniciada] [bit] NULL,
 CONSTRAINT [PK_Partida] PRIMARY KEY CLUSTERED 
(
	[IdPartida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[Nombre] [varchar](100) NOT NULL,
	[Foto] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Respuestas]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 23/9/2024 14:36:23 ******/
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
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 101, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 2, 101, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 102, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 103, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 104, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 2, 103, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 105, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 106, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 107, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 108, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 109, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 110, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 111, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 112, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 113, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 114, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 115, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 116, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 2, 118, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (9, 1, 123, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (9, 2, 113, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (9, 2, 112, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 2, 111, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 126, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 128, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 129, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 1, 117, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (6, 2, 108, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 118, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 120, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 121, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 1, 122, NULL, NULL)
INSERT [dbo].[Jugador] ([IdUsuario], [IdJugador], [IdPartida], [PersonajesConseguidos], [CantidadParaCorona]) VALUES (1, 2, 123, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Partida] ON 

INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (1, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (2, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (3, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (4, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (5, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (6, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (7, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (8, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (9, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (10, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (11, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (12, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (13, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (14, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (15, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (16, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (17, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (18, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (19, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (20, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (21, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (22, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (23, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (24, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (25, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (26, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (27, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (28, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (29, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (30, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (31, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (32, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (33, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (34, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (35, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (36, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (37, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (38, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (39, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (40, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (41, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (42, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (43, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (44, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (45, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (46, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (47, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (48, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (49, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (50, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (51, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (52, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (53, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (54, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (55, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (56, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (57, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (58, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (59, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (60, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (61, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (62, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (63, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (64, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (65, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (66, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (67, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (68, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (69, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (70, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (71, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (72, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (73, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (74, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (75, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (76, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (77, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (78, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (79, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (80, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (81, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (82, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (83, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (84, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (85, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (86, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (87, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (88, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (89, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (90, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (91, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (92, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (93, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (94, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (95, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (96, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (97, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (98, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (99, 0, 0, 0, NULL)
GO
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (100, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (101, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (102, 30, 0, 0, 1)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (103, 30, 0, 0, 1)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (104, 0, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (105, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (106, 15, 0, 0, 1)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (107, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (108, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (109, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (110, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (111, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (112, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (113, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (114, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (115, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (116, 30, 0, 0, 1)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (117, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (118, 45, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (119, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (120, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (121, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (122, 60, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (123, 15, 0, 0, 1)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (124, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (125, 15, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (126, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (127, 30, 0, 0, NULL)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (128, 15, 0, 0, 1)
INSERT [dbo].[Partida] ([IdPartida], [TiempoMax], [GirarNehuen], [IdDificultad], [PartidaIniciada]) VALUES (129, 15, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Partida] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 

INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, 1, N'¿Quién pintó "La última cena"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, 1, N'¿Qué instrumento es típicamente utilizado en la música clásica india?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, 1, N'¿Quién compuso "La flauta mágica"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, 1, N'¿Qué técnica de pintura es conocida por su uso de puntos de colores?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, 1, N'¿Qué estilo de música es conocido por su improvisación y raíces afroamericanas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, 1, N'¿Cuál es el nombre del teatro más famoso de Londres, asociado a William Shakespeare?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 2, 1, N'¿Quién es el autor de la obra de teatro "Romeo y Julieta"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 2, 1, N'¿Qué artista es famoso por cortar su propia oreja?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 2, 1, N'¿Quién pintó "La noche estrellada"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 2, 1, N'¿Cuál es el nombre de la técnica de esculpir mármol usada por Miguel Ángel?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 2, 2, N'¿Qué artista pintó la serie de obras conocida como "Los nenúfares"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (12, 2, 2, N'¿Quién es conocido como el "Padre del Jazz"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 2, 2, N'¿En qué museo se encuentra "La Gioconda"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 2, 2, N'¿Qué arquitecto diseñó la Catedral de la Sagrada Familia en Barcelona?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 2, 2, N'¿Cuál es la sinfonía más conocida de Beethoven, llamada "La Sinfonía del Destino"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (16, 2, 2, N'¿Qué movimiento artístico es caracterizado por su representación de sueños y escenas irreales?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (17, 2, 2, N'¿Cuál es el nombre del famoso muralista mexicano que pintó "Sueño de una tarde dominical en la Alameda Central"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (18, 2, 2, N'¿Qué compositor es conocido por la obra "El cascanueces"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 5, 2, N'¿Qué actriz interpretó a Cleopatra en la película de 1963?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (20, 2, 2, N'¿Quién es el escultor de "El pensador"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (21, 2, 3, N'¿Qué técnica utilizó Georges Seurat para crear "Una tarde de domingo en la isla de la Grande Jatte"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (22, 2, 3, N'¿Quién compuso la ópera "Parsifal"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (23, 2, 3, N'¿Qué escultor renacentista es conocido por su obra "David" en bronce?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (24, 2, 3, N'¿Qué término describe una pintura hecha sobre un yeso húmedo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (25, 2, 3, N'¿Qué pintor es conocido por su uso del claroscuro y obras como "La lección de anatomía del Dr. Tulp"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (26, 2, 3, N'¿Qué compositor es conocido por su obra "La consagración de la primavera"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (27, 2, 3, N'¿Qué pintora mexicana es conocida por sus autorretratos y su obra "Las dos Fridas"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (28, 2, 3, N'¿Cuál es la nacionalidad de Gustav Klimt, famoso por "El beso"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (29, 2, 3, N'¿Quién escribió la obra de teatro "Esperando a Godot"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (30, 2, 3, N'¿Qué movimiento artístico es caracterizado por la abstracción geométrica y el uso de colores primarios?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (31, 3, 1, N'¿Cuál es el planeta más cercano al Sol?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (32, 3, 1, N'¿Qué gas es esencial para la respiración de los seres humanos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (33, 3, 1, N'¿Qué elemento químico tiene el símbolo "O"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (34, 3, 1, N'¿Cuál es la principal fuente de energía para la vida en la Tierra?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (35, 3, 1, N'¿Cómo se llama el proceso por el cual las plantas convierten la luz solar en energía?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (36, 3, 1, N'¿Qué órgano bombea sangre en el cuerpo humano?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (37, 3, 1, N'¿Quién es conocido como el "padre de la física moderna"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (38, 3, 1, N'¿Qué instrumento se utiliza para observar objetos celestes lejanos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (39, 3, 1, N'¿Qué tipo de animal es un delfín?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (40, 3, 1, N'¿Cuántos planetas hay en el sistema solar?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (41, 3, 2, N'¿Cuál es la unidad de medida de la corriente eléctrica?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (42, 3, 2, N'¿Quién formuló las leyes del movimiento?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (43, 3, 2, N'¿Cuál es la fórmula química del agua?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (44, 3, 2, N'¿Qué científico descubrió la penicilina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (45, 3, 2, N'¿Cómo se llama el primer satélite artificial lanzado al espacio?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (46, 3, 2, N'¿Qué es el ADN?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (47, 3, 2, N'¿Qué teoría sostiene que el universo se expandió a partir de un punto inicial extremadamente denso y caliente?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (48, 3, 2, N'¿Qué planeta es conocido como el "planeta rojo"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (49, 3, 2, N'¿Qué gas es el más abundante en la atmósfera terrestre?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (50, 3, 2, N'¿Quién es conocido por su teoría de la evolución por selección natural?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (51, 3, 3, N'¿Qué científico propuso la teoría heliocéntrica del sistema solar?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (52, 3, 3, N'¿Qué físico es conocido por su trabajo en la mecánica cuántica y por desarrollar la ecuación que lleva su nombre?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (53, 3, 3, N'¿Cuál es la constante de Planck?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (54, 3, 3, N'¿Qué es el bosón de Higgs?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (55, 3, 3, N'¿Qué rama de la biología estudia los ecosistemas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (56, 3, 3, N'¿Qué teoría científica explica la gravedad como una curvatura del espacio-tiempo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (57, 3, 3, N'¿Qué científico introdujo la teoría de la selección natural en "El origen de las especies"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (58, 3, 3, N'¿Cuál es el número de elementos actualmente en la tabla periódica?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (59, 3, 3, N'¿Qué es una supernova?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (60, 3, 3, N'¿Quién formuló la teoría de la relatividad?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (61, 4, 1, N'¿Cuántos jugadores hay en un equipo de fútbol en el campo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (62, 4, 1, N'¿En qué deporte se utiliza una raqueta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (63, 4, 1, N'¿Cuál es el evento deportivo más visto en el mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (64, 4, 1, N'¿Quién es conocido como "El Rey del Fútbol"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (65, 4, 1, N'¿En qué deporte se usa el término "strike"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (66, 4, 1, N'¿Qué deporte se juega en la NBA?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (67, 4, 1, N'¿Cuántos sets debe ganar un jugador para ganar un partido de tenis masculino en el Grand Slam?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (68, 4, 1, N'¿En qué deporte se usa el término "checkmate"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (69, 4, 1, N'¿Qué deporte se practica en un velódromo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (70, 4, 1, N'¿Cuál es la distancia de un maratón en kilómetros?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (71, 4, 2, N'¿Quién tiene el récord mundial de los 100 metros planos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (72, 4, 2, N'¿En qué año se celebraron los primeros Juegos Olímpicos modernos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (73, 4, 2, N'¿Cuántos Grand Slam ha ganado Roger Federer?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (74, 4, 2, N'¿Cuál es el nombre del famoso torneo de tenis jugado en Londres sobre hierba?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (75, 4, 2, N'¿Cuál es el deporte nacional de Japón?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (76, 4, 2, N'¿Qué jugador de baloncesto tiene el apodo "Air"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (77, 4, 2, N'¿Cuántos jugadores hay en un equipo de rugby?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (78, 4, 2, N'¿Cuál es el trofeo más prestigioso del cricket internacional?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (79, 4, 2, N'¿Qué equipo ha ganado más títulos de la NBA?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (80, 4, 2, N'¿Cuál es el torneo de fútbol más importante de América del Sur a nivel de clubes?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (81, 4, 3, N'¿Cuántos equipos han ganado la Copa del Mundo de la FIFA más de una vez?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (82, 4, 3, N'¿Qué equipo de la NFL ganó el primer Super Bowl?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (83, 4, 3, N'¿En qué año ganó Michael Schumacher su primer campeonato de Fórmula 1?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (84, 4, 3, N'¿Cuál es la longitud de una piscina olímpica?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (85, 4, 3, N'¿Qué equipo ganó la Serie Mundial de Béisbol en 1994?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (86, 4, 3, N'¿Quién es el máximo goleador de la historia de la Copa del Mundo de la FIFA?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (87, 4, 3, N'¿Cuál es la única ciudad que ha celebrado los Juegos Olímpicos tres veces?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (88, 4, 3, N'¿En qué año se fundó la FIFA?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (89, 4, 3, N'¿Cuántas medallas de oro ganó Michael Phelps en los Juegos Olímpicos de 2008?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (90, 4, 3, N'¿Qué equipo de baloncesto europeo ha ganado más títulos de la Euroliga?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (91, 5, 1, N'¿Cuál es el nombre del ratón más famoso de Disney?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (92, 5, 1, N'¿En qué saga de películas aparece el personaje de Harry Potter?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (93, 5, 1, N'¿Cuál es el nombre de la princesa que pierde un zapato de cristal en un baile?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (94, 5, 1, N'¿Qué famoso grupo británico es conocido como "The Fab Four"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (95, 5, 1, N'¿En qué película animada aparece el personaje llamado Simba?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (96, 5, 1, N'¿Quién es conocido como "El Rey del Rock and Roll"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (97, 5, 1, N'¿En qué país se originó el flamenco?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (98, 5, 1, N'¿Cómo se llama el videojuego donde los personajes son fontaneros y rescatan princesas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (99, 5, 1, N'¿Cuál es el nombre de la película en la que los juguetes cobran vida cuando los humanos no están?', NULL)
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (100, 5, 1, N'¿Quién es el creador del universo de "Star Wars"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (101, 5, 2, N'¿Quién ganó el Oscar a la Mejor Actriz en 2020?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (102, 5, 2, N'¿Cuál es el verdadero nombre de la cantante conocida como Lady Gaga?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (103, 5, 2, N'¿En qué año se estrenó la primera película de "El Señor de los Anillos"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (104, 5, 2, N'¿Qué actor interpreta a Jack Sparrow en "Piratas del Caribe"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (105, 5, 2, N'¿Cuál es el nombre del personaje principal de "Breaking Bad"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (106, 5, 2, N'¿Qué banda lanzó el álbum "The Dark Side of the Moon"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (107, 5, 2, N'¿Cuál es el nombre de la famosa serie de videojuegos protagonizada por un cazador de tesoros llamado Nathan Drake?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (108, 5, 2, N'¿Qué actriz interpretó a Rachel Green en "Friends"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (109, 5, 2, N'¿Qué película animada de Studio Ghibli cuenta la historia de una niña llamada Chihiro?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (110, 5, 2, N'¿Quién dirigió "Pulp Fiction"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (111, 5, 3, N'¿Qué compositor ganó el Premio Pulitzer de Música en 2018?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (112, 5, 3, N'¿Cuál es el nombre del videojuego más vendido de todos los tiempos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (113, 5, 3, N'¿Qué actor interpretó a Hannibal Lecter en "El silencio de los corderos"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (114, 5, 3, N'¿Qué banda sonora de película de 1992 fue compuesta por Alan Menken y ganó dos premios Oscar?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (115, 5, 3, N'¿En qué año se emitió el primer episodio de "The Simpsons"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (116, 5, 3, N'¿Quién dirigió la trilogía de "El Padrino"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (117, 5, 3, N'¿Cuál fue la primera película animada en ganar un Oscar a la Mejor Película Animada?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (118, 5, 3, N'¿Quién fue el autor de la novela en la que se basa la película "Blade Runner"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (119, 5, 3, N'¿Cuál es el nombre real de la estrella de cine y artes marciales Bruce Lee?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (120, 5, 3, N'¿Qué película de Stanley Kubrick está basada en una novela de Anthony Burgess?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (121, 6, 1, N'¿Cuál es el país más grande del mundo por superficie?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (122, 6, 1, N'¿Cuál es la capital de Francia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (123, 6, 1, N'¿Qué océano se encuentra al oeste de los Estados Unidos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (124, 6, 1, N'¿Cuál es el desierto más grande del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (125, 6, 1, N'¿En qué continente se encuentra Brasil?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (126, 6, 1, N'¿Cuál es el río más largo del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (127, 6, 1, N'¿Qué país tiene la mayor cantidad de población en el mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (128, 6, 1, N'¿Cuál es la capital de Japón?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (129, 6, 1, N'¿En qué continente se encuentra Egipto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (130, 6, 1, N'¿Qué país tiene la forma de una bota en el mapa de Europa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (131, 6, 2, N'¿Qué país tiene más husos horarios?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (132, 6, 2, N'¿Cuál es el punto más alto de África?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (133, 6, 2, N'¿En qué país se encuentra el desierto de Atacama?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (134, 6, 2, N'¿Cuál es la capital de Australia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (135, 6, 2, N'¿Qué río pasa por diez países europeos antes de desembocar en el Mar Negro?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (136, 6, 2, N'¿Cuál es la capital de Canadá?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (137, 6, 2, N'¿Qué país sudamericano es el único que tiene costas en los océanos Atlántico y Pacífico?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (138, 6, 2, N'¿Qué isla, conocida por sus cabezas de piedra gigantes, pertenece a Chile?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (139, 6, 2, N'¿En qué mar se encuentra la Gran Barrera de Coral?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (140, 6, 2, N'¿Cuál es la ciudad más poblada de África?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (141, 6, 3, N'¿Cuál es el país más joven del mundo, que obtuvo su independencia en 2011?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (142, 6, 3, N'¿Qué río es conocido como el río más contaminado del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (143, 6, 3, N'¿Cuál es el lago más profundo del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (144, 6, 3, N'¿Qué capital se encuentra a mayor altitud en el mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (145, 6, 3, N'¿Qué desierto tiene el récord de temperatura más alta jamás registrada?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (146, 6, 3, N'¿En qué país se encuentran las Montañas Drakensberg?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (147, 6, 3, N'¿Qué país tiene la mayor cantidad de islas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (148, 6, 3, N'¿Cuál es la única ciudad que se encuentra en dos continentes?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (149, 6, 3, N'¿En qué país se encuentra la península de Kamchatka?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (150, 6, 3, N'¿Cuál es la cascada más alta del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (151, 1, 1, N'¿En qué año comenzó la Segunda Guerra Mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (152, 1, 1, N'¿Quién fue el primer presidente de los Estados Unidos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (153, 1, 1, N'¿Qué civilización construyó las pirámides de Egipto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (154, 1, 1, N'¿En qué año se independizó Estados Unidos de Gran Bretaña?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (155, 1, 1, N'¿Quién fue el líder de Alemania durante la Segunda Guerra Mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (156, 1, 1, N'¿Qué imperio fue liderado por Julio César?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (157, 1, 1, N'¿Qué muro separó a Berlín Oriental de Berlín Occidental hasta 1989?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (158, 1, 1, N'¿Qué documento firmó Abraham Lincoln para abolir la esclavitud en Estados Unidos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (159, 1, 1, N'¿En qué año llegó Cristóbal Colón a América?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (160, 1, 1, N'¿Qué país fue liderado por Napoleón Bonaparte?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (161, 1, 2, N'¿Quién fue el faraón más joven de Egipto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (162, 1, 2, N'¿Qué guerra tuvo lugar entre 1950 y 1953 y dividió un país asiático en dos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (163, 1, 2, N'¿Quién fue el primer emperador de China?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (164, 1, 2, N'¿Qué civilización antigua construyó Machu Picchu?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (165, 1, 2, N'¿Qué emperador romano convirtió al cristianismo en la religión oficial del Imperio Romano?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (166, 1, 2, N'¿Qué guerra se inició por el asesinato del Archiduque Francisco Fernando?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (167, 1, 2, N'¿Quién escribió "El Príncipe", un influyente tratado político del Renacimiento?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (168, 1, 2, N'¿En qué año cayó Constantinopla, marcando el fin del Imperio Bizantino?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (169, 1, 2, N'¿Qué tratado puso fin a la Primera Guerra Mundial?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (170, 1, 2, N'¿Qué país fue el primero en abolir la esclavitud en 1794?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (171, 1, 3, N'¿Qué civilización antigua utilizó por primera vez un sistema de escritura conocido como cuneiforme?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (172, 1, 3, N'¿En qué año comenzó la Revolución Francesa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (173, 1, 3, N'¿Qué rey inglés fue conocido como el "Rey Sol"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (174, 1, 3, N'¿Cuál fue el nombre de la conferencia que dividió a África entre las potencias coloniales europeas en 1884?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (175, 1, 3, N'¿Qué guerra fue causada por el rechazo del Parlamento inglés a las políticas de Carlos I?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (176, 1, 3, N'¿Quién fue el líder de la Revolución Mexicana en el norte de México?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (177, 1, 3, N'¿Qué año marcó el final de la dinastía Qing en China?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (178, 1, 3, N'¿Qué líder militar cartaginés cruzó los Alpes con elefantes para invadir Roma?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (179, 1, 3, N'¿Qué documento inglés, firmado en 1215, limitó el poder del rey y estableció principios de derechos humanos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (180, 1, 3, N'¿Quién fue la única mujer faraón de Egipto que se declaró faraón en lugar de reina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (181, 6, 1, N'¿Cuál es la capital de Francia?', N'paris.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (182, 6, 2, N'¿Cuál es el río más largo del mundo?', N'nilo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (183, 6, 3, N'¿En qué continente se encuentra el Monte Everest?', N'everest.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (184, 1, 1, N'¿En qué año comenzó la Segunda Guerra Mundial?', N'ww2.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (185, 1, 2, N'¿Quién fue el primer presidente de Estados Unidos?', N'washington.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (186, 1, 3, N'¿Qué civilización construyó las pirámides de Egipto?', N'piramides.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (187, 3, 1, N'¿Cuál es el elemento químico más abundante en la Tierra?', N'oxigeno.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (188, 3, 2, N'¿Cuál es la velocidad de la luz?', N'luz.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (189, 3, 3, N'¿Qué teoría propuso Charles Darwin?', N'darwin.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (190, 6, 1, N'¿Cuál es la capital de Australia?', N'australia.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (191, 6, 2, N'¿Cuál es el desierto más grande del mundo?', N'desierto.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (192, 6, 3, N'¿Qué país tiene la mayor cantidad de islas?', N'islas.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (193, 1, 1, N'¿Quién fue el primer emperador de Roma?', N'roma.png')
GO
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (194, 1, 2, N'¿En qué año cayó Constantinopla?', N'constantinopla.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (195, 1, 3, N'¿Cuál fue la dinastía gobernante en China durante la construcción de la Gran Muralla?', N'gran_muralla.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (196, 3, 1, N'¿Cuál es el planeta más cercano al sol?', N'mercurio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (197, 3, 2, N'¿Qué órgano del cuerpo humano consume más energía?', N'cerebro.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (198, 3, 3, N'¿Qué partícula subatómica tiene carga negativa?', N'electron.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (199, 6, 1, N'¿Cuál es el país más grande del mundo?', N'rusia.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (200, 6, 2, N'¿Cuál es la montaña más alta de América?', N'aconcagua.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (201, 6, 3, N'¿Qué país tiene la mayor población del mundo?', N'china.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (202, 1, 1, N'¿Quién fue el descubridor de América?', N'colon.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (203, 1, 2, N'¿En qué año se firmó la Declaración de Independencia de los Estados Unidos?', N'declaracion_independencia.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (204, 1, 3, N'¿Qué líder político fue asesinado el 22 de noviembre de 1963?', N'kennedy.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (205, 3, 1, N'¿Cuál es el metal más ligero?', N'litio.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (206, 3, 2, N'¿Qué fenómeno natural es medido por la escala de Richter?', N'richter.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (207, 3, 3, N'¿Qué gas es más abundante en la atmósfera terrestre?', N'nitrogeno.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (208, 6, 1, N'¿Cuál es el océano más grande del mundo?', N'oceano.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (209, 6, 2, N'¿Qué país se conoce como la tierra de los mil lagos?', N'finlandia.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (210, 6, 3, N'¿Qué río atraviesa la ciudad de Londres?', N'tamesis.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (211, 3, 1, N'¿Quién fue el primer hombre en caminar en la luna?', N'neil_armstrong.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (212, 1, 2, N'¿En qué país tuvo lugar la Revolución Industrial?', N'revolucion_industrial.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (213, 2, 3, N'¿Quién pintó la Mona Lisa?', N'monalisa.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (214, 3, 1, N'¿Cuál es el compuesto químico del agua?', N'agua.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (215, 3, 2, N'¿Qué planeta es conocido como el planeta rojo?', N'marte.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (216, 3, 3, N'¿Qué científico desarrolló la teoría de la relatividad?', N'einstein.png')
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (1, 1, 1, N'Leonardo da Vinci', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (2, 1, 2, N'Miguel Ángel', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (3, 1, 3, N'Rafael', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (4, 1, 4, N'Donatello', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (5, 2, 1, N'Sitar', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (6, 2, 2, N'Violín', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (7, 2, 3, N'Flauta', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (8, 2, 4, N'Guitarra', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (9, 3, 1, N'Wolfgang Amadeus Mozart', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (10, 3, 2, N'Ludwig van Beethoven', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (11, 3, 3, N'Johann Sebastian Bach', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (12, 3, 4, N'Franz Schubert', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (13, 4, 1, N'Puntillismo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (14, 4, 2, N'Cubismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (15, 4, 3, N'Impresionismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (16, 4, 4, N'Surrealismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (17, 5, 1, N'Jazz', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (18, 5, 2, N'Clásica', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (19, 5, 3, N'Rock', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (20, 5, 4, N'Pop', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (21, 6, 1, N'The Globe', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (22, 6, 2, N'The Royal Theatre', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (23, 6, 3, N'The Palladium', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (24, 6, 4, N'The Lyceum', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (25, 7, 1, N'William Shakespeare', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (26, 7, 2, N'Christopher Marlowe', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (27, 7, 3, N'Ben Jonson', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (28, 7, 4, N'John Webster', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (29, 8, 1, N'Vincent van Gogh', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (30, 8, 2, N'Pablo Picasso', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (31, 8, 3, N'Salvador Dalí', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (32, 8, 4, N'Henri Matisse', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (33, 9, 1, N'Vincent van Gogh', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (34, 9, 2, N'Claude Monet', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (35, 9, 3, N'Edgar Degas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (36, 9, 4, N'Paul Cézanne', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (37, 10, 1, N'Talla directa', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (38, 10, 2, N'Modelado', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (39, 10, 3, N'Forja', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (40, 10, 4, N'Fundición', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (41, 11, 1, N'Claude Monet', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (42, 11, 2, N'Edgar Degas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (43, 11, 3, N'Pierre-Auguste Renoir', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (44, 11, 4, N'Camille Pissarro', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (45, 12, 1, N'Louis Armstrong', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (46, 12, 2, N'Duke Ellington', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (47, 12, 3, N'Miles Davis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (48, 12, 4, N'John Coltrane', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (49, 13, 1, N'Museo del Louvre', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (50, 13, 2, N'Museo del Prado', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (51, 13, 3, N'Galería Uffizi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (52, 13, 4, N'Museo Metropolitano de Arte', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (53, 14, 1, N'Antoni Gaudí', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (54, 14, 2, N'Frank Gehry', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (55, 14, 3, N'Le Corbusier', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (56, 14, 4, N'Santiago Calatrava', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (57, 15, 1, N'Sinfonía No. 5', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (58, 15, 2, N'Sinfonía No. 9', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (59, 15, 3, N'Sinfonía No. 3', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (60, 15, 4, N'Sinfonía No. 7', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (61, 16, 1, N'Surrealismo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (62, 16, 2, N'Cubismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (63, 16, 3, N'Expresionismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (64, 16, 4, N'Impresionismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (65, 17, 1, N'Diego Rivera', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (66, 17, 2, N'David Alfaro Siqueiros', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (67, 17, 3, N'José Clemente Orozco', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (68, 17, 4, N'Frida Kahlo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (69, 18, 1, N'Piotr Ilich Chaikovski', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (70, 18, 2, N'Igor Stravinsky', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (71, 18, 3, N'Ludwig van Beethoven', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (72, 18, 4, N'Johann Strauss II', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (73, 19, 1, N'Elizabeth Taylor', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (74, 19, 2, N'Vivien Leigh', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (75, 19, 3, N'Audrey Hepburn', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (76, 19, 4, N'Marilyn Monroe', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (77, 20, 1, N'Auguste Rodin', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (78, 20, 2, N'Henry Moore', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (79, 20, 3, N'Constantin Brâncu?i', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (80, 20, 4, N'Alberto Giacometti', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (81, 21, 1, N'Puntillismo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (82, 21, 2, N'Cubismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (83, 21, 3, N'Impresionismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (84, 21, 4, N'Surrealismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (85, 22, 1, N'Richard Wagner', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (86, 22, 2, N'Giuseppe Verdi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (87, 22, 3, N'Wolfgang Amadeus Mozart', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (88, 22, 4, N'Giacomo Puccini', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (89, 23, 1, N'Donatello', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (90, 23, 2, N'Michelangelo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (91, 23, 3, N'Gian Lorenzo Bernini', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (92, 23, 4, N'Lorenzo Ghiberti', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (93, 24, 1, N'Fresco', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (94, 24, 2, N'Tempera', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (95, 24, 3, N'Acuarela', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (96, 24, 4, N'Óleo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (97, 25, 1, N'Rembrandt', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (98, 25, 2, N'Jan Vermeer', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (99, 25, 3, N'Hieronymus Bosch', 0)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (100, 25, 4, N'Frans Hals', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (101, 26, 1, N'Igor Stravinsky', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (102, 26, 2, N'Sergei Prokofiev', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (103, 26, 3, N'Maurice Ravel', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (104, 26, 4, N'Dmitri Shostakovich', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (105, 27, 1, N'Frida Kahlo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (106, 27, 2, N'Remedios Varo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (107, 27, 3, N'Leonora Carrington', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (108, 27, 4, N'Tina Modotti', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (109, 28, 1, N'Austriaco', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (110, 28, 2, N'Alemán', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (111, 28, 3, N'Suizo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (112, 28, 4, N'Holandés', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (113, 29, 1, N'Samuel Beckett', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (114, 29, 2, N'Jean-Paul Sartre', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (115, 29, 3, N'Eugène Ionesco', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (116, 29, 4, N'Harold Pinter', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (117, 30, 1, N'De Stijl', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (118, 30, 2, N'Fauvismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (119, 30, 3, N'Dadaísmo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (120, 30, 4, N'Surrealismo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (121, 31, 1, N'Mercurio', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (122, 31, 2, N'Venus', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (123, 31, 3, N'Marte', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (124, 31, 4, N'Júpiter', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (125, 32, 1, N'Oxígeno', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (126, 32, 2, N'Nitrógeno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (127, 32, 3, N'Dióxido de carbono', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (128, 32, 4, N'Hidrógeno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (129, 33, 1, N'Oxígeno', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (130, 33, 2, N'Oro', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (131, 33, 3, N'Osmio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (132, 33, 4, N'Oxalato', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (133, 34, 1, N'El Sol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (134, 34, 2, N'El viento', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (135, 34, 3, N'El agua', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (136, 34, 4, N'El petróleo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (137, 35, 1, N'Fotosíntesis', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (138, 35, 2, N'Respiración', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (139, 35, 3, N'Digestión', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (140, 35, 4, N'Fermentación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (141, 36, 1, N'Corazón', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (142, 36, 2, N'Pulmón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (143, 36, 3, N'Hígado', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (144, 36, 4, N'Cerebro', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (145, 37, 1, N'Albert Einstein', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (146, 37, 2, N'Isaac Newton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (147, 37, 3, N'Galileo Galilei', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (148, 37, 4, N'Nikola Tesla', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (149, 38, 1, N'Telescopio', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (150, 38, 2, N'Microscopio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (151, 38, 3, N'Periscopio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (152, 38, 4, N'Estetoscopio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (153, 39, 1, N'Mamífero', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (154, 39, 2, N'Reptil', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (155, 39, 3, N'Ave', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (156, 39, 4, N'Anfibio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (157, 40, 1, N'8', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (158, 40, 2, N'9', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (159, 40, 3, N'7', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (160, 40, 4, N'10', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (161, 41, 1, N'Amperio', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (162, 41, 2, N'Voltio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (163, 41, 3, N'Ohmio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (164, 41, 4, N'Watt', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (165, 42, 1, N'Isaac Newton', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (166, 42, 2, N'Albert Einstein', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (167, 42, 3, N'Galileo Galilei', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (168, 42, 4, N'James Clerk Maxwell', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (169, 43, 1, N'H2O', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (170, 43, 2, N'CO2', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (171, 43, 3, N'O2', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (172, 43, 4, N'NaCl', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (173, 44, 1, N'Alexander Fleming', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (174, 44, 2, N'Marie Curie', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (175, 44, 3, N'Louis Pasteur', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (176, 44, 4, N'Gregor Mendel', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (177, 45, 1, N'Sputnik 1', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (178, 45, 2, N'Apollo 11', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (179, 45, 3, N'Voyager 1', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (180, 45, 4, N'Hubble', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (181, 46, 1, N'Ácido desoxirribonucleico', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (182, 46, 2, N'Adenina', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (183, 46, 3, N'Ribosoma', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (184, 46, 4, N'Cloroplasto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (185, 47, 1, N'Teoría del Big Bang', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (186, 47, 2, N'Teoría de la Relatividad', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (187, 47, 3, N'Teoría de Cuerdas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (188, 47, 4, N'Teoría de la Evolución', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (189, 48, 1, N'Marte', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (190, 48, 2, N'Júpiter', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (191, 48, 3, N'Saturno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (192, 48, 4, N'Urano', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (193, 49, 1, N'Nitrógeno', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (194, 49, 2, N'Oxígeno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (195, 49, 3, N'Dióxido de carbono', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (196, 49, 4, N'Argón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (197, 50, 1, N'Charles Darwin', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (198, 50, 2, N'Gregor Mendel', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (199, 50, 3, N'Alfred Russel Wallace', 0)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (200, 50, 4, N'Jean-Baptiste Lamarck', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (214, 63, 3, N'El Super Bowl', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (215, 63, 4, N'La Fórmula 1', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (216, 64, 1, N'Pelé', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (217, 64, 2, N'Diego Maradona', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (218, 64, 3, N'Lionel Messi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (219, 64, 4, N'Cristiano Ronaldo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (220, 65, 1, N'Béisbol', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (221, 65, 2, N'Fútbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (222, 65, 3, N'Baloncesto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (223, 65, 4, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (224, 66, 1, N'Baloncesto', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (225, 66, 2, N'Fútbol americano', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (226, 66, 3, N'Hockey', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (227, 66, 4, N'Béisbol', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (228, 67, 1, N'3 sets', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (229, 67, 2, N'4 sets', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (230, 67, 3, N'2 sets', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (231, 67, 4, N'5 sets', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (232, 68, 1, N'Ajedrez', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (233, 68, 2, N'Tenis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (234, 68, 3, N'Golf', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (235, 68, 4, N'Rugby', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (236, 69, 1, N'Ciclismo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (237, 69, 2, N'Esgrima', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (238, 69, 3, N'Boxeo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (239, 69, 4, N'Tiro con arco', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (240, 70, 1, N'42.195 km', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (241, 70, 2, N'50 km', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (242, 70, 3, N'21 km', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (243, 70, 4, N'30 km', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (244, 71, 1, N'Usain Bolt', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (245, 71, 2, N'Tyson Gay', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (246, 71, 3, N'Yohan Blake', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (247, 71, 4, N'Justin Gatlin', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (248, 72, 1, N'1896', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (249, 72, 2, N'1900', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (250, 72, 3, N'1888', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (251, 72, 4, N'1912', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (252, 73, 1, N'20', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (253, 73, 2, N'22', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (254, 73, 3, N'18', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (255, 73, 4, N'16', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (256, 74, 1, N'Wimbledon', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (257, 74, 2, N'Roland Garros', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (258, 74, 3, N'US Open', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (259, 74, 4, N'Australian Open', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (260, 75, 1, N'Sumo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (261, 75, 2, N'Judo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (262, 75, 3, N'Karate', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (263, 75, 4, N'Kendo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (264, 76, 1, N'Michael Jordan', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (265, 76, 2, N'Kobe Bryant', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (266, 76, 3, N'LeBron James', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (267, 76, 4, N'Shaquille O’Neal', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (268, 77, 1, N'15', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (269, 77, 2, N'13', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (270, 77, 3, N'11', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (271, 77, 4, N'7', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (272, 78, 1, N'La Copa del Mundo de Cricket', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (273, 78, 2, N'La Copa Ashes', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (274, 78, 3, N'La Copa América de Cricket', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (275, 78, 4, N'La Liga de Campeones de Cricket', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (276, 79, 1, N'Los Angeles Lakers', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (277, 79, 2, N'Chicago Bulls', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (278, 79, 3, N'Boston Celtics', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (279, 79, 4, N'Golden State Warriors', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (280, 80, 1, N'Copa Libertadores', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (281, 80, 2, N'Copa Sudamericana', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (282, 80, 3, N'Supercopa Sudamericana', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (283, 80, 4, N'Copa América', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (284, 81, 1, N'5', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (285, 81, 2, N'3', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (286, 81, 3, N'6', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (287, 81, 4, N'4', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (288, 82, 1, N'Green Bay Packers', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (289, 82, 2, N'New England Patriots', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (290, 82, 3, N'Dallas Cowboys', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (291, 82, 4, N'Pittsburgh Steelers', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (292, 83, 1, N'1994', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (293, 83, 2, N'1996', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (294, 83, 3, N'1998', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (295, 83, 4, N'2000', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (296, 84, 1, N'50 metros', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (297, 84, 2, N'100 metros', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (298, 84, 3, N'25 metros', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (299, 84, 4, N'75 metros', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (300, 85, 1, N'No se jugó debido a una huelga de jugadores', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (301, 85, 2, N'New York Yankees', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (302, 85, 3, N'Los Angeles Dodgers', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (303, 85, 4, N'Atlanta Braves', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (304, 86, 1, N'Miroslav Klose', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (305, 86, 2, N'Ronaldo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (306, 86, 3, N'Pelé', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (307, 86, 4, N'Lionel Messi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (308, 87, 1, N'Londres', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (309, 87, 2, N'Atenas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (310, 87, 3, N'París', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (311, 87, 4, N'Tokio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (312, 88, 1, N'1904', 1)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (313, 88, 2, N'1908', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (314, 88, 3, N'1900', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (315, 88, 4, N'1912', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (316, 89, 1, N'8', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (317, 89, 2, N'6', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (318, 89, 3, N'7', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (319, 89, 4, N'9', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (320, 90, 1, N'Real Madrid', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (321, 90, 2, N'FC Barcelona', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (322, 90, 3, N'CSKA Moscow', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (323, 90, 4, N'Panathinaikos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (324, 91, 1, N'Mickey Mouse', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (325, 91, 2, N'Donald Duck', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (326, 91, 3, N'Goofy', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (327, 91, 4, N'Minnie Mouse', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (328, 92, 1, N'Harry Potter', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (329, 92, 2, N'El Señor de los Anillos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (330, 92, 3, N'Star Wars', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (331, 92, 4, N'Juego de Tronos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (332, 93, 1, N'Cenicienta', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (333, 93, 2, N'Blancanieves', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (334, 93, 3, N'Rapunzel', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (335, 93, 4, N'Aurora', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (336, 94, 1, N'The Beatles', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (337, 94, 2, N'The Rolling Stones', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (338, 94, 3, N'The Who', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (339, 94, 4, N'Led Zeppelin', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (340, 95, 1, N'El Rey León', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (341, 95, 2, N'Tarzán', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (342, 95, 3, N'Pocahontas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (343, 95, 4, N'Hércules', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (344, 96, 1, N'Elvis Presley', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (345, 96, 2, N'Michael Jackson', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (346, 96, 3, N'Frank Sinatra', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (347, 96, 4, N'Chuck Berry', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (348, 97, 1, N'España', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (349, 97, 2, N'México', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (350, 97, 3, N'Argentina', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (351, 97, 4, N'Italia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (352, 98, 1, N'Super Mario Bros', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (353, 98, 2, N'Sonic the Hedgehog', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (354, 98, 3, N'The Legend of Zelda', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (355, 98, 4, N'Pac-Man', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (356, 99, 1, N'Toy Story', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (357, 99, 2, N'Cars', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (358, 99, 3, N'Up', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (359, 99, 4, N'Frozen', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (360, 100, 1, N'George Lucas', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (361, 100, 2, N'Steven Spielberg', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (362, 100, 3, N'J.K. Rowling', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (363, 100, 4, N'James Cameron', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (364, 101, 1, N'Renée Zellweger', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (365, 101, 2, N'Scarlett Johansson', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (366, 101, 3, N'Charlize Theron', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (367, 101, 4, N'Saoirse Ronan', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (368, 102, 1, N'Stefani Joanne Angelina Germanotta', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (369, 102, 2, N'Katheryn Elizabeth Hudson', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (370, 102, 3, N'Robyn Rihanna Fenty', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (371, 102, 4, N'Alicia Augello Cook', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (372, 103, 1, N'2001', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (373, 103, 2, N'1999', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (374, 103, 3, N'2003', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (375, 103, 4, N'2005', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (376, 104, 1, N'Johnny Depp', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (377, 104, 2, N'Orlando Bloom', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (378, 104, 3, N'Leonardo DiCaprio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (379, 104, 4, N'Brad Pitt', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (380, 105, 1, N'Walter White', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (381, 105, 2, N'Jesse Pinkman', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (382, 105, 3, N'Saul Goodman', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (383, 105, 4, N'Hank Schrader', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (384, 106, 1, N'Pink Floyd', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (385, 106, 2, N'Led Zeppelin', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (386, 106, 3, N'The Rolling Stones', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (387, 106, 4, N'The Who', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (388, 107, 1, N'Uncharted', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (389, 107, 2, N'Tomb Raider', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (390, 107, 3, N'Assassin’s Creed', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (391, 107, 4, N'The Last of Us', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (392, 108, 1, N'Jennifer Aniston', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (393, 108, 2, N'Courteney Cox', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (394, 108, 3, N'Lisa Kudrow', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (395, 108, 4, N'Julia Roberts', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (396, 109, 1, N'El viaje de Chihiro', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (397, 109, 2, N'La princesa Mononoke', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (398, 109, 3, N'Mi vecino Totoro', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (399, 109, 4, N'El castillo ambulante', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (400, 110, 1, N'Quentin Tarantino', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (401, 110, 2, N'Martin Scorsese', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (402, 110, 3, N'Christopher Nolan', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (403, 110, 4, N'Steven Spielberg', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (404, 111, 1, N'Kendrick Lamar', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (405, 111, 2, N'Bob Dylan', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (406, 111, 3, N'John Adams', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (407, 111, 4, N'Philip Glass', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (408, 112, 1, N'Minecraft', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (409, 112, 2, N'Grand Theft Auto V', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (410, 112, 3, N'Tetris', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (411, 112, 4, N'The Legend of Zelda', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (412, 113, 1, N'Anthony Hopkins', 1)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (413, 113, 2, N'Robert De Niro', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (414, 113, 3, N'Jack Nicholson', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (415, 113, 4, N'Al Pacino', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (416, 114, 1, N'Aladdin', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (417, 114, 2, N'La Bella y la Bestia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (418, 114, 3, N'El Rey León', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (419, 114, 4, N'Pocahontas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (420, 115, 1, N'1989', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (421, 115, 2, N'1991', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (422, 115, 3, N'1987', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (423, 115, 4, N'1985', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (424, 116, 1, N'Francis Ford Coppola', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (425, 116, 2, N'Martin Scorsese', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (426, 116, 3, N'Steven Spielberg', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (427, 116, 4, N'Brian De Palma', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (428, 117, 1, N'Shrek', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (429, 117, 2, N'Toy Story', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (430, 117, 3, N'La Bella y la Bestia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (431, 117, 4, N'Buscando a Nemo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (432, 118, 1, N'Philip K. Dick', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (433, 118, 2, N'Isaac Asimov', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (434, 118, 3, N'Arthur C. Clarke', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (435, 118, 4, N'Ray Bradbury', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (436, 119, 1, N'Lee Jun-fan', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (437, 119, 2, N'Lee Chong Wei', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (438, 119, 3, N'Jackie Chan', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (439, 119, 4, N'Jet Li', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (440, 120, 1, N'La naranja mecánica', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (441, 120, 2, N'2001: Odisea del Espacio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (442, 120, 3, N'El resplandor', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (443, 120, 4, N'Barry Lyndon', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (444, 121, 1, N'Rusia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (445, 121, 2, N'Canadá', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (446, 121, 3, N'China', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (447, 121, 4, N'Estados Unidos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (448, 122, 1, N'París', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (449, 122, 2, N'Madrid', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (450, 122, 3, N'Roma', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (451, 122, 4, N'Berlín', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (452, 123, 1, N'Océano Pacífico', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (453, 123, 2, N'Océano Atlántico', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (454, 123, 3, N'Océano Índico', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (455, 123, 4, N'Mar Mediterráneo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (456, 124, 1, N'Sahara', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (457, 124, 2, N'Desierto de Gobi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (458, 124, 3, N'Desierto de Kalahari', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (459, 124, 4, N'Desierto de Atacama', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (460, 125, 1, N'América del Sur', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (461, 125, 2, N'África', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (462, 125, 3, N'Asia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (463, 125, 4, N'Europa', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (464, 126, 1, N'Río Nilo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (465, 126, 2, N'Río Amazonas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (466, 126, 3, N'Río Yangtsé', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (467, 126, 4, N'Río Misisipi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (468, 127, 1, N'China', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (469, 127, 2, N'India', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (470, 127, 3, N'Estados Unidos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (471, 127, 4, N'Indonesia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (472, 128, 1, N'Tokio', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (473, 128, 2, N'Osaka', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (474, 128, 3, N'Kyoto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (475, 128, 4, N'Hiroshima', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (476, 129, 1, N'África', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (477, 129, 2, N'Asia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (478, 129, 3, N'Europa', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (479, 129, 4, N'América del Norte', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (480, 130, 1, N'Italia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (481, 130, 2, N'España', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (482, 130, 3, N'Grecia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (483, 130, 4, N'Portugal', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (484, 131, 1, N'Francia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (485, 131, 2, N'Estados Unidos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (486, 131, 3, N'Rusia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (487, 131, 4, N'Canadá', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (488, 132, 1, N'Monte Kilimanjaro', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (489, 132, 2, N'Monte Kenia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (490, 132, 3, N'Montes Drakensberg', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (491, 132, 4, N'Monte Atlas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (492, 133, 1, N'Chile', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (493, 133, 2, N'Perú', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (494, 133, 3, N'Bolivia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (495, 133, 4, N'Argentina', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (496, 134, 1, N'Canberra', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (497, 134, 2, N'Sídney', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (498, 134, 3, N'Melbourne', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (499, 134, 4, N'Brisbane', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (500, 135, 1, N'Río Danubio', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (501, 135, 2, N'Río Rin', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (502, 135, 3, N'Río Volga', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (503, 135, 4, N'Río Dniéper', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (504, 136, 1, N'Ottawa', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (505, 136, 2, N'Toronto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (506, 136, 3, N'Montreal', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (507, 136, 4, N'Vancouver', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (508, 137, 1, N'Colombia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (509, 137, 2, N'Brasil', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (510, 137, 3, N'Perú', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (511, 137, 4, N'Chile', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (512, 138, 1, N'Isla de Pascua', 1)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (513, 138, 2, N'Islas Galápagos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (514, 138, 3, N'Isla Juan Fernández', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (515, 138, 4, N'Isla Chiloé', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (516, 139, 1, N'Mar del Coral', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (517, 139, 2, N'Mar de Tasmania', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (518, 139, 3, N'Mar de Arafura', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (519, 139, 4, N'Mar de Banda', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (520, 140, 1, N'Lagos', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (521, 140, 2, N'El Cairo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (522, 140, 3, N'Kinshasa', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (523, 140, 4, N'Johannesburgo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (524, 141, 1, N'Sudán del Sur', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (525, 141, 2, N'Timor Oriental', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (526, 141, 3, N'Kosovo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (527, 141, 4, N'Eritrea', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (528, 142, 1, N'Río Citarum', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (529, 142, 2, N'Río Ganges', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (530, 142, 3, N'Río Yamuna', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (531, 142, 4, N'Río Amarillo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (532, 143, 1, N'Lago Baikal', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (533, 143, 2, N'Lago Tanganica', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (534, 143, 3, N'Lago Superior', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (535, 143, 4, N'Lago Victoria', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (536, 144, 1, N'La Paz', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (537, 144, 2, N'Katmandú', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (538, 144, 3, N'Quito', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (539, 144, 4, N'Thimphu', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (540, 145, 1, N'Desierto del Sahara', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (541, 145, 2, N'Desierto de Mojave', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (542, 145, 3, N'Desierto de Sonora', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (543, 145, 4, N'Desierto de Gobi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (544, 146, 1, N'Sudáfrica', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (545, 146, 2, N'Namibia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (546, 146, 3, N'Botsuana', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (547, 146, 4, N'Lesoto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (548, 147, 1, N'Suecia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (549, 147, 2, N'Noruega', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (550, 147, 3, N'Filipinas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (551, 147, 4, N'Indonesia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (552, 148, 1, N'Estambul', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (553, 148, 2, N'Moscú', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (554, 148, 3, N'Atenas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (555, 148, 4, N'Viena', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (556, 149, 1, N'Rusia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (557, 149, 2, N'Japón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (558, 149, 3, N'Mongolia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (559, 149, 4, N'China', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (560, 150, 1, N'Salto Ángel', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (561, 150, 2, N'Cataratas del Niágara', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (562, 150, 3, N'Cataratas Victoria', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (563, 150, 4, N'Cataratas del Iguazú', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (564, 151, 1, N'1939', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (565, 151, 2, N'1945', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (566, 151, 3, N'1914', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (567, 151, 4, N'1929', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (568, 152, 1, N'George Washington', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (569, 152, 2, N'Thomas Jefferson', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (570, 152, 3, N'John Adams', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (571, 152, 4, N'Abraham Lincoln', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (572, 153, 1, N'Egipcia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (573, 153, 2, N'Griega', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (574, 153, 3, N'Romana', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (575, 153, 4, N'Maya', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (576, 154, 1, N'1776', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (577, 154, 2, N'1789', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (578, 154, 3, N'1804', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (579, 154, 4, N'1492', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (580, 155, 1, N'Adolf Hitler', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (581, 155, 2, N'Benito Mussolini', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (582, 155, 3, N'Joseph Stalin', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (583, 155, 4, N'Winston Churchill', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (584, 156, 1, N'Imperio Romano', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (585, 156, 2, N'Imperio Persa', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (586, 156, 3, N'Imperio Bizantino', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (587, 156, 4, N'Imperio Otomano', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (588, 157, 1, N'Muro de Berlín', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (589, 157, 2, N'Muro de Adriano', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (590, 157, 3, N'Gran Muralla China', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (591, 157, 4, N'Muro de los Lamentos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (592, 158, 1, N'Proclamación de Emancipación', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (593, 158, 2, N'Carta Magna', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (594, 158, 3, N'Declaración de Independencia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (595, 158, 4, N'Tratado de Versalles', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (596, 159, 1, N'1492', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (597, 159, 2, N'1502', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (598, 159, 3, N'1519', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (599, 159, 4, N'1607', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (600, 160, 1, N'Francia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (601, 160, 2, N'España', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (602, 160, 3, N'Italia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (603, 160, 4, N'Austria', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (604, 161, 1, N'Tutankamón', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (605, 161, 2, N'Ramsés II', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (606, 161, 3, N'Cleopatra', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (607, 161, 4, N'Akhenatón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (608, 162, 1, N'Guerra de Corea', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (609, 162, 2, N'Guerra de Vietnam', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (610, 162, 3, N'Guerra de Afganistán', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (611, 162, 4, N'Guerra del Golfo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (612, 163, 1, N'Qin Shi Huang', 1)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (613, 163, 2, N'Kublai Khan', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (614, 163, 3, N'Sun Tzu', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (615, 163, 4, N'Confucio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (616, 164, 1, N'Inca', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (617, 164, 2, N'Azteca', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (618, 164, 3, N'Maya', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (619, 164, 4, N'Olmeca', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (620, 165, 1, N'Constantino I', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (621, 165, 2, N'Julio César', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (622, 165, 3, N'Nerón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (623, 165, 4, N'Calígula', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (624, 166, 1, N'Primera Guerra Mundial', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (625, 166, 2, N'Segunda Guerra Mundial', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (626, 166, 3, N'Guerra de Crimea', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (627, 166, 4, N'Guerra de los Cien Años', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (628, 167, 1, N'Nicolás Maquiavelo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (629, 167, 2, N'Platón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (630, 167, 3, N'Aristóteles', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (631, 167, 4, N'Sun Tzu', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (632, 168, 1, N'1453', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (633, 168, 2, N'1492', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (634, 168, 3, N'1517', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (635, 168, 4, N'1521', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (636, 169, 1, N'Tratado de Versalles', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (637, 169, 2, N'Tratado de Utrecht', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (638, 169, 3, N'Tratado de Tordesillas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (639, 169, 4, N'Tratado de Westfalia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (640, 170, 1, N'Francia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (641, 170, 2, N'Estados Unidos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (642, 170, 3, N'Reino Unido', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (643, 170, 4, N'España', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (644, 171, 1, N'Sumeria', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (645, 171, 2, N'Egipto', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (646, 171, 3, N'Babilonia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (647, 171, 4, N'Asiria', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (648, 172, 1, N'1789', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (649, 172, 2, N'1776', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (650, 172, 3, N'1812', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (651, 172, 4, N'1848', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (652, 173, 1, N'Luis XIV', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (653, 173, 2, N'Ricardo III', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (654, 173, 3, N'Enrique VIII', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (655, 173, 4, N'Carlos II', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (656, 174, 1, N'Conferencia de Berlín', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (657, 174, 2, N'Conferencia de París', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (658, 174, 3, N'Conferencia de Yalta', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (659, 174, 4, N'Conferencia de Viena', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (660, 175, 1, N'Guerra Civil Inglesa', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (661, 175, 2, N'Guerra de los Treinta Años', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (662, 175, 3, N'Revolución Gloriosa', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (663, 175, 4, N'Revolución Industrial', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (664, 176, 1, N'Pancho Villa', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (665, 176, 2, N'Emiliano Zapata', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (666, 176, 3, N'Porfirio Díaz', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (667, 176, 4, N'Venustiano Carranza', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (668, 177, 1, N'1912', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (669, 177, 2, N'1905', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (670, 177, 3, N'1911', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (671, 177, 4, N'1920', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (672, 178, 1, N'Aníbal Barca', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (673, 178, 2, N'Escipión el Africano', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (674, 178, 3, N'Julio César', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (675, 178, 4, N'Trajano', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (676, 179, 1, N'Carta Magna', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (677, 179, 2, N'Petición de Derechos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (678, 179, 3, N'Declaración de Derechos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (679, 179, 4, N'Acta de Navegación', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (680, 180, 1, N'Hatshepsut', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (681, 180, 2, N'Nefertiti', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (682, 180, 3, N'Cleopatra', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (683, 180, 4, N'Nefertari', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (684, 181, 1, N'París', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (685, 181, 2, N'Londres', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (686, 181, 3, N'Roma', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (687, 181, 4, N'Berlín', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (688, 182, 1, N'Amazonas', 0)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (689, 182, 2, N'Nilo', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (690, 182, 3, N'Yangtsé', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (691, 182, 4, N'Misisipi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (692, 183, 1, N'Asia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (693, 183, 2, N'África', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (694, 183, 3, N'Europa', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (695, 183, 4, N'América', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (696, 184, 1, N'1935', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (697, 184, 2, N'1939', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (698, 184, 3, N'1941', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (699, 184, 4, N'1945', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (700, 185, 1, N'George Washington', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (701, 185, 2, N'Abraham Lincoln', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (702, 185, 3, N'Thomas Jefferson', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (703, 185, 4, N'John Adams', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (704, 186, 1, N'Romanos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (705, 186, 2, N'Griegos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (706, 186, 3, N'Egipcios', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (707, 186, 4, N'Persas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (708, 187, 1, N'Oxígeno', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (709, 187, 2, N'Hidrógeno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (710, 187, 3, N'Carbono', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (711, 187, 4, N'Nitrógeno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (712, 188, 1, N'299,792 km/s', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (713, 188, 2, N'150,000 km/s', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (714, 188, 3, N'1,080 millones km/h', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (715, 188, 4, N'300,000 km/h', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (716, 189, 1, N'Teoría de la evolución', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (717, 189, 2, N'Teoría del Big Bang', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (718, 189, 3, N'Teoría de la relatividad', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (719, 189, 4, N'Teoría de la gravedad', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (720, 190, 1, N'Sídney', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (721, 190, 2, N'Canberra', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (722, 190, 3, N'Melbourne', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (723, 190, 4, N'Brisbane', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (724, 191, 1, N'Sahara', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (725, 191, 2, N'Antártida', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (726, 191, 3, N'Gobi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (727, 191, 4, N'Kalahari', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (728, 192, 1, N'Indonesia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (729, 192, 2, N'Suecia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (730, 192, 3, N'Japón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (731, 192, 4, N'Filipinas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (732, 193, 1, N'Julio César', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (733, 193, 2, N'Augusto', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (734, 193, 3, N'Nerón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (735, 193, 4, N'Trajano', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (736, 194, 1, N'1204', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (737, 194, 2, N'1453', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (738, 194, 3, N'1492', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (739, 194, 4, N'1526', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (740, 195, 1, N'Dinastía Ming', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (741, 195, 2, N'Dinastía Qin', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (742, 195, 3, N'Dinastía Han', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (743, 195, 4, N'Dinastía Tang', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (744, 196, 1, N'Venus', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (745, 196, 2, N'Marte', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (746, 196, 3, N'Tierra', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (747, 196, 4, N'Mercurio', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (748, 197, 1, N'Corazón', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (749, 197, 2, N'Cerebro', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (750, 197, 3, N'Pulmones', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (751, 197, 4, N'Hígado', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (752, 198, 1, N'Protones', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (753, 198, 2, N'Neutrones', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (754, 198, 3, N'Electrones', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (755, 198, 4, N'Quarks', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (756, 199, 1, N'China', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (757, 199, 2, N'Rusia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (758, 199, 3, N'Canadá', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (759, 199, 4, N'Estados Unidos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (760, 200, 1, N'Monte Everest', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (761, 200, 2, N'Monte Aconcagua', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (762, 200, 3, N'Monte Kilimanjaro', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (763, 200, 4, N'Monte McKinley', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (764, 201, 1, N'India', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (765, 201, 2, N'China', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (766, 201, 3, N'Estados Unidos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (767, 201, 4, N'Indonesia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (768, 202, 1, N'Cristóbal Colón', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (769, 202, 2, N'Americo Vespucio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (770, 202, 3, N'Fernando de Magallanes', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (771, 202, 4, N'Juan Sebastián Elcano', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (772, 203, 1, N'1776', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (773, 203, 2, N'1783', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (774, 203, 3, N'1773', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (775, 203, 4, N'1789', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (776, 204, 1, N'Martin Luther King Jr.', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (777, 204, 2, N'Mahatma Gandhi', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (778, 204, 3, N'John F. Kennedy', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (779, 204, 4, N'Robert Kennedy', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (780, 205, 1, N'Aluminio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (781, 205, 2, N'Litio', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (782, 205, 3, N'Titanio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (783, 205, 4, N'Helio', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (784, 206, 1, N'Tsunamis', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (785, 206, 2, N'Terremotos', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (786, 206, 3, N'Erupciones volcánicas', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (787, 206, 4, N'Huracanes', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (788, 207, 1, N'Oxígeno', 0)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (789, 207, 2, N'Hidrógeno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (790, 207, 3, N'Nitrógeno', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (791, 207, 4, N'Dióxido de carbono', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (792, 208, 1, N'Océano Atlántico', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (793, 208, 2, N'Océano Índico', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (794, 208, 3, N'Océano Pacífico', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (795, 208, 4, N'Océano Ártico', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (796, 209, 1, N'Noruega', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (797, 209, 2, N'Finlandia', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (798, 209, 3, N'Suecia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (799, 209, 4, N'Canadá', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (800, 210, 1, N'Sena', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (801, 210, 2, N'Tíber', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (802, 210, 3, N'Támesis', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (803, 210, 4, N'Rin', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (804, 211, 1, N'Neil Armstrong', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (805, 211, 2, N'Buzz Aldrin', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (806, 211, 3, N'Yuri Gagarin', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (807, 211, 4, N'Michael Collins', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (808, 212, 1, N'Alemania', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (809, 212, 2, N'Francia', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (810, 212, 3, N'Reino Unido', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (811, 212, 4, N'Estados Unidos', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (812, 213, 1, N'Leonardo da Vinci', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (813, 213, 2, N'Michelangelo', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (814, 213, 3, N'Rafael', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (815, 213, 4, N'Donatello', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (816, 214, 1, N'CO2', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (817, 214, 2, N'O2', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (818, 214, 3, N'H2O', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (819, 214, 4, N'NaCl', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (820, 215, 1, N'Júpiter', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (821, 215, 2, N'Marte', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (822, 215, 3, N'Saturno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (823, 215, 4, N'Neptuno', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (824, 216, 1, N'Isaac Newton', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (825, 216, 2, N'Albert Einstein', 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (826, 216, 3, N'Galileo Galilei', 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (827, 216, 4, N'Nikola Tesla', 0)
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
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
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (9, N'lol', N'lol', N'lol', N'lol@gmail.com', N'/fotosPerfil/fotoDefault.png', -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (10, N'wersa', N'asds', N'A', N'juana@gmail.com', N'/fotosPerfil/fotoDefault.png', -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (11, N'a', N'a', N'A', N'juanfd@gmail.com', N'/fotosPerfil/fotoDefault.png', -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (12, N'wdasd', N'awdasd', N'A', N'juandpersn@gmail.com', N'/fotosPerfil/fotoDefault.png', -1)
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
/****** Object:  StoredProcedure [dbo].[SP_CategoriaPorID]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CrearJugador]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CrearPartida]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CrearUsuario]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_IniciarPartida]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_IniciarPartida]
	@IdPartida int
AS
BEGIN
	UPDATE Partida SET PartidaIniciada = 1 WHERE IdPartida = @IdPartida;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarCategorias]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarCategorias]
AS BEGIN SELECT * FROM Categorias;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarDificultades]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarDificultades]
AS BEGIN 
SELECT * FROM Dificultades; 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarPreguntas]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ListarRespuestas]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ListarUsuarios]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarUsuarios]
AS BEGIN
select * from Usuario;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarUsuariosXIDPartida]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ListarUsuariosXMail]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ObtenerIDDeCategoria]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ObtenerIdPartida]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerIdPartida]
AS BEGIN 
SELECT TOP 1 IdPartida FROM Partida ORDER BY IdPartida DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerJugador]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ObtenerPartida]    Script Date: 23/9/2024 14:36:23 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ObtenerPartidaXID]    Script Date: 23/9/2024 14:36:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ObtenerPartidaXID]
@IdPartida int
as begin
select IdPartida, TiempoMax, GirarNehuen, IdDificultad, CAST(PartidaIniciada as int) as PartidaIniciada from Partida where IdPartida=@IdPartida
end


GO
/****** Object:  StoredProcedure [dbo].[SP_SeleccionarUsuarioXID]    Script Date: 23/9/2024 14:36:23 ******/
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
