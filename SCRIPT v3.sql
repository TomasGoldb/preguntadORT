USE [PreguntadORT]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 5/9/2024 16:04:12 ******/
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
/****** Object:  Table [dbo].[Dificultades]    Script Date: 5/9/2024 16:04:12 ******/
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
/****** Object:  Table [dbo].[Jugador]    Script Date: 5/9/2024 16:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[IdUsuario] [int] NOT NULL,
	[IdJugador] [int] NOT NULL,
	[IdPartida] [int] NOT NULL,
	[PersonajesConseguidos] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partida]    Script Date: 5/9/2024 16:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partida](
	[IdPartida] [int] IDENTITY(1,1) NOT NULL,
	[TiempoMax] [int] NOT NULL,
	[GirarNehuen] [bit] NOT NULL,
 CONSTRAINT [PK_Partida] PRIMARY KEY CLUSTERED 
(
	[IdPartida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 5/9/2024 16:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[Enunciado] [varchar](50) NOT NULL,
	[Foto] [varchar](50) NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 5/9/2024 16:04:12 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/9/2024 16:04:12 ******/
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
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (1, N'tomi', N'loquin', N'123', N'w@w', NULL, -1)
INSERT [dbo].[Usuario] ([IdUsuario], [Nombre], [Nick], [Contrasena], [Mail], [FotoPerfil], [CodigoRecuperacion]) VALUES (2, N'Goldberg', N'Goldberg', N'Goldberg', N'Goldberg@Goldberg', NULL, -1)
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
/****** Object:  StoredProcedure [dbo].[SP_CategoriaPorID]    Script Date: 5/9/2024 16:04:12 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CrearUsuario]    Script Date: 5/9/2024 16:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CrearUsuario]
@contra varchar(100),
@nick varchar(100),
@nombre varchar(100),
@mail varchar(100)
as
begin
insert into Usuario(nombre, nick, contrasena, mail,codigorecuperacion) values(@nombre,@nick,@contra,@mail,-1)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarCategorias]    Script Date: 5/9/2024 16:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarCategorias]
AS BEGIN SELECT * FROM Categorias;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarDificultades]    Script Date: 5/9/2024 16:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarDificultades]
AS BEGIN SELECT * FROM Preguntas; END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarPreguntas]    Script Date: 5/9/2024 16:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarPreguntas]
@dificultadId int,
@categoriaId int
AS BEGIN 
IF (@dificultadId = -1 AND @categoriaId = -1)
	SELECT * FROM Preguntas;
ELSE IF (@dificultadId = -1)
	SELECT * FROM Preguntas WHERE IdCategoria = @categoriaId;
ELSE IF (@categoriaId = -1)
	SELECT * FROM Preguntas WHERE IdDificultad = @dificultadId;
ELSE
	SELECT * FROM Preguntas WHERE IdCategoria = @categoriaId AND IdDificultad = @dificultadId;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarRespuestas]    Script Date: 5/9/2024 16:04:12 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ListarUsuarios]    Script Date: 5/9/2024 16:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListarUsuarios]
AS BEGIN
select * from Usuario;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListarUsuariosXMail]    Script Date: 5/9/2024 16:04:12 ******/
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
