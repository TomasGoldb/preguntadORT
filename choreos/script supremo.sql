/* Robo 1
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](max) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](max) NULL, [Sacarlo]
*/
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién pintó "La última cena"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué instrumento es típicamente utilizado en la música clásica india?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién compuso "La flauta mágica"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué técnica de pintura es conocida por su uso de puntos de colores?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué estilo de música es conocido por su improvisación y raíces afroamericanas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál es el nombre del teatro más famoso de Londres, asociado a William Shakespeare?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién es el autor de la obra de teatro "Romeo y Julieta"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué artista es famoso por cortar su propia oreja?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién pintó "La noche estrellada"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál es el nombre de la técnica de esculpir mármol usada por Miguel Ángel?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué artista pintó la serie de obras conocida como "Los nenúfares"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Quién es conocido como el "Padre del Jazz"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿En qué museo se encuentra "La Gioconda"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué arquitecto diseñó la Catedral de la Sagrada Familia en Barcelona?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Cuál es la sinfonía más conocida de Beethoven, llamada "La Sinfonía del Destino"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué movimiento artístico es caracterizado por su representación de sueños y escenas irreales?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Cuál es el nombre del famoso muralista mexicano que pintó "Sueño de una tarde dominical en la Alameda Central"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué compositor es conocido por la obra "El cascanueces"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué actriz interpretó a Cleopatra en la película de 1963?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Quién es el escultor de "El pensador"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué técnica utilizó Georges Seurat para crear "Una tarde de domingo en la isla de la Grande Jatte"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Quién compuso la ópera "Parsifal"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué escultor renacentista es conocido por su obra "David" en bronce?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué término describe una pintura hecha sobre un yeso húmedo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué pintor es conocido por su uso del claroscuro y obras como "La lección de anatomía del Dr. Tulp"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué compositor es conocido por su obra "La consagración de la primavera"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué pintora mexicana es conocida por sus autorretratos y su obra "Las dos Fridas"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Cuál es la nacionalidad de Gustav Klimt, famoso por "El beso"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Quién escribió la obra de teatro "Esperando a Godot"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué movimiento artístico es caracterizado por la abstracción geométrica y el uso de colores primarios?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Cuál es el planeta más cercano al Sol?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Qué gas es esencial para la respiración de los seres humanos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Qué elemento químico tiene el símbolo "O"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Cuál es la principal fuente de energía para la vida en la Tierra?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Cómo se llama el proceso por el cual las plantas convierten la luz solar en energía?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Qué órgano bombea sangre en el cuerpo humano?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Quién es conocido como el "padre de la física moderna"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Qué instrumento se utiliza para observar objetos celestes lejanos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Qué tipo de animal es un delfín?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Cuántos planetas hay en el sistema solar?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Cuál es la unidad de medida de la corriente eléctrica?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Quién formuló las leyes del movimiento?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Cuál es la fórmula química del agua?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Qué científico descubrió la penicilina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Cómo se llama el primer satélite artificial lanzado al espacio?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Qué es el ADN?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Qué teoría sostiene que el universo se expandió a partir de un punto inicial extremadamente denso y caliente?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Qué planeta es conocido como el "planeta rojo"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Qué gas es el más abundante en la atmósfera terrestre?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Quién es conocido por su teoría de la evolución por selección natural?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué científico propuso la teoría heliocéntrica del sistema solar?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué físico es conocido por su trabajo en la mecánica cuántica y por desarrollar la ecuación que lleva su nombre?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Cuál es la constante de Planck?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué es el bosón de Higgs?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué rama de la biología estudia los ecosistemas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué teoría científica explica la gravedad como una curvatura del espacio-tiempo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué científico introdujo la teoría de la selección natural en "El origen de las especies"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Cuál es el número de elementos actualmente en la tabla periódica?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué es una supernova?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Quién formuló la teoría de la relatividad?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuántos jugadores hay en un equipo de fútbol en el campo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se utiliza una raqueta?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el evento deportivo más visto en el mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Quién es conocido como "El Rey del Fútbol"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se usa el término "strike"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega en la NBA?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuántos sets debe ganar un jugador para ganar un partido de tenis masculino en el Grand Slam?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se usa el término "checkmate"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se practica en un velódromo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es la distancia de un maratón en kilómetros?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Quién tiene el récord mundial de los 100 metros planos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿En qué año se celebraron los primeros Juegos Olímpicos modernos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuántos Grand Slam ha ganado Roger Federer?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es el nombre del famoso torneo de tenis jugado en Londres sobre hierba?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es el deporte nacional de Japón?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué jugador de baloncesto tiene el apodo "Air"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuántos jugadores hay en un equipo de rugby?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es el trofeo más prestigioso del cricket internacional?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué equipo ha ganado más títulos de la NBA?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es el torneo de fútbol más importante de América del Sur a nivel de clubes?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuántos equipos han ganado la Copa del Mundo de la FIFA más de una vez?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué equipo de la NFL ganó el primer Super Bowl?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿En qué año ganó Michael Schumacher su primer campeonato de Fórmula 1?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es la longitud de una piscina olímpica?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué equipo ganó la Serie Mundial de Béisbol en 1994?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el máximo goleador de la historia de la Copa del Mundo de la FIFA?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es la única ciudad que ha celebrado los Juegos Olímpicos tres veces?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿En qué año se fundó la FIFA?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuántas medallas de oro ganó Michael Phelps en los Juegos Olímpicos de 2008?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué equipo de baloncesto europeo ha ganado más títulos de la Euroliga?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿Cuál es el nombre del ratón más famoso de Disney?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿En qué saga de películas aparece el personaje de Harry Potter?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿Cuál es el nombre de la princesa que pierde un zapato de cristal en un baile?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿Qué famoso grupo británico es conocido como "The Fab Four"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿En qué película animada aparece el personaje llamado Simba?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿Quién es conocido como "El Rey del Rock and Roll"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿En qué país se originó el flamenco?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿Cómo se llama el videojuego donde los personajes son fontaneros y rescatan princesas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿Cuál es el nombre de la película en la que los juguetes cobran vida cuando los humanos no están?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, N'¿Quién es el creador del universo de "Star Wars"?', NULL);
GO
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Quién ganó el Oscar a la Mejor Actriz en 2020?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Cuál es el verdadero nombre de la cantante conocida como Lady Gaga?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿En qué año se estrenó la primera película de "El Señor de los Anillos"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Qué actor interpreta a Jack Sparrow en "Piratas del Caribe"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Cuál es el nombre del personaje principal de "Breaking Bad"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Qué banda lanzó el álbum "The Dark Side of the Moon"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Cuál es el nombre de la famosa serie de videojuegos protagonizada por un cazador de tesoros llamado Nathan Drake?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Qué actriz interpretó a Rachel Green en "Friends"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Qué película animada de Studio Ghibli cuenta la historia de una niña llamada Chihiro?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 2, N'¿Quién dirigió "Pulp Fiction"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Qué compositor ganó el Premio Pulitzer de Música en 2018?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Cuál es el nombre del videojuego más vendido de todos los tiempos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Qué actor interpretó a Hannibal Lecter en "El silencio de los corderos"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Qué banda sonora de película de 1992 fue compuesta por Alan Menken y ganó dos premios Oscar?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿En qué año se emitió el primer episodio de "The Simpsons"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Quién dirigió la trilogía de "El Padrino"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Cuál fue la primera película animada en ganar un Oscar a la Mejor Película Animada?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Quién fue el autor de la novela en la que se basa la película "Blade Runner"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Cuál es el nombre real de la estrella de cine y artes marciales Bruce Lee?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 3, N'¿Qué película de Stanley Kubrick está basada en una novela de Anthony Burgess?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿Cuál es el país más grande del mundo por superficie?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿Cuál es la capital de Francia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿Qué océano se encuentra al oeste de los Estados Unidos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿Cuál es el desierto más grande del mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿En qué continente se encuentra Brasil?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿Cuál es el río más largo del mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿Qué país tiene la mayor cantidad de población en el mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿Cuál es la capital de Japón?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿En qué continente se encuentra Egipto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, N'¿Qué país tiene la forma de una bota en el mapa de Europa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿Qué país tiene más husos horarios?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿Cuál es el punto más alto de África?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿En qué país se encuentra el desierto de Atacama?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿Cuál es la capital de Australia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿Qué río pasa por diez países europeos antes de desembocar en el Mar Negro?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿Cuál es la capital de Canadá?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿Qué país sudamericano es el único que tiene costas en los océanos Atlántico y Pacífico?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿Qué isla, conocida por sus cabezas de piedra gigantes, pertenece a Chile?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿En qué mar se encuentra la Gran Barrera de Coral?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 2, N'¿Cuál es la ciudad más poblada de África?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿Cuál es el país más joven del mundo, que obtuvo su independencia en 2011?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿Qué río es conocido como el río más contaminado del mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿Cuál es el lago más profundo del mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿Qué capital se encuentra a mayor altitud en el mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿Qué desierto tiene el récord de temperatura más alta jamás registrada?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿En qué país se encuentran las Montañas Drakensberg?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿Qué país tiene la mayor cantidad de islas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿Cuál es la única ciudad que se encuentra en dos continentes?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿En qué país se encuentra la península de Kamchatka?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 3, N'¿Cuál es la cascada más alta del mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué año comenzó la Segunda Guerra Mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Quién fue el primer presidente de los Estados Unidos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué civilización construyó las pirámides de Egipto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué año se independizó Estados Unidos de Gran Bretaña?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Quién fue el líder de Alemania durante la Segunda Guerra Mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué imperio fue liderado por Julio César?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué muro separó a Berlín Oriental de Berlín Occidental hasta 1989?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué documento firmó Abraham Lincoln para abolir la esclavitud en Estados Unidos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué año llegó Cristóbal Colón a América?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué país fue liderado por Napoleón Bonaparte?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Quién fue el faraón más joven de Egipto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué guerra tuvo lugar entre 1950 y 1953 y dividió un país asiático en dos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Quién fue el primer emperador de China?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué civilización antigua construyó Machu Picchu?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué emperador romano convirtió al cristianismo en la religión oficial del Imperio Romano?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué guerra se inició por el asesinato del Archiduque Francisco Fernando?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Quién escribió "El Príncipe", un influyente tratado político del Renacimiento?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué año cayó Constantinopla, marcando el fin del Imperio Bizantino?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué tratado puso fin a la Primera Guerra Mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué país fue el primero en abolir la esclavitud en 1794?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué civilización antigua utilizó por primera vez un sistema de escritura conocido como cuneiforme?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿En qué año comenzó la Revolución Francesa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué rey inglés fue conocido como el "Rey Sol"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál fue el nombre de la conferencia que dividió a África entre las potencias coloniales europeas en 1884?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué guerra fue causada por el rechazo del Parlamento inglés a las políticas de Carlos I?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Quién fue el líder de la Revolución Mexicana en el norte de México?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué año marcó el final de la dinastía Qing en China?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué líder militar cartaginés cruzó los Alpes con elefantes para invadir Roma?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué documento inglés, firmado en 1215, limitó el poder del rey y estableció principios de derechos humanos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Quién fue la única mujer faraón de Egipto que se declaró faraón en lugar de reina?', NULL);
GO
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (1, 1, N'Leonardo da Vinci', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (1, 2, N'Miguel Ángel', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (1, 3, N'Rafael', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (1, 4, N'Donatello', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (2, 1, N'Sitar', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (2, 2, N'Violín', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (2, 3, N'Flauta', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (2, 4, N'Guitarra', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (3, 1, N'Wolfgang Amadeus Mozart', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (3, 2, N'Ludwig van Beethoven', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (3, 3, N'Johann Sebastian Bach', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (3, 4, N'Franz Schubert', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (4, 1, N'Puntillismo', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (4, 2, N'Cubismo', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (4, 3, N'Impresionismo', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (4, 4, N'Surrealismo', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (5, 1, N'Jazz', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (5, 2, N'Clásica', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (5, 3, N'Rock', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (5, 4, N'Pop', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (6, 1, N'The Globe', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (6, 2, N'The Royal Theatre', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (6, 3, N'The Palladium', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (6, 4, N'The Lyceum', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (7, 1, N'William Shakespeare', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (7, 2, N'Christopher Marlowe', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (7, 3, N'Ben Jonson', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (7, 4, N'John Webster', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (8, 1, N'Vincent van Gogh', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (8, 2, N'Pablo Picasso', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (8, 3, N'Salvador Dalí', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (8, 4, N'Henri Matisse', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (9, 1, N'Vincent van Gogh', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (9, 2, N'Claude Monet', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (9, 3, N'Edgar Degas', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (9, 4, N'Paul Cézanne', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (10, 1, N'Talla directa', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (10, 2, N'Modelado', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (10, 3, N'Forja', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (10, 4, N'Fundición', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (11, 1, N'Claude Monet', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (11, 2, N'Edgar Degas', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (11, 3, N'Pierre-Auguste Renoir', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (11, 4, N'Camille Pissarro', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (12, 1, N'Louis Armstrong', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (12, 2, N'Duke Ellington', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (12, 3, N'Miles Davis', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (12, 4, N'John Coltrane', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (13, 1, N'Museo del Louvre', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (13, 2, N'Museo del Prado', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (13, 3, N'Galería Uffizi', 0),
       (13, 4, N'Museo Metropolitano de Arte', 0),
       (14, 1, N'Antoni Gaudí', 1),
       (14, 2, N'Frank Gehry', 0),
       (14, 3, N'Le Corbusier', 0),
       (14, 4, N'Santiago Calatrava', 0),
       (15, 1, N'Sinfonía No. 5', 1),
       (15, 2, N'Sinfonía No. 9', 0),
       (15, 3, N'Sinfonía No. 3', 0),
       (15, 4, N'Sinfonía No. 7', 0),
       (16, 1, N'Surrealismo', 1),
       (16, 2, N'Cubismo', 0),
       (16, 3, N'Expresionismo', 0),
       (16, 4, N'Impresionismo', 0),
       (17, 1, N'Diego Rivera', 1),
       (17, 2, N'David Alfaro Siqueiros', 0),
       (17, 3, N'José Clemente Orozco', 0),
       (17, 4, N'Frida Kahlo', 0),
       (18, 1, N'Piotr Ilich Chaikovski', 1),
       (18, 2, N'Igor Stravinsky', 0),
       (18, 3, N'Ludwig van Beethoven', 0),
       (18, 4, N'Johann Strauss II', 0),
       (19, 1, N'Elizabeth Taylor', 1),
       (19, 2, N'Vivien Leigh', 0),
       (19, 3, N'Audrey Hepburn', 0),
       (19, 4, N'Marilyn Monroe', 0),
       (20, 1, N'Auguste Rodin', 1),
       (20, 2, N'Henry Moore', 0),
       (20, 3, N'Constantin Brâncu?i', 0),
       (20, 4, N'Alberto Giacometti', 0),
       (21, 1, N'Puntillismo', 1),
       (21, 2, N'Cubismo', 0),
       (21, 3, N'Impresionismo', 0),
       (21, 4, N'Surrealismo', 0),
       (22, 1, N'Richard Wagner', 1),
       (22, 2, N'Giuseppe Verdi', 0),
       (22, 3, N'Wolfgang Amadeus Mozart', 0),
       (22, 4, N'Giacomo Puccini', 0),
       (23, 1, N'Donatello', 1),
       (23, 2, N'Michelangelo', 0),
       (23, 3, N'Gian Lorenzo Bernini', 0),
       (23, 4, N'Lorenzo Ghiberti', 0),
       (24, 1, N'Fresco', 1),
       (24, 2, N'Tempera', 0),
       (24, 3, N'Acuarela', 0),
       (24, 4, N'Óleo', 0),
       (25, 1, N'Rembrandt', 1),
       (25, 2, N'Jan Vermeer', 0),
       (25, 3, N'Hieronymus Bosch', 0),
       (25, 4, N'Frans Hals', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (26, 1, N'Igor Stravinsky', 1),
       (26, 2, N'Sergei Prokofiev', 0),
       (26, 3, N'Maurice Ravel', 0),
       (26, 4, N'Dmitri Shostakovich', 0),
       (27, 1, N'Frida Kahlo', 1),
       (27, 2, N'Remedios Varo', 0),
       (27, 3, N'Leonora Carrington', 0),
       (27, 4, N'Tina Modotti', 0),
       (28, 1, N'Austriaco', 1),
       (28, 2, N'Alemán', 0),
       (28, 3, N'Suizo', 0),
       (28, 4, N'Holandés', 0),
       (29, 1, N'Samuel Beckett', 1),
       (29, 2, N'Jean-Paul Sartre', 0),
       (29, 3, N'Eugène Ionesco', 0),
       (29, 4, N'Harold Pinter', 0),
       (30, 1, N'De Stijl', 1),
       (30, 2, N'Fauvismo', 0),
       (30, 3, N'Dadaísmo', 0),
       (30, 4, N'Surrealismo', 0),
       (31, 1, N'Mercurio', 1),
       (31, 2, N'Venus', 0),
       (31, 3, N'Marte', 0),
       (31, 4, N'Júpiter', 0),
       (32, 1, N'Oxígeno', 1),
       (32, 2, N'Nitrógeno', 0),
       (32, 3, N'Dióxido de carbono', 0),
       (32, 4, N'Hidrógeno', 0),
       (33, 1, N'Oxígeno', 1),
       (33, 2, N'Oro', 0),
       (33, 3, N'Osmio', 0),
       (33, 4, N'Oxalato', 0),
       (34, 1, N'El Sol', 1),
       (34, 2, N'El viento', 0),
       (34, 3, N'El agua', 0),
       (34, 4, N'El petróleo', 0),
       (35, 1, N'Fotosíntesis', 1),
       (35, 2, N'Respiración', 0),
       (35, 3, N'Digestión', 0),
       (35, 4, N'Fermentación', 0),
       (36, 1, N'Corazón', 1),
       (36, 2, N'Pulmón', 0),
       (36, 3, N'Hígado', 0),
       (36, 4, N'Cerebro', 0),
       (37, 1, N'Albert Einstein', 1),
       (37, 2, N'Isaac Newton', 0),
       (37, 3, N'Galileo Galilei', 0),
       (37, 4, N'Nikola Tesla', 0),
       (38, 1, N'Telescopio', 1),
       (38, 2, N'Microscopio', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (38, 3, N'Periscopio', 0),
       (38, 4, N'Estetoscopio', 0),
       (39, 1, N'Mamífero', 1),
       (39, 2, N'Reptil', 0),
       (39, 3, N'Ave', 0),
       (39, 4, N'Anfibio', 0),
       (40, 1, N'8', 1),
       (40, 2, N'9', 0),
       (40, 3, N'7', 0),
       (40, 4, N'10', 0),
       (41, 1, N'Amperio', 1),
       (41, 2, N'Voltio', 0),
       (41, 3, N'Ohmio', 0),
       (41, 4, N'Watt', 0),
       (42, 1, N'Isaac Newton', 1),
       (42, 2, N'Albert Einstein', 0),
       (42, 3, N'Galileo Galilei', 0),
       (42, 4, N'James Clerk Maxwell', 0),
       (43, 1, N'H2O', 1),
       (43, 2, N'CO2', 0),
       (43, 3, N'O2', 0),
       (43, 4, N'NaCl', 0),
       (44, 1, N'Alexander Fleming', 1),
       (44, 2, N'Marie Curie', 0),
       (44, 3, N'Louis Pasteur', 0),
       (44, 4, N'Gregor Mendel', 0),
       (45, 1, N'Sputnik 1', 1),
       (45, 2, N'Apollo 11', 0),
       (45, 3, N'Voyager 1', 0),
       (45, 4, N'Hubble', 0),
       (46, 1, N'Ácido desoxirribonucleico', 1),
       (46, 2, N'Adenina', 0),
       (46, 3, N'Ribosoma', 0),
       (46, 4, N'Cloroplasto', 0),
       (47, 1, N'Teoría del Big Bang', 1),
       (47, 2, N'Teoría de la Relatividad', 0),
       (47, 3, N'Teoría de Cuerdas', 0),
       (47, 4, N'Teoría de la Evolución', 0),
       (48, 1, N'Marte', 1),
       (48, 2, N'Júpiter', 0),
       (48, 3, N'Saturno', 0),
       (48, 4, N'Urano', 0),
       (49, 1, N'Nitrógeno', 1),
       (49, 2, N'Oxígeno', 0),
       (49, 3, N'Dióxido de carbono', 0),
       (49, 4, N'Argón', 0),
       (50, 1, N'Charles Darwin', 1),
       (50, 2, N'Gregor Mendel', 0),
       (50, 3, N'Alfred Russel Wallace', 0),
       (50, 4, N'Jean-Baptiste Lamarck', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (51, 1, N'Nicolás Copérnico', 1),
       (51, 2, N'Johannes Kepler', 0),
       (51, 3, N'Galileo Galilei', 0),
       (51, 4, N'Isaac Newton', 0),
       (52, 1, N'Erwin Schrödinger', 1),
       (52, 2, N'Werner Heisenberg', 0),
       (52, 3, N'Max Planck', 0),
       (52, 4, N'Albert Einstein', 0),
       (53, 1, N'6.626 x 10^-34 J·s', 1),
       (53, 2, N'3.14159', 0),
       (53, 3, N'9.81 m/s^2', 0),
       (53, 4, N'1.602 x 10^-19 C', 0),
       (54, 1, N'Una partícula elemental responsable de otorgar masa a otras partículas', 1),
       (54, 2, N'Una estrella enana', 0),
       (54, 3, N'Una molécula de agua', 0),
       (54, 4, N'Un planeta enano', 0),
       (55, 1, N'Ecología', 1),
       (55, 2, N'Botánica', 0),
       (55, 3, N'Zoología', 0),
       (55, 4, N'Genética', 0),
       (56, 1, N'Teoría de la relatividad general', 1),
       (56, 2, N'Teoría de la relatividad especial', 0),
       (56, 3, N'Teoría del Big Bang', 0),
       (56, 4, N'Teoría de cuerdas', 0),
       (57, 1, N'Charles Darwin', 1),
       (57, 2, N'Gregor Mendel', 0),
       (57, 3, N'Alfred Russel Wallace', 0),
       (57, 4, N'Jean-Baptiste Lamarck', 0),
       (58, 1, N'118', 1),
       (58, 2, N'114', 0),
       (58, 3, N'120', 0),
       (58, 4, N'110', 0),
       (59, 1, N'Una explosión de una estrella masiva al final de su ciclo de vida', 1),
       (59, 2, N'Un agujero negro', 0),
       (59, 3, N'Una galaxia en colisión', 0),
       (59, 4, N'Un planeta en formación', 0),
       (60, 1, N'Albert Einstein', 1),
       (60, 2, N'Isaac Newton', 0),
       (60, 3, N'Niels Bohr', 0),
       (60, 4, N'Max Planck', 0),
       (61, 1, N'11', 1),
       (61, 2, N'9', 0),
       (61, 3, N'10', 0),
       (61, 4, N'12', 0),
       (62, 1, N'Tenis', 1),
       (62, 2, N'Fútbol', 0),
       (62, 3, N'Béisbol', 0),
       (62, 4, N'Golf', 0),
       (63, 1, N'La Copa Mundial de la FIFA', 1),
       (63, 2, N'Los Juegos Olímpicos', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (63, 3, N'El Super Bowl', 0),
       (63, 4, N'La Fórmula 1', 0),
       (64, 1, N'Pelé', 1),
       (64, 2, N'Diego Maradona', 0),
       (64, 3, N'Lionel Messi', 0),
       (64, 4, N'Cristiano Ronaldo', 0),
       (65, 1, N'Béisbol', 1),
       (65, 2, N'Fútbol', 0),
       (65, 3, N'Baloncesto', 0),
       (65, 4, N'Tenis', 0),
       (66, 1, N'Baloncesto', 1),
       (66, 2, N'Fútbol americano', 0),
       (66, 3, N'Hockey', 0),
       (66, 4, N'Béisbol', 0),
       (67, 1, N'3 sets', 1),
       (67, 2, N'4 sets', 0),
       (67, 3, N'2 sets', 0),
       (67, 4, N'5 sets', 0),
       (68, 1, N'Ajedrez', 1),
       (68, 2, N'Tenis', 0),
       (68, 3, N'Golf', 0),
       (68, 4, N'Rugby', 0),
       (69, 1, N'Ciclismo', 1),
       (69, 2, N'Esgrima', 0),
       (69, 3, N'Boxeo', 0),
       (69, 4, N'Tiro con arco', 0),
       (70, 1, N'42.195 km', 1),
       (70, 2, N'50 km', 0),
       (70, 3, N'21 km', 0),
       (70, 4, N'30 km', 0),
       (71, 1, N'Usain Bolt', 1),
       (71, 2, N'Tyson Gay', 0),
       (71, 3, N'Yohan Blake', 0),
       (71, 4, N'Justin Gatlin', 0),
       (72, 1, N'1896', 1),
       (72, 2, N'1900', 0),
       (72, 3, N'1888', 0),
       (72, 4, N'1912', 0),
       (73, 1, N'20', 1),
       (73, 2, N'22', 0),
       (73, 3, N'18', 0),
       (73, 4, N'16', 0),
       (74, 1, N'Wimbledon', 1),
       (74, 2, N'Roland Garros', 0),
       (74, 3, N'US Open', 0),
       (74, 4, N'Australian Open', 0),
       (75, 1, N'Sumo', 1),
       (75, 2, N'Judo', 0),
       (75, 3, N'Karate', 0),
       (75, 4, N'Kendo', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (76, 1, N'Michael Jordan', 1),
       (76, 2, N'Kobe Bryant', 0),
       (76, 3, N'LeBron James', 0),
       (76, 4, N'Shaquille O’Neal', 0),
       (77, 1, N'15', 1),
       (77, 2, N'13', 0),
       (77, 3, N'11', 0),
       (77, 4, N'7', 0),
       (78, 1, N'La Copa del Mundo de Cricket', 1),
       (78, 2, N'La Copa Ashes', 0),
       (78, 3, N'La Copa América de Cricket', 0),
       (78, 4, N'La Liga de Campeones de Cricket', 0),
       (79, 1, N'Los Angeles Lakers', 1),
       (79, 2, N'Chicago Bulls', 0),
       (79, 3, N'Boston Celtics', 0),
       (79, 4, N'Golden State Warriors', 0),
       (80, 1, N'Copa Libertadores', 1),
       (80, 2, N'Copa Sudamericana', 0),
       (80, 3, N'Supercopa Sudamericana', 0),
       (80, 4, N'Copa América', 0),
       (81, 1, N'5', 1),
       (81, 2, N'3', 0),
       (81, 3, N'6', 0),
       (81, 4, N'4', 0),
       (82, 1, N'Green Bay Packers', 1),
       (82, 2, N'New England Patriots', 0),
       (82, 3, N'Dallas Cowboys', 0),
       (82, 4, N'Pittsburgh Steelers', 0),
       (83, 1, N'1994', 1),
       (83, 2, N'1996', 0),
       (83, 3, N'1998', 0),
       (83, 4, N'2000', 0),
       (84, 1, N'50 metros', 1),
       (84, 2, N'100 metros', 0),
       (84, 3, N'25 metros', 0),
       (84, 4, N'75 metros', 0),
       (85, 1, N'No se jugó debido a una huelga de jugadores', 1),
       (85, 2, N'New York Yankees', 0),
       (85, 3, N'Los Angeles Dodgers', 0),
       (85, 4, N'Atlanta Braves', 0),
       (86, 1, N'Miroslav Klose', 1),
       (86, 2, N'Ronaldo', 0),
       (86, 3, N'Pelé', 0),
       (86, 4, N'Lionel Messi', 0),
       (87, 1, N'Londres', 1),
       (87, 2, N'Atenas', 0),
       (87, 3, N'París', 0),
       (87, 4, N'Tokio', 0),
       (88, 1, N'1904', 1),
       (88, 2, N'1908', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (88, 3, N'1900', 0),
       (88, 4, N'1912', 0),
       (89, 1, N'8', 1),
       (89, 2, N'6', 0),
       (89, 3, N'7', 0),
       (89, 4, N'9', 0),
       (90, 1, N'Real Madrid', 1),
       (90, 2, N'FC Barcelona', 0),
       (90, 3, N'CSKA Moscow', 0),
       (90, 4, N'Panathinaikos', 0),
       (91, 1, N'Mickey Mouse', 1),
       (91, 2, N'Donald Duck', 0),
       (91, 3, N'Goofy', 0),
       (91, 4, N'Minnie Mouse', 0),
       (92, 1, N'Harry Potter', 1),
       (92, 2, N'El Señor de los Anillos', 0),
       (92, 3, N'Star Wars', 0),
       (92, 4, N'Juego de Tronos', 0),
       (93, 1, N'Cenicienta', 1),
       (93, 2, N'Blancanieves', 0),
       (93, 3, N'Rapunzel', 0),
       (93, 4, N'Aurora', 0),
       (94, 1, N'The Beatles', 1),
       (94, 2, N'The Rolling Stones', 0),
       (94, 3, N'The Who', 0),
       (94, 4, N'Led Zeppelin', 0),
       (95, 1, N'El Rey León', 1),
       (95, 2, N'Tarzán', 0),
       (95, 3, N'Pocahontas', 0),
       (95, 4, N'Hércules', 0),
       (96, 1, N'Elvis Presley', 1),
       (96, 2, N'Michael Jackson', 0),
       (96, 3, N'Frank Sinatra', 0),
       (96, 4, N'Chuck Berry', 0),
       (97, 1, N'España', 1),
       (97, 2, N'México', 0),
       (97, 3, N'Argentina', 0),
       (97, 4, N'Italia', 0),
       (98, 1, N'Super Mario Bros', 1),
       (98, 2, N'Sonic the Hedgehog', 0),
       (98, 3, N'The Legend of Zelda', 0),
       (98, 4, N'Pac-Man', 0),
       (99, 1, N'Toy Story', 1),
       (99, 2, N'Cars', 0),
       (99, 3, N'Up', 0),
       (99, 4, N'Frozen', 0),
       (100, 1, N'George Lucas', 1),
       (100, 2, N'Steven Spielberg', 0),
       (100, 3, N'J.K. Rowling', 0),
       (100, 4, N'James Cameron', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (101, 1, N'Renée Zellweger', 1),
       (101, 2, N'Scarlett Johansson', 0),
       (101, 3, N'Charlize Theron', 0),
       (101, 4, N'Saoirse Ronan', 0),
       (102, 1, N'Stefani Joanne Angelina Germanotta', 1),
       (102, 2, N'Katheryn Elizabeth Hudson', 0),
       (102, 3, N'Robyn Rihanna Fenty', 0),
       (102, 4, N'Alicia Augello Cook', 0),
       (103, 1, N'2001', 1),
       (103, 2, N'1999', 0),
       (103, 3, N'2003', 0),
       (103, 4, N'2005', 0),
       (104, 1, N'Johnny Depp', 1),
       (104, 2, N'Orlando Bloom', 0),
       (104, 3, N'Leonardo DiCaprio', 0),
       (104, 4, N'Brad Pitt', 0),
       (105, 1, N'Walter White', 1),
       (105, 2, N'Jesse Pinkman', 0),
       (105, 3, N'Saul Goodman', 0),
       (105, 4, N'Hank Schrader', 0),
       (106, 1, N'Pink Floyd', 1),
       (106, 2, N'Led Zeppelin', 0),
       (106, 3, N'The Rolling Stones', 0),
       (106, 4, N'The Who', 0),
       (107, 1, N'Uncharted', 1),
       (107, 2, N'Tomb Raider', 0),
       (107, 3, N'Assassin’s Creed', 0),
       (107, 4, N'The Last of Us', 0),
       (108, 1, N'Jennifer Aniston', 1),
       (108, 2, N'Courteney Cox', 0),
       (108, 3, N'Lisa Kudrow', 0),
       (108, 4, N'Julia Roberts', 0),
       (109, 1, N'El viaje de Chihiro', 1),
       (109, 2, N'La princesa Mononoke', 0),
       (109, 3, N'Mi vecino Totoro', 0),
       (109, 4, N'El castillo ambulante', 0),
       (110, 1, N'Quentin Tarantino', 1),
       (110, 2, N'Martin Scorsese', 0),
       (110, 3, N'Christopher Nolan', 0),
       (110, 4, N'Steven Spielberg', 0),
       (111, 1, N'Kendrick Lamar', 1),
       (111, 2, N'Bob Dylan', 0),
       (111, 3, N'John Adams', 0),
       (111, 4, N'Philip Glass', 0),
       (112, 1, N'Minecraft', 1),
       (112, 2, N'Grand Theft Auto V', 0),
       (112, 3, N'Tetris', 0),
       (112, 4, N'The Legend of Zelda', 0),
       (113, 1, N'Anthony Hopkins', 1),
       (113, 2, N'Robert De Niro', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (113, 3, N'Jack Nicholson', 0),
       (113, 4, N'Al Pacino', 0),
       (114, 1, N'Aladdin', 1),
       (114, 2, N'La Bella y la Bestia', 0),
       (114, 3, N'El Rey León', 0),
       (114, 4, N'Pocahontas', 0),
       (115, 1, N'1989', 1),
       (115, 2, N'1991', 0),
       (115, 3, N'1987', 0),
       (115, 4, N'1985', 0),
       (116, 1, N'Francis Ford Coppola', 1),
       (116, 2, N'Martin Scorsese', 0),
       (116, 3, N'Steven Spielberg', 0),
       (116, 4, N'Brian De Palma', 0),
       (117, 1, N'Shrek', 1),
       (117, 2, N'Toy Story', 0),
       (117, 3, N'La Bella y la Bestia', 0),
       (117, 4, N'Buscando a Nemo', 0),
       (118, 1, N'Philip K. Dick', 1),
       (118, 2, N'Isaac Asimov', 0),
       (118, 3, N'Arthur C. Clarke', 0),
       (118, 4, N'Ray Bradbury', 0),
       (119, 1, N'Lee Jun-fan', 1),
       (119, 2, N'Lee Chong Wei', 0),
       (119, 3, N'Jackie Chan', 0),
       (119, 4, N'Jet Li', 0),
       (120, 1, N'La naranja mecánica', 1),
       (120, 2, N'2001: Odisea del Espacio', 0),
       (120, 3, N'El resplandor', 0),
       (120, 4, N'Barry Lyndon', 0),
       (121, 1, N'Rusia', 1),
       (121, 2, N'Canadá', 0),
       (121, 3, N'China', 0),
       (121, 4, N'Estados Unidos', 0),
       (122, 1, N'París', 1),
       (122, 2, N'Madrid', 0),
       (122, 3, N'Roma', 0),
       (122, 4, N'Berlín', 0),
       (123, 1, N'Océano Pacífico', 1),
       (123, 2, N'Océano Atlántico', 0),
       (123, 3, N'Océano Índico', 0),
       (123, 4, N'Mar Mediterráneo', 0),
       (124, 1, N'Sahara', 1),
       (124, 2, N'Desierto de Gobi', 0),
       (124, 3, N'Desierto de Kalahari', 0),
       (124, 4, N'Desierto de Atacama', 0),
       (125, 1, N'América del Sur', 1),
       (125, 2, N'África', 0),
       (125, 3, N'Asia', 0),
       (125, 4, N'Europa', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (126, 1, N'Río Nilo', 1),
       (126, 2, N'Río Amazonas', 0),
       (126, 3, N'Río Yangtsé', 0),
       (126, 4, N'Río Misisipi', 0),
       (127, 1, N'China', 1),
       (127, 2, N'India', 0),
       (127, 3, N'Estados Unidos', 0),
       (127, 4, N'Indonesia', 0),
       (128, 1, N'Tokio', 1),
       (128, 2, N'Osaka', 0),
       (128, 3, N'Kyoto', 0),
       (128, 4, N'Hiroshima', 0),
       (129, 1, N'África', 1),
       (129, 2, N'Asia', 0),
       (129, 3, N'Europa', 0),
       (129, 4, N'América del Norte', 0),
       (130, 1, N'Italia', 1),
       (130, 2, N'España', 0),
       (130, 3, N'Grecia', 0),
       (130, 4, N'Portugal', 0),
       (131, 1, N'Francia', 1),
       (131, 2, N'Estados Unidos', 0),
       (131, 3, N'Rusia', 0),
       (131, 4, N'Canadá', 0),
       (132, 1, N'Monte Kilimanjaro', 1),
       (132, 2, N'Monte Kenia', 0),
       (132, 3, N'Montes Drakensberg', 0),
       (132, 4, N'Monte Atlas', 0),
       (133, 1, N'Chile', 1),
       (133, 2, N'Perú', 0),
       (133, 3, N'Bolivia', 0),
       (133, 4, N'Argentina', 0),
       (134, 1, N'Canberra', 1),
       (134, 2, N'Sídney', 0),
       (134, 3, N'Melbourne', 0),
       (134, 4, N'Brisbane', 0),
       (135, 1, N'Río Danubio', 1),
       (135, 2, N'Río Rin', 0),
       (135, 3, N'Río Volga', 0),
       (135, 4, N'Río Dniéper', 0),
       (136, 1, N'Ottawa', 1),
       (136, 2, N'Toronto', 0),
       (136, 3, N'Montreal', 0),
       (136, 4, N'Vancouver', 0),
       (137, 1, N'Colombia', 1),
       (137, 2, N'Brasil', 0),
       (137, 3, N'Perú', 0),
       (137, 4, N'Chile', 0),
       (138, 1, N'Isla de Pascua', 1),
       (138, 2, N'Islas Galápagos', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES (138, 3, N'Isla Juan Fernández', 0),
       (138, 4, N'Isla Chiloé', 0),
       (139, 1, N'Mar del Coral', 1),
       (139, 2, N'Mar de Tasmania', 0),
       (139, 3, N'Mar de Arafura', 0),
       (139, 4, N'Mar de Banda', 0),
       (140, 1, N'Lagos', 1),
       (140, 2, N'El Cairo', 0),
       (140, 3, N'Kinshasa', 0),
       (140, 4, N'Johannesburgo', 0),
       (141, 1, N'Sudán del Sur', 1),
       (141, 2, N'Timor Oriental', 0),
       (141, 3, N'Kosovo', 0),
       (141, 4, N'Eritrea', 0),
       (142, 1, N'Río Citarum', 1),
       (142, 2, N'Río Ganges', 0),
       (142, 3, N'Río Yamuna', 0),
       (142, 4, N'Río Amarillo', 0),
       (143, 1, N'Lago Baikal', 1),
       (143, 2, N'Lago Tanganica', 0),
       (143, 3, N'Lago Superior', 0),
       (143, 4, N'Lago Victoria', 0),
       (144, 1, N'La Paz', 1),
       (144, 2, N'Katmandú', 0),
       (144, 3, N'Quito', 0),
       (144, 4, N'Thimphu', 0),
       (145, 1, N'Desierto del Sahara', 1),
       (145, 2, N'Desierto de Mojave', 0),
       (145, 3, N'Desierto de Sonora', 0),
       (145, 4, N'Desierto de Gobi', 0),
       (146, 1, N'Sudáfrica', 1),
       (146, 2, N'Namibia', 0),
       (146, 3, N'Botsuana', 0),
       (146, 4, N'Lesoto', 0),
       (147, 1, N'Suecia', 1),
       (147, 2, N'Noruega', 0),
       (147, 3, N'Filipinas', 0),
       (147, 4, N'Indonesia', 0),
       (148, 1, N'Estambul', 1),
       (148, 2, N'Moscú', 0),
       (148, 3, N'Atenas', 0),
       (148, 4, N'Viena', 0),
       (149, 1, N'Rusia', 1),
       (149, 2, N'Japón', 0),
       (149, 3, N'Mongolia', 0),
       (149, 4, N'China', 0),
       (150, 1, N'Salto Ángel', 1),
       (150, 2, N'Cataratas del Niágara', 0),
       (150, 3, N'Cataratas Victoria', 0),
       (150, 4, N'Cataratas del Iguazú', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES 
(151, 1, N'1939', 1),
(151, 2, N'1945', 0),
(151, 3, N'1914', 0),
(151, 4, N'1929', 0),
(152, 1, N'George Washington', 1),
(152, 2, N'Thomas Jefferson', 0),
(152, 3, N'John Adams', 0),
(152, 4, N'Abraham Lincoln', 0),
(153, 1, N'Egipcia', 1),
(153, 2, N'Griega', 0),
(153, 3, N'Romana', 0),
(153, 4, N'Maya', 0),
(154, 1, N'1776', 1),
(154, 2, N'1789', 0),
(154, 3, N'1804', 0),
(154, 4, N'1492', 0),
(155, 1, N'Adolf Hitler', 1),
(155, 2, N'Benito Mussolini', 0),
(155, 3, N'Joseph Stalin', 0),
(155, 4, N'Winston Churchill', 0),
(156, 1, N'Imperio Romano', 1),
(156, 2, N'Imperio Persa', 0),
(156, 3, N'Imperio Bizantino', 0),
(156, 4, N'Imperio Otomano', 0),
(157, 1, N'Muro de Berlín', 1),
(157, 2, N'Muro de Adriano', 0),
(157, 3, N'Gran Muralla China', 0),
(157, 4, N'Muro de los Lamentos', 0),
(158, 1, N'Proclamación de Emancipación', 1),
(158, 2, N'Carta Magna', 0),
(158, 3, N'Declaración de Independencia', 0),
(158, 4, N'Tratado de Versalles', 0),
(159, 1, N'1492', 1),
(159, 2, N'1502', 0),
(159, 3, N'1519', 0),
(159, 4, N'1607', 0),
(160, 1, N'Francia', 1),
(160, 2, N'España', 0),
(160, 3, N'Italia', 0),
(160, 4, N'Austria', 0),
(161, 1, N'Tutankamón', 1),
(161, 2, N'Ramsés II', 0),
(161, 3, N'Cleopatra', 0),
(161, 4, N'Akhenatón', 0),
(162, 1, N'Guerra de Corea', 1),
(162, 2, N'Guerra de Vietnam', 0),
(162, 3, N'Guerra de Afganistán', 0),
(162, 4, N'Guerra del Golfo', 0),
(163, 1, N'Qin Shi Huang', 1),
(163, 2, N'Kublai Khan', 0),
(163, 3, N'Sun Tzu', 0),
(163, 4, N'Confucio', 0),
(164, 1, N'Inca', 1),
(164, 2, N'Azteca', 0),
(164, 3, N'Maya', 0),
(164, 4, N'Olmeca', 0),
(165, 1, N'Constantino I', 1),
(165, 2, N'Julio César', 0),
(165, 3, N'Nerón', 0),
(165, 4, N'Calígula', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES 
(166, 1, N'Primera Guerra Mundial', 1),
(166, 2, N'Segunda Guerra Mundial', 0),
(166, 3, N'Guerra de Crimea', 0),
(166, 4, N'Guerra de los Cien Años', 0),
(167, 1, N'Nicolás Maquiavelo', 1),
(167, 2, N'Platón', 0),
(167, 3, N'Aristóteles', 0),
(167, 4, N'Sun Tzu', 0),
(168, 1, N'1453', 1),
(168, 2, N'1492', 0),
(168, 3, N'1517', 0),
(168, 4, N'1521', 0),
(169, 1, N'Tratado de Versalles', 1),
(169, 2, N'Tratado de Utrecht', 0),
(169, 3, N'Tratado de Tordesillas', 0),
(169, 4, N'Tratado de Westfalia', 0),
(170, 1, N'Francia', 1),
(170, 2, N'Estados Unidos', 0),
(170, 3, N'Reino Unido', 0),
(170, 4, N'España', 0),
(171, 1, N'Sumeria', 1),
(171, 2, N'Egipto', 0),
(171, 3, N'Babilonia', 0),
(171, 4, N'Asiria', 0),
(172, 1, N'1789', 1),
(172, 2, N'1776', 0),
(172, 3, N'1812', 0),
(172, 4, N'1848', 0),
(173, 1, N'Luis XIV', 1),
(173, 2, N'Ricardo III', 0),
(173, 3, N'Enrique VIII', 0),
(173, 4, N'Carlos II', 0),
(174, 1, N'Conferencia de Berlín', 1),
(174, 2, N'Conferencia de París', 0),
(174, 3, N'Conferencia de Yalta', 0),
(174, 4, N'Conferencia de Viena', 0),
(175, 1, N'Guerra Civil Inglesa', 1),
(175, 2, N'Guerra de los Treinta Años', 0),
(175, 3, N'Revolución Gloriosa', 0),
(175, 4, N'Revolución Industrial', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES 
(176, 1, N'Pancho Villa', 1),
(176, 2, N'Emiliano Zapata', 0),
(176, 3, N'Porfirio Díaz', 0),
(176, 4, N'Venustiano Carranza', 0),
(177, 1, N'1912', 1),
(177, 2, N'1905', 0),
(177, 3, N'1911', 0),
(177, 4, N'1920', 0),
(178, 1, N'Aníbal Barca', 1),
(178, 2, N'Escipión el Africano', 0),
(178, 3, N'Julio César', 0),
(178, 4, N'Trajano', 0),
(179, 1, N'Carta Magna', 1),
(179, 2, N'Petición de Derechos', 0),
(179, 3, N'Declaración de Derechos', 0),
(179, 4, N'Acta de Navegación', 0),
(180, 1, N'Hatshepsut', 1),
(180, 2, N'Nefertiti', 0),
(180, 3, N'Cleopatra', 0),
(180, 4, N'Nefertari', 0);

-- El robo 3 es puro futbol, va a quedar totalmente desbalanceado la bd si lo pongo

/* Robo 4
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](50) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](50) NULL, [Sacarlo]

GO
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto], [Color]) VALUES (1, N'Historia', N'/images/categoria1', N'#e9ce16')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto], [Color]) VALUES (2, N'Ciencia', N'/images/categoria2', N'#2ad774')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto], [Color]) VALUES (3, N'Deportes', N'/images/categoria4', N'#f7941d')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto], [Color]) VALUES (4, N'Artes', N'/images/categoria5', N'#ed2b34')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto], [Color]) VALUES (5, N'Entretenimiento', N'/images/categoria6', N'#f95db5')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto], [Color]) VALUES (6, N'Geografía', N'/images/categoria6', N'#1676cd')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto], [Color]) VALUES (7, N'Comodín', N'/images/categoria7', N'purple') [Reemplazar por otras categorias]
GO
*/

INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién fue el primer presidente de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿En qué año se declaró la independencia de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cómo se llama el himno nacional de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién es conocido como el “Padre de la Patria” en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué ciudad fue la primera capital de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál es el nombre del general que lideró la independencia en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué guerra enfrentó a Argentina contra el Reino Unido en 1982?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué conflicto se produjo entre 1835 y 1852 en Argentina, conocido como las guerras civiles?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál fue el nombre del tratado que puso fin a la guerra con Brasil en 1828?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué evento ocurrió el 9 de julio de 1816?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué dictadura militar gobernó Argentina desde 1976 hasta 1983?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué presidente argentino fue derrocado por un golpe militar en 1955?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué famoso general argentino luchó en la guerra de independencia y en las guerras de la independencia de América del Sur?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué acuerdo en 1880 estableció a Buenos Aires como la capital de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿En qué año se aprobó la primera Constitución Nacional Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué evento importante ocurrió el 25 de mayo de 1810 en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué guerra se libró en 1982 entre Argentina y el Reino Unido?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién fue el presidente de Argentina al inicio de la Primera Guerra Mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién fue el líder del movimiento peronista en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿En qué año se produjo el golpe de estado que instauró la dictadura de Jorge Rafael Videla?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué evento importante ocurrió en 2001 en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál es la moneda oficial de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué ciudad es la capital de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿En qué año se realizó la primera Copa Mundial de Fútbol en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué famoso teatro de Buenos Aires es conocido por su arquitectura y su importancia cultural?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué evento marcó el fin de la dictadura militar en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Quién fue el presidente de Argentina durante la Guerra de las Malvinas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué nombre recibió el periodo político posterior al final de la dictadura de Videla en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué presidente argentino promulgó la Ley de Reforma del Estado en 1989?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿En qué año se realizó la última dictadura militar en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué tratado marcó el fin de las hostilidades entre Argentina y Chile en 1984?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué evento marcó el inicio de la democracia en Argentina en 1983?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué presidente argentino fue conocido por sus políticas de "desarrollo económico" en los años 60?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué batalla decisiva ocurrió en 1813 durante la lucha por la independencia argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué evento histórico en 1982 llevó a la recuperación de las Islas Malvinas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Qué nombre recibió el conflicto interno en Argentina durante los años 70, que involucró la represión de opositores?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué general argentino fue el principal líder en la Campaña del Norte durante la Guerra de Independencia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Quién fue el primer presidente de Argentina bajo la Constitución de 1853?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué evento conocido como la “Revolución Libertadora” derrocó al presidente Perón en 1955?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué tratado internacional resolvió el conflicto con Chile sobre la soberanía de la Patagonia en 1881?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué presidente argentino instituyó el voto femenino en 1947?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿En qué año se realizó el primer censo nacional en Argentina después de la independencia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué presidente argentino firmó el tratado que puso fin a la Guerra del Paraguay en 1870?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué revolución social y política comenzó en Argentina en 1966 y llevó al gobierno de Juan Carlos Onganía?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Cuál fue el objetivo principal de la Ley de Educación Común de 1884 en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Quién fue el presidente de Argentina durante la Primera Guerra Mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué guerra con Brasil finalizó con el tratado de Montevideo en 1828?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué dictadura militar argentina llevó a la implementación de políticas económicas conocidas como "Plan de Convertibilidad"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué presidente argentino implementó el "Gran Acuerdo Nacional" en la década de 1980?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué acuerdo en 1880 permitió la federalización de Buenos Aires?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Quién fue el líder de la facción liberal en la Guerra Civil Argentina de mediados del siglo XIX?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué evento de 1983 marcó el retorno a la democracia en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué importante ley de 1974 estableció el sistema de jubilaciones en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Cuál fue el objetivo principal de la Reforma Universitaria de 1918 en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué conflicto de la década de 1950 llevó al exilio de Juan Domingo Perón?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué importante reforma constitucional se llevó a cabo en Argentina en 1994?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué acuerdo entre Argentina y Brasil en 1985 estableció un plan de integración económica?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué dictador argentino instauró la “Revolución Argentina” en 1966?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué evento en 2001 llevó a una crisis económica en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué nombre recibió la administración militar de 1982 que fue reemplazada por una democracia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué nombre recibe el movimiento estudiantil que buscó reformas en la educación en 1968?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué conflicto armado comenzó en 1835 entre las provincias del interior y el gobierno central?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué famoso libro fue escrito por Domingo Faustino Sarmiento en 1845?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué año marca el inicio de la dictadura militar conocida como el Proceso de Reorganización Nacional?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué tratado de 1827 puso fin a la Guerra de la Banda Oriental?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué reforma realizada en 1912 permitió el voto secreto y la representación proporcional en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué presidente argentino fue conocido por su lucha contra la oligarquía y la implementación de la política de "Justicia Social"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué revolución de 1955 derrocó al gobierno de Juan Domingo Perón?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Quién fue el presidente argentino que instauró el "Estado de Bienestar" en la década de 1940?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué dictadura argentina fue conocida por sus políticas de "Reorganización Nacional" y represión de la oposición?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué evento político de 1983 marcó el fin del régimen militar en Argentina y el regreso a la democracia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué guerra de 1839-1852 enfrentó a Buenos Aires contra el resto del país?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué tratado de 1947 definió la relación de Argentina con el mundo tras la Segunda Guerra Mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué importante reforma de 1958 permitió la modernización de la Constitución argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué presidente argentino instauró el "Desarrollismo" en la década de 1960?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Quién fue el general que lideró la Revolución de 1943 en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué tratado de 1852 puso fin a las guerras civiles argentinas y estableció un gobierno federal?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué movimiento político y social comenzó en 1916 con la elección de Hipólito Yrigoyen como presidente?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué importante reforma educativa de 1949 buscó democratizar la educación en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué nombre recibió el conflicto bélico entre Argentina y Paraguay de 1864 a 1870?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué ley de 1927 buscó el control de la deuda externa en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué dictadura argentina en 1981-1983 es conocida por su represión y violaciones de derechos humanos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué evento de 1943 llevó al fin de la presidencia de Ramón Castillo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué acuerdo internacional de 1825 estableció los límites definitivos entre Argentina y Brasil?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué dictador argentino instauró la política de "Triple Alianza" y en qué año?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué acuerdo de 1831 estableció el sistema de navegación por los ríos interiores de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué presidente argentino promulgó la ley de "Capitalización del Estado" en 1949?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué operación militar durante la dictadura argentina se denominó “Operativo Cóndor”?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué figura política argentina fue clave en la creación de la "Conferencia del Rio de la Plata" en 1825?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué resolución de 1859 permitió la incorporación de Buenos Aires a la Confederación Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué ley de 1919 se conoció como la "Ley de la Jefa" y quién fue su impulsor?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué plan económico implementado durante la presidencia de José Félix Uriburu tuvo un impacto profundo en la economía argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué guerra entre 1865 y 1870 involucró a Argentina, Brasil y Uruguay contra Paraguay?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Quién fue el principal rival político de Juan Domingo Perón durante su primera presidencia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué evento histórico en 1820 resultó en la disolución de la Confederación Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué reforma constitucional en 1934 permitió la reelección presidencial en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué dictadura argentina se caracterizó por su política de "Reorganización Nacional" y represión de la oposición política?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué importante acuerdo de 1941 con los Estados Unidos tuvo repercusiones en la política argentina durante la Segunda Guerra Mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué proyecto de reforma agraria en 1949 buscó redistribuir tierras en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué batalla decisiva de 1817 permitió la liberación de Chile de las fuerzas españolas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué movimiento político en 1970 promovió un modelo de economía de mercado y apertura al capital extranjero en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué acuerdo internacional de 1991 estableció el MERCOSUR entre Argentina, Brasil, Paraguay y Uruguay?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué influyente dictador argentino fue responsable del desarrollo del "Plan de Reorganización Nacional" en 1976?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué evento en 1865 marcó el inicio de la Guerra de la Triple Alianza entre Argentina, Brasil y Uruguay contra Paraguay?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué ley de 1920 estableció las bases del sufragio universal masculino en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué tratado de 1825 estableció la independencia de las Provincias Unidas del Río de la Plata?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué impacto tuvo la crisis económica global de 1930 en la política interna de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué ley de 1949 fue conocida como la "Ley de la Nación"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué líder de la Revolución Argentina de 1966 fue conocido por su autoritarismo y represión?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué tratado en 1884 estableció la soberanía argentina sobre la Patagonia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué reforma constitucional de 1949 fue derogada durante la dictadura de 1955?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué importante conferencia de 1904 llevó a la expansión de la influencia argentina en la región?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué dictadura argentina entre 1976 y 1983 se caracterizó por su política de "Represión y Control"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué impacto tuvo la Revolución de Mayo de 1810 en el proceso de independencia de Sudamérica?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué ley en 1912 reformó el sistema electoral argentino y permitió la participación de los partidos políticos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué nombre recibe el tratado que resolvió el conflicto con Chile sobre el canal Beagle en 1984?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué impacto tuvo el "Plan de Convertibilidad" en la economía argentina durante la década de 1990?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué figura política en la década de 1980 lideró el retorno a la democracia en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué presidente argentino impulsó el "Desarrollo Económico Nacional" en los años 60?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué importante ley de 1934 permitió la creación de la "Corporación Argentina de Productores de Lácteos"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué reforma constitucional de 1949 introdujo cambios significativos en la estructura del gobierno argentino?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué nombre recibe el conflicto interno en Argentina durante la década de 1970 conocido como la "Guerra Sucia"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué figura clave en la política argentina fue conocida por su oposición al régimen de Juan Domingo Perón en los años 50?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué acuerdo internacional de 1945 estableció los fundamentos de la política exterior argentina durante la Segunda Guerra Mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué reforma educativa de 1918 buscó la democratización y la autonomía universitaria en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué dictador argentino implementó políticas de "Modernización y Reorganización" en 1980?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué evento de 1829 resultó en la firma del tratado de paz entre Buenos Aires y el resto de las provincias argentinas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué tratado internacional de 1865 marcó el final de la Guerra de la Triple Alianza?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué dictadura argentina de 1983 a 1989 estuvo marcada por el intento de "Reformismo Económico"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué reforma constitucional en 1956 modificó la estructura del gobierno argentino?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué importante ley de 1960 permitió la reestructuración del sistema educativo argentino?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué nombre recibe la crisis económica y política que ocurrió en Argentina en el año 2001?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es la capital de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué océano baña la costa este de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es el río más largo de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué provincia se encuentra el glaciar Perito Moreno?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué cordillera atraviesa Argentina de norte a sur?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es la montaña más alta de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué provincia se encuentra la ciudad de Córdoba?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué ciudad es conocida como la "Ciudad de la Furia"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia es conocida como la "Tierra de los Gigantes"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué provincia se encuentra la ciudad de Mendoza?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es el clima predominante en la región de la Pampa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia argentina es famosa por sus cataratas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia es conocida por el vino Malbec?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es el nombre del desierto más grande de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué región argentina es famosa por su producción de soja?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué ciudad argentina es conocida por su arquitectura colonial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia argentina tiene una costa en el Atlántico Sur?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué provincia se encuentra la ciudad de San Juan?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué región de Argentina es conocida como la "Patagonia"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué ciudad es la capital de la provincia de Buenos Aires?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia argentina es famosa por su producción de cuero?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es el nombre del lago más grande de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia argentina es conocida por el carnaval de Gualeguaychú?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué provincia se encuentra la ciudad de Salta?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué río forma parte de la frontera entre Argentina y Paraguay?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es el nombre del parque nacional que protege los glaciares en el sur de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia es conocida por la producción de tabaco?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué ciudad es famosa por su fiesta de la cerveza en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es la principal actividad económica en la región de la Pampa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia argentina es conocida por el desarrollo de la industria pesquera?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es el nombre de la ciudad universitaria en el norte de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia argentina es famosa por su cultura guaraní?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué ciudad es conocida como la "Cuna de la Bandera"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia argentina es conocida por su producción de aceite de oliva?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué provincia se encuentra la ciudad de Ushuaia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué ciudad argentina es famosa por su centro histórico y su arquitectura?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia es conocida por su producción de algodón?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es la región más al sur de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿En qué provincia se encuentra el Parque Nacional Los Alerces?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué ciudad argentina es conocida por su arquitectura modernista?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué río forma parte de la frontera entre Argentina y Brasil?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia es conocida por el Parque Nacional Talampaya?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Cuál es el nombre de la ciudad que es la capital de la provincia de Santa Fe?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué provincia argentina es famosa por sus viñedos y bodegas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué región de Argentina es conocida por su producción de cereales?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, N'¿Qué ciudad es conocida por su carnaval en la provincia de Jujuy?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del sistema montañoso que se encuentra en la frontera entre Argentina y Chile?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina se encuentra al noreste de Buenos Aires y es conocida por su producción de yerba mate?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es la capital de la provincia de La Pampa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué provincia argentina se encuentra la ciudad de San Rafael?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué río forma parte de la frontera entre Argentina y Uruguay?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del volcán activo en la provincia de Neuquén?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué ciudad argentina es conocida por sus termas y se encuentra en la provincia de Entre Ríos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del lago ubicado en la provincia de Neuquén que es conocido por sus aguas cristalinas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina es famosa por su festival de la vendimia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué provincia se encuentra el Parque Nacional Quebrada del Condorito?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del canal que conecta el Río Paraná con el Río de la Plata?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué ciudad argentina es conocida por su arquitectura de estilo alemán y está en la provincia de Córdoba?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué provincia se encuentra el Parque Nacional Los Alerces?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué río forma el límite natural entre la región de Cuyo y la región de la Pampa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del glaciar que se encuentra en la provincia de Santa Cruz, además del Perito Moreno?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué ciudad argentina es conocida como la "Ciudad de los Reyes" y está en la provincia de San Juan?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es la mayor ciudad de la provincia de Jujuy?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina es conocida por la producción de azúcar de caña?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué provincia se encuentra el Parque Nacional Talampaya?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué ciudad argentina es famosa por su carnaval y se encuentra en la provincia de Corrientes?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del río que atraviesa la provincia de Santiago del Estero y forma parte del sistema fluvial del río Paraná?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina es conocida por sus formaciones rocosas llamadas "Los Gigantes"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es la ciudad más importante de la provincia de Formosa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina tiene una costa en el Océano Atlántico y es conocida por su producción de mariscos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina es famosa por sus formaciones geológicas denominadas "Valle de la Luna"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué provincia se encuentra el Parque Nacional Lanín?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre de la ciudad situada al sur de Buenos Aires, conocida por su puerto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué provincia se encuentra el volcán Ojos del Salado?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué ciudad es la capital de la provincia de Chaco?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina es famosa por su producción de frutos secos, como nueces y almendras?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué provincia argentina se encuentra la ciudad de General Roca?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del lago en la provincia de Mendoza que es utilizado para el riego de cultivos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué región de Argentina es conocida por su producción de vino de alta calidad?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es la ciudad más grande de la provincia de Misiones?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿En qué provincia se encuentra la Reserva Natural Otamendi?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del glaciar que se encuentra en la provincia de Santa Cruz, al norte del Perito Moreno?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué ciudad es conocida como la "Ciudad de la Amistad" y se encuentra en la provincia de Córdoba?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina es famosa por sus salinas y el Salar de Hombre Muerto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué ciudad argentina es conocida por su centro histórico y está en la provincia de Tucumán?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué provincia argentina es famosa por sus rutas del vino y se encuentra al oeste del país?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Cuál es el nombre del río que recorre la provincia de Salta y es uno de los afluentes del río Paraguay?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 2, N'¿Qué ciudad es la capital de la provincia de Santa Cruz?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es la altitud exacta del Cerro Bonete, una de las montañas más altas de la provincia de La Rioja?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué tres provincias argentinas están delimitadas por el río Pilcomayo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es el nombre del desierto en el norte de Argentina que es uno de los más áridos del país?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué lagos de la Patagonia argentina están comunicados por el Canal de los Témpanos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es el nombre del parque nacional en la provincia de Mendoza que protege la flora y fauna del área del Aconcagua?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué importante falla geológica atraviesa el noroeste de Argentina, desde la región andina hasta el Gran Chaco?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué río argentino nace en la cordillera de los Andes y recorre la provincia de Mendoza antes de desembocar en el Océano Atlántico?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué formación geológica en la provincia de Salta es famosa por sus formaciones de roca multicolores y cómo se llama el parque que la protege?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es el nombre de la región de gran extensión que se encuentra al sur de la provincia de Buenos Aires, conocida por sus estepas y valles secos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué glaciares en la provincia de Santa Cruz son parte del Campo de Hielo Patagónico Sur y qué particularidad tienen?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué fenómeno geológico es responsable de la formación de la Quebrada de Humahuaca en el noroeste de Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es la profundidad máxima del Lago Argentino, el lago más grande de la Patagonia argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué importante río argentino se encuentra en la región del Gran Chaco y cuáles son sus principales afluentes?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es el nombre de la reserva natural en la provincia de Córdoba que protege la mayor área de bosque de yungas en Argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué montaña en la provincia de San Juan es conocida por sus formaciones rocosas únicas y cómo se llama el parque que la protege?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué río atraviesa la provincia de Tucumán y es crucial para la irrigación de los cultivos en la región?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es el nombre del macizo montañoso en el sur de Argentina que incluye el Cerro Fitz Roy y el Cerro Torre?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué parque nacional en la provincia de Jujuy es famoso por sus formaciones geológicas y su biodiversidad?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué río forma parte de la frontera natural entre Argentina y Bolivia, y cuál es su importancia para la región?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es el nombre del glaciar en la provincia de Santa Cruz que es conocido por su actividad de ruptura de grandes bloques de hielo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué región argentina es conocida por su producción de sal y cuáles son las principales salinas que se encuentran allí?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué ciudad argentina, ubicada en la provincia de Mendoza, es conocida por ser un centro de investigación y conservación de fauna silvestre?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué importante recurso hídrico se encuentra en el subsuelo de la región del Gran Chaco, conocido como el Acuífero Guaraní?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué parque nacional en la provincia de Tierra del Fuego protege una de las últimas selvas subantárticas del planeta?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es la extensión en kilómetros cuadrados del Parque Nacional Los Alerces y qué tipo de ecosistemas protege?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué fenómeno geológico ha dado lugar a la formación de la Quebrada del Toro en la provincia de Salta?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué importantes cordilleras se encuentran en la provincia de Mendoza y cuáles son sus picos más altos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué parque nacional en la provincia de Salta es famoso por sus pinturas rupestres y su paisaje árido?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es la importancia ecológica del Parque Nacional Talampaya en la provincia de La Rioja?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué ciudad argentina, ubicada en la provincia de Córdoba, es conocida por su papel en la historia del transporte ferroviario?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es la importancia geográfica y ecológica del sistema de lagos en la región de la Patagonia Norte?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué importantes yacimientos paleontológicos se encuentran en la provincia de Neuquén y qué fósiles han sido encontrados allí?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es el nombre del río que forma la frontera entre Argentina y Paraguay en el noreste del país?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué ciudad argentina es conocida por su influencia en el desarrollo de la industria del vino y se encuentra en la provincia de San Juan?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué región argentina es famosa por sus formaciones rocosas conocidas como “Los Gigantes” y qué actividades al aire libre se pueden realizar allí?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué ciudad argentina es el centro de la producción de azúcar de caña y qué provincia la alberga?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué parque nacional en la provincia de Buenos Aires es famoso por sus campos de médanos y su biodiversidad?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es la importancia del río Paraná en la economía y el transporte de la región del Litoral argentino?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué ciudad argentina es conocida como la "Ciudad del Sol" y cuál es su importancia en la región del noroeste?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Cuál es el nombre del sistema montañoso en la provincia de San Luis que forma parte de la región de las Sierras de San Luis?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué parque nacional en la provincia de Mendoza es conocido por sus valles y formaciones rocosas únicas, incluyendo el famoso Valle de las Leñas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué sistema de lagos en el sur de Argentina está formado por el Lago Viedma, el Lago Argentino y el Lago Roca?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué provincia argentina es conocida por su producción de minerales como el litio y el potasio en el Salar del Hombre Muerto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 3, N'¿Qué importantes formaciones rocosas y geológicas se encuentran en la provincia de Mendoza y cuál es su importancia científica?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de los siguientes deportes se juega con una pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se usa una raqueta?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega en una cancha de baloncesto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en una piscina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte involucra correr en una pista?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el deporte más popular en el mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se realizan giros y saltos en el aire?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega con un aro y una pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de los siguientes deportes es de equipo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega en un campo con porterías?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos es un deporte de combate?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes es conocido como el "deporte rey"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se utiliza una pelota ovalada?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en una pista de hielo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se compite en maratones?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el objetivo del baloncesto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos es un deporte de equipo que se juega con bate y pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte utiliza un aro y una pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en una mesa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se utiliza una pelota de golf?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el deporte que se juega en una pista de atletismo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte involucra saltar sobre un caballo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos es un deporte de invierno?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega con un disco en una pista?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega con un balón en un campo rectangular?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega con raquetas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte involucra lanzar una jabalina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en un campo de césped?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se practica en el mar con una tabla?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de los siguientes deportes se juega con una pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se usa una raqueta?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega en una cancha de baloncesto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en una piscina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte involucra correr en una pista?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el deporte más popular en el mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se realizan giros y saltos en el aire?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega con un aro y una pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de los siguientes deportes es de equipo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega en un campo con porterías?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos es un deporte de combate?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes es conocido como el "deporte rey"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se utiliza una pelota ovalada?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en una pista de hielo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se compite en maratones?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el objetivo del baloncesto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos es un deporte de equipo que se juega con bate y pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte utiliza un aro y una pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en una mesa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se utiliza una pelota de golf?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el deporte que se juega en una pista de atletismo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte involucra saltar sobre un caballo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos es un deporte de invierno?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega con un disco en una pista?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega con un balón en un campo rectangular?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega con raquetas?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte involucra lanzar una jabalina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en un campo de césped?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se practica en el mar con una tabla?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se juega con una pelota de baloncesto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el objetivo del fútbol?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega en una pista de atletismo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega en una cancha de tenis?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se practica en la nieve?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte utiliza un balón redondo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes se juega con un palo y una pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega con un disco volador?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál de estos deportes involucra un anillo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Qué deporte se juega en una cancha cubierta?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿En qué deporte se utilizan pelotas de diferentes tamaños?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿En qué deporte se utilizan los términos "ace", "deuce" y "match point"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se practica en un octágono?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte es conocido como el "deporte rey"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se juega con una red y una pelota en la playa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se juega con un aro y una pelota?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿En qué deporte se utiliza un disco?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte utiliza una pelota ovalada?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte es popular en los Juegos Olímpicos de verano?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se juega en una piscina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte tiene un torneo llamado "Wimbledon"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es la duración de un partido de fútbol?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿En qué deporte se hace un "shootout"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se juega con una paleta y una bola en una cancha?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es la posición de un jugador que es el último en la defensa en fútbol?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se juega en una cancha de baloncesto?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte tiene un balón de fútbol que se usa en los partidos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es la distancia de una maratón?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se juega con una raqueta y un volante?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿En qué deporte se realizan los "dribles"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se practica en un ring?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se basa en el lanzamiento de una bola?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se juega con un balón de cuero?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se juega en una cancha rectangular?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte tiene un balón que se puede patear?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte se practica en una pista de hielo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es el equipo de fútbol más laureado en la historia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué deporte tiene como objetivo lanzar un balón a través de un aro elevado?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es el único país que ha participado en todas las Copas del Mundo de la FIFA desde 1930?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el atleta con más medallas olímpicas de todos los tiempos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿En qué año se celebraron los primeros Juegos Olímpicos modernos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué equipo ha ganado más Copas de Europa en fútbol?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el máximo goleador de la historia del fútbol mundial?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué deporte se practica en el Tour de Francia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién fue el primer jugador en ganar el Balón de Oro?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es el récord mundial de 100 metros planos en hombres?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué país ganó la Copa del Mundo de Rugby en 2019?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿En qué deporte se utiliza el término "grand slam"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es considerado el mejor tenista de todos los tiempos por muchos expertos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué país es conocido por su equipo de cricket llamado "Los All Blacks"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué famoso boxeador se conocía como "The Greatest"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es el deporte más antiguo que se practica en la actualidad?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué país tiene más títulos de la Copa América?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién fue el primer piloto en ganar siete campeonatos mundiales de Fórmula 1?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿En qué año se fundó la NBA?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué deporte se juega en el All England Club?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el jugador con más títulos de Grand Slam en tenis femenino?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es la ciudad que ha acogido más Juegos Olímpicos?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el único jugador en la historia de la NBA que ha anotado 100 puntos en un solo partido?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿En qué deporte se lleva a cabo el "Ironman"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué país ganó la primera Copa del Mundo de la FIFA?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el máximo goleador de la historia de la UEFA Champions League?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué deporte combina esquí y tiro?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es la distancia de una maratón completa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué famoso nadador ganó ocho medallas de oro en los Juegos Olímpicos de Pekín 2008?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el atleta más rápido del mundo en la historia?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué deporte se practica en un velódromo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué equipo nacional ha ganado más títulos de la Eurocopa?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién fue el primer jugador en anotar un gol en un Mundial de fútbol?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué país ganó el oro en baloncesto masculino en los Juegos Olímpicos de Londres 2012?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es el nombre del torneo de golf más prestigioso del mundo?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué equipo de fútbol tiene el apodo "Los Diablos Rojos"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién fue el primer jugador en ser seleccionado en el draft de la NBA?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué famoso torneo de tenis se celebra en Australia cada enero?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es el nombre del famoso maratón que se celebra en Boston?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué deporte se juega en el "Wimbledon"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el jugador de fútbol con más apariciones en la selección argentina?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué país organizó los Juegos Olímpicos de 2008?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es la superficie de juego más rápida en tenis?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿En qué deporte se usa un "caddy"?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién es el máximo anotador en la historia de la selección de Brasil?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Cuál es la duración de un partido de rugby?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿En qué país se originó el yoga?', NULL);
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Quién fue el primer entrenador en ganar la Champions League con tres clubes diferentes?', NULL);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES 
(181, 1, N'Tenis', 1),
(181, 2, N'Fútbol', 0),
(181, 3, N'Baloncesto', 0),
(181, 4, N'handball', 0),
(182, 1, N'Fútbol', 1),
(182, 2, N'Golf', 0),
(182, 3, N'Esquí', 0),
(182, 4, N'Natación', 0),
(183, 1, N'Tenis', 1),
(183, 2, N'Fútbol', 0),
(183, 3, N'Ciclismo', 0),
(183, 4, N'Rugby', 0),
(184, 1, N'Baloncesto', 1),
(184, 2, N'Fútbol', 0),
(184, 3, N'Voleibol', 0),
(184, 4, N'Bádminton', 0),
(185, 1, N'Natación', 1),
(185, 2, N'Fútbol', 0),
(185, 3, N'Rugby', 0),
(185, 4, N'Ciclismo', 0),
(186, 1, N'Atletismo', 1),
(186, 2, N'Natación', 0),
(186, 3, N'Esquí', 0),
(186, 4, N'Bádminton', 0),
(187, 1, N'Fútbol', 1),
(187, 2, N'Cricket', 0),
(187, 3, N'Rugby', 0),
(187, 4, N'Tenis', 0),
(188, 1, N'Gimnasia', 1),
(188, 2, N'Fútbol', 0),
(188, 3, N'Natación', 0),
(188, 4, N'Ciclismo', 0),
(189, 1, N'Baloncesto', 1),
(189, 2, N'Fútbol', 0),
(189, 3, N'Voleibol', 0),
(189, 4, N'Tenis', 0),
(190, 1, N'Fútbol', 1),
(190, 2, N'Golf', 0),
(190, 3, N'Tenis', 0),
(190, 4, N'Natación', 0),
(191, 1, N'Fútbol', 1),
(191, 2, N'Bádminton', 0),
(191, 3, N'Baloncesto', 0),
(191, 4, N'Tenis', 0),
(192, 1, N'Boxeo', 1),
(192, 2, N'Ciclismo', 0),
(192, 3, N'Natación', 0),
(192, 4, N'Voleibol', 0),
(193, 1, N'Fútbol', 1),
(193, 2, N'Tenis', 0),
(193, 3, N'Rugby', 0),
(193, 4, N'Ciclismo', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES 
(191, 1, N'Rugby', 1),
(191, 2, N'Baloncesto', 0),
(191, 3, N'Fútbol', 0),
(191, 4, N'Bádminton', 0),

(192, 1, N'Hockey sobre hielo', 1),
(192, 2, N'Fútbol', 0),
(192, 3, N'Baloncesto', 0),
(192, 4, N'Natación', 0),

(193, 1, N'Atletismo', 1),
(193, 2, N'Ciclismo', 0),
(193, 3, N'Natación', 0),
(193, 4, N'Fútbol', 0),

(194, 1, N'Fútbol', 1),
(194, 2, N'Golf', 0),
(194, 3, N'Esquí', 0),
(194, 4, N'Natación', 0),

(195, 1, N'Tenis', 1),
(195, 2, N'Fútbol', 0),
(195, 3, N'Ciclismo', 0),
(195, 4, N'Rugby', 0),

(196, 1, N'Baloncesto', 1),
(196, 2, N'Fútbol', 0),
(196, 3, N'Voleibol', 0),
(196, 4, N'Bádminton', 0),

(197, 1, N'Natación', 1),
(197, 2, N'Fútbol', 0),
(197, 3, N'Rugby', 0),
(197, 4, N'Ciclismo', 0),

(198, 1, N'Atletismo', 1),
(198, 2, N'Natación', 0),
(198, 3, N'Esquí', 0),
(198, 4, N'Bádminton', 0),

(199, 1, N'Fútbol', 1),
(199, 2, N'Cricket', 0),
(199, 3, N'Rugby', 0),
(199, 4, N'Tenis', 0),

(200, 1, N'Gimnasia', 1),
(200, 2, N'Fútbol', 0),
(200, 3, N'Natación', 0),
(200, 4, N'Ciclismo', 0),

(201, 1, N'Baloncesto', 1),
(201, 2, N'Fútbol', 0),
(201, 3, N'Voleibol', 0),
(201, 4, N'Tenis', 0),

(202, 1, N'Fútbol', 1),
(202, 2, N'Golf', 0),
(202, 3, N'Tenis', 0),
(202, 4, N'Natación', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES 
(203, 1, N'Fútbol', 1),
(203, 2, N'Bádminton', 0),
(203, 3, N'Baloncesto', 0),
(203, 4, N'Tenis', 0),

(204, 1, N'Boxeo', 1),
(204, 2, N'Ciclismo', 0),
(204, 3, N'Natación', 0),
(204, 4, N'Voleibol', 0),

(205, 1, N'Fútbol', 1),
(205, 2, N'Tenis', 0),
(205, 3, N'Rugby', 0),
(205, 4, N'Ciclismo', 0),

(206, 1, N'Rugby', 1),
(206, 2, N'Baloncesto', 0),
(206, 3, N'Fútbol', 0),
(206, 4, N'Bádminton', 0),

(207, 1, N'Hockey sobre hielo', 1),
(207, 2, N'Fútbol', 0),
(207, 3, N'Baloncesto', 0),
(207, 4, N'Natación', 0),

(208, 1, N'Atletismo', 1),
(208, 2, N'Ciclismo', 0),
(208, 3, N'Natación', 0),
(208, 4, N'Fútbol', 0);

/*
Queries GPT:
Teniendo en cuenta esto:
[dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto])
Elimina IdPregunta de los siguientes inserts

Teniendo en cuenta esto:
[dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto])
Elimina IdRespuesta y Foto de los siguientes inserts

Teniendo en cuenta esto: [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
Empezando por X, reemplaza IdPregunta y cada cuatro respuestas sumarle 1 a los siguientes inserts
*/

-- Robo 6: Lo mismo que el 3 pero con economia (what)

/* Robo 7
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] NOT NULL,
	[IdPregunta] [int] NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](255) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](255) NULL, [Sacarlo]

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Macroeconomía', N'foto_macroeconomia.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Microeconomía', N'foto_microeconomia.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Finanzas Personales', N'foto_finanzas_personales.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Finanzas Corporativas', N'foto_finanzas_corporativas.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Mercados Financieros', N'foto_mercados_financieros.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (6, N'Banca y Servicios Financieros', N'foto_banca_servicios.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (7, N'Economía Internacional', N'foto_economia_internacional.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (8, N'Política Económica', N'foto_politica_economica.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (9, N'Historia Económica', N'foto_historia_economica.png')
Estos boludos copiaron cualquier categoria y pusieron preguntas normales, hay que ver cual es cual
*/

INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál es la capital de Francia?', N'paris.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Cuál es el río más largo del mundo?', N'nilo.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿En qué continente se encuentra el Monte Everest?', N'everest.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿En qué año comenzó la Segunda Guerra Mundial?', N'ww2.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿Quién fue el primer presidente de Estados Unidos?', N'washington.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué civilización construyó las pirámides de Egipto?', N'piramides.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el elemento químico más abundante en la Tierra?', N'oxigeno.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Cuál es la velocidad de la luz?', N'luz.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué teoría propuso Charles Darwin?', N'darwin.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál es la capital de Australia?', N'australia.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Cuál es el desierto más grande del mundo?', N'desierto.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué país tiene la mayor cantidad de islas?', N'islas.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Quién fue el primer emperador de Roma?', N'roma.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿En qué año cayó Constantinopla?', N'constantinopla.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Cuál fue la dinastía gobernante en China durante la construcción de la Gran Muralla?', N'gran_muralla.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el planeta más cercano al sol?', N'mercurio.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué órgano del cuerpo humano consume más energía?', N'cerebro.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué partícula subatómica tiene carga negativa?', N'electron.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál es el país más grande del mundo?', N'rusia.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Cuál es la montaña más alta de América?', N'aconcagua.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué país tiene la mayor población del mundo?', N'china.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Quién fue el descubridor de América?', N'colon.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿En qué año se firmó la Declaración de Independencia de los Estados Unidos?', N'declaracion_independencia.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Qué líder político fue asesinado el 22 de noviembre de 1963?', N'kennedy.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el metal más ligero?', N'litio.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué fenómeno natural es medido por la escala de Richter?', N'richter.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué gas es más abundante en la atmósfera terrestre?', N'nitrogeno.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, N'¿Cuál es el océano más grande del mundo?', N'oceano.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 2, N'¿Qué país se conoce como la tierra de los mil lagos?', N'finlandia.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 3, N'¿Qué río atraviesa la ciudad de Londres?', N'tamesis.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, N'¿Quién fue el primer hombre en caminar en la luna?', N'neil_armstrong.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 2, N'¿En qué país tuvo lugar la Revolución Industrial?', N'revolucion_industrial.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 3, N'¿Quién pintó la Mona Lisa?', N'monalisa.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, N'¿Cuál es el compuesto químico del agua?', N'agua.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 2, N'¿Qué planeta es conocido como el planeta rojo?', N'marte.png');
INSERT INTO [dbo].[Preguntas] ([IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 3, N'¿Qué científico desarrolló la teoría de la relatividad?', N'einstein.png');

GO
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta])
VALUES 
(208, 1, N'París', 1),
(208, 2, N'Londres', 0),
(208, 3, N'Roma', 0),
(208, 4, N'Berlín', 0),

(209, 1, N'Amazonas', 0),
(209, 2, N'Nilo', 1),
(209, 3, N'Yangtsé', 0),
(209, 4, N'Misisipi', 0),

(210, 1, N'Asia', 1),
(210, 2, N'África', 0),
(210, 3, N'Europa', 0),
(210, 4, N'América', 0),

(211, 1, N'1935', 0),
(211, 2, N'1939', 1),
(211, 3, N'1941', 0),
(211, 4, N'1945', 0),

(212, 1, N'George Washington', 1),
(212, 2, N'Abraham Lincoln', 0),
(212, 3, N'Thomas Jefferson', 0),
(212, 4, N'John Adams', 0),

(213, 1, N'Romanos', 0),
(213, 2, N'Griegos', 0),
(213, 3, N'Egipcios', 1),
(213, 4, N'Persas', 0),

(214, 1, N'Oxígeno', 1),
(214, 2, N'Hidrógeno', 0),
(214, 3, N'Carbono', 0),
(214, 4, N'Nitrógeno', 0),

(215, 1, N'299,792 km/s', 1),
(215, 2, N'150,000 km/s', 0),
(215, 3, N'1,080 millones km/h', 0),
(215, 4, N'300,000 km/h', 0),

(216, 1, N'Teoría de la evolución', 1),
(216, 2, N'Teoría del Big Bang', 0),
(216, 3, N'Teoría de la relatividad', 0),
(216, 4, N'Teoría de la gravedad', 0),

(217, 1, N'Sídney', 0),
(217, 2, N'Canberra', 1),
(217, 3, N'Melbourne', 0),
(217, 4, N'Brisbane', 0),

(218, 1, N'Sahara', 0),
(218, 2, N'Antártida', 1),
(218, 3, N'Gobi', 0),
(218, 4, N'Kalahari', 0),

(219, 1, N'Indonesia', 0),
(219, 2, N'Suecia', 1),
(219, 3, N'Japón', 0),
(219, 4, N'Filipinas', 0),

(220, 1, N'Julio César', 0),
(220, 2, N'Augusto', 1),
(220, 3, N'Nerón', 0),
(220, 4, N'Trajano', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (221, 1, N'1204', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (221, 2, N'1453', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (221, 3, N'1492', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (221, 4, N'1526', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (222, 1, N'Dinastía Ming', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (222, 2, N'Dinastía Qin', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (222, 3, N'Dinastía Han', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (222, 4, N'Dinastía Tang', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (223, 1, N'Venus', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (223, 2, N'Marte', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (223, 3, N'Tierra', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (223, 4, N'Mercurio', 1);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (224, 1, N'Corazón', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (224, 2, N'Cerebro', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (224, 3, N'Pulmones', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (224, 4, N'Hígado', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (225, 1, N'Protones', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (225, 2, N'Neutrones', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (225, 3, N'Electrones', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (225, 4, N'Quarks', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (226, 1, N'China', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (226, 2, N'Rusia', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (226, 3, N'Canadá', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (226, 4, N'Estados Unidos', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (227, 1, N'Monte Everest', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (227, 2, N'Monte Aconcagua', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (227, 3, N'Monte Kilimanjaro', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (227, 4, N'Monte McKinley', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (228, 1, N'India', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (228, 2, N'China', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (228, 3, N'Estados Unidos', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (228, 4, N'Indonesia', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (229, 1, N'Cristóbal Colón', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (229, 2, N'Americo Vespucio', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (229, 3, N'Fernando de Magallanes', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (229, 4, N'Juan Sebastián Elcano', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (230, 1, N'1776', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (230, 2, N'1783', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (230, 3, N'1773', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (230, 4, N'1789', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (231, 1, N'Martin Luther King Jr.', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (231, 2, N'Mahatma Gandhi', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (231, 3, N'John F. Kennedy', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (231, 4, N'Robert Kennedy', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (232, 1, N'Aluminio', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (232, 2, N'Litio', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (232, 3, N'Titanio', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (232, 4, N'Helio', 0);
GO
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (233, 1, N'Tsunamis', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (233, 2, N'Terremotos', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (233, 3, N'Erupciones volcánicas', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (233, 4, N'Huracanes', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (234, 1, N'Oxígeno', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (234, 2, N'Hidrógeno', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (234, 3, N'Nitrógeno', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (234, 4, N'Dióxido de carbono', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (235, 1, N'Océano Atlántico', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (235, 2, N'Océano Índico', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (235, 3, N'Océano Pacífico', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (235, 4, N'Océano Ártico', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (236, 1, N'Noruega', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (236, 2, N'Finlandia', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (236, 3, N'Suecia', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (236, 4, N'Canadá', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (237, 1, N'Sena', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (237, 2, N'Tíber', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (237, 3, N'Támesis', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (237, 4, N'Rin', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (238, 1, N'Neil Armstrong', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (238, 2, N'Buzz Aldrin', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (238, 3, N'Yuri Gagarin', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (238, 4, N'Michael Collins', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (239, 1, N'Alemania', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (239, 2, N'Francia', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (239, 3, N'Reino Unido', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (239, 4, N'Estados Unidos', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (240, 1, N'Leonardo da Vinci', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (240, 2, N'Michelangelo', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (240, 3, N'Rafael', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (240, 4, N'Donatello', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (241, 1, N'CO2', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (241, 2, N'O2', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (241, 3, N'H2O', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (241, 4, N'NaCl', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (242, 1, N'Júpiter', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (242, 2, N'Marte', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (242, 3, N'Saturno', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (242, 4, N'Neptuno', 0);

INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (243, 1, N'Isaac Newton', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (243, 2, N'Albert Einstein', 1);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (243, 3, N'Galileo Galilei', 0);
INSERT INTO [dbo].[Respuestas] ([IdPregunta], [Opcion], [Contenido], [Correcta]) VALUES (243, 4, N'Nikola Tesla', 0);

/* Robo 5
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](50) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](100) NOT NULL, [Sacarlo]

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'C', N'Categoria1.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'G', N'Categoria2.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'H', N'Categoria3.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'M', N'Categoria4.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'S', N'Categoria5.jpg')
Averiguar que carajo significa esto

INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (1, N'Fácil')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (2, N'Intermedio')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (3, N'Difícil')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (4, N'Muy Difícil') [Sacarlo]
*/

INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, 1, N'¿Cuál es la capital de Francia?', N'capital_francia.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 4, 1, N'¿Cuánto es 2 + 2?', N'suma_basica.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 5, 1, N'¿Qué planeta es conocido como el "Planeta Rojo"?', N'planeta_rojo.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 2, 2, N'¿Cuál es el símbolo químico del oro?', N'simbolo_oro.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 4, 2, N'¿Cuál es la raíz cuadrada de 81?', N'raiz_cuadrada.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 5, 2, N'¿Qué elemento tiene el número atómico 6?', N'numero_atomico.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 3, 3, N'¿Quién escribió "Cien años de soledad"?', N'escritor.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 2, 3, N'¿Cuál es el elemento químico con el símbolo "Hg"?', N'simbolo_quimico.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (12, 4, 3, N'¿Qué matemático es conocido por el Teorema de Fermat?', N'teorema_fermat.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 1, 4, N'¿Cuál es el nombre completo del teorema de Pitágoras?', N'teorema_pitagoras.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 3, 4, N'¿Cuál es la capital histórica del Imperio Bizantino?', N'capital_bizantino.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 5, 4, N'¿Qué científico propuso la teoría de la relatividad general?', N'relatividad_general.jpg')

INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (16, 4, 1, N'Berlín', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (17, 4, 2, N'Madrid', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (18, 4, 3, N'París', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (19, 4, 4, N'Lisboa', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (24, 10, 1, N'Gabriel García Márquez', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (25, 10, 2, N'Mario Vargas Llosa', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (26, 10, 3, N'Julio Cortázar', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (27, 10, 4, N'Pablo Neruda', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (28, 8, 1, N'7', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (29, 8, 2, N'8', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (30, 8, 3, N'9', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (31, 8, 4, N'10', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (32, 9, 1, N'Oxígeno', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (33, 9, 2, N'Carbono', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (34, 9, 3, N'Nitrógeno', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (35, 9, 4, N'Hidrógeno', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (36, 12, 1, N'Teorema de Fermat', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (37, 12, 2, N'Teorema de Pitágoras', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (38, 12, 3, N'Teorema de Euclides', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (39, 12, 4, N'Teorema de Descartes', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (40, 13, 1, N'Teorema de Pitágoras', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (41, 13, 2, N'Teorema de Aristóteles', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (42, 13, 3, N'Teorema de Euclides', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (43, 13, 4, N'Teorema de Descartes', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (44, 14, 1, N'Constantinopla', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (45, 14, 2, N'Roma', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (46, 14, 3, N'Alejandría', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (47, 14, 4, N'Cartago', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (48, 15, 1, N'Isaac Newton', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (49, 15, 2, N'Albert Einstein', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (50, 15, 3, N'Galileo Galilei', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (51, 15, 4, N'Niels Bohr', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (52, 6, 1, N'Mercurio', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (53, 6, 2, N'Venus', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (54, 6, 3, N'Marte', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (55, 6, 4, N'Júpiter', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (56, 11, 1, N'Plata', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (57, 11, 2, N'Mercurio', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (58, 11, 3, N'Oro', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (59, 11, 4, N'Cobre', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (60, 7, 1, N'Au', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (61, 7, 2, N'Ag', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (62, 7, 3, N'Pb', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (63, 7, 4, N'Fe', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (64, 5, 1, N'3', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (65, 5, 2, N'4', 1, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (66, 5, 3, N'5', 0, N'foto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (67, 5, 4, N'6', 0, N'foto.jpg')

/* Robo 2
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](300) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](50) NULL, [Sacarlo]

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'DEPORTES', NULL)
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'TECNOLOGIA', NULL)
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'GEOGRAFIA', NULL)
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'CULTURA GENERAL', NULL)
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'ARGENTINA', NULL)
Verificar cual va para cada categoria
*/
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (41, 1, 1, N'¿Qué deporte se juega con una pelota redonda y se juega en una cancha con dos arcos en cada extremo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (42, 1, 1, N'¿Cuál es el deporte en el que se usan raquetas para golpear una pelota blanca sobre una red?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (43, 1, 1, N'¿En qué deporte se utiliza una tabla y una ola para deslizarse sobre el agua?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (44, 1, 1, N'¿Cómo se llama el deporte que se juega en una cancha de hielo con patines y un disco negro llamado "puck"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (45, 1, 1, N'¿Qué deporte se juega en una cancha con dos aros y se pueden hacer puntos lanzando la pelota al aro?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (46, 1, 2, N'¿En qué deporte se usan guantes para lanzar un objeto llamado balón a un área de anotación en forma de aro?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (47, 1, 2, N'¿Cuál es el nombre del torneo de fútbol internacional que se celebra cada cuatro años y en el que compiten selecciones de todo el mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (48, 1, 2, N'¿En qué deporte se utilizan bicicletas de carretera para competir en distancias largas, como en el Tour de Francia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (49, 1, 2, N'¿Qué atleta es conocido por haber ganado la medalla de oro en los 100 metros lisos en tres Juegos Olímpicos consecutivos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (50, 1, 2, N'¿En qué deporte se lleva a cabo el evento conocido como "Maratón", con una distancia de 42.195 kilómetros?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (51, 1, 3, N'¿Qué país ha ganado más medallas de oro en los Juegos Olímpicos de verano en la historia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (52, 1, 3, N'¿Cómo se llama el torneo de tenis más prestigioso que se celebra en Wimbledon y es conocido por su césped?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (53, 1, 3, N'¿Qué deporte es conocido por su campeonato "Super Bowl" y se juega en Estados Unidos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (54, 1, 3, N'¿En qué deporte se realiza la competición conocida como "Ironman", que incluye una combinación de natación, ciclismo y carrera?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (55, 1, 3, N'¿Qué jugador de tenis tiene el récord de más títulos de Grand Slam en la era abierta?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (56, 2, 1, N'¿Qué dispositivo se usa para navegar por Internet y hacer llamadas, y generalmente se lleva en el bolsillo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (57, 2, 1, N'¿Qué nombre recibe el programa informático que se utiliza para crear y editar documentos de texto?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (58, 2, 1, N'¿Cuál es el nombre del navegador web desarrollado por Google?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (59, 2, 1, N'¿Qué tipo de memoria se utiliza en las computadoras para almacenar datos temporales mientras se trabaja con aplicaciones?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (60, 2, 1, N'¿Qué es un "mouse" en el contexto de la informática?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (61, 2, 2, N'¿Qué es un "sistema operativo" y puedes dar un ejemplo de uno?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (62, 2, 2, N'¿Cuál es el nombre del chip que actúa como el cerebro de la computadora y realiza las operaciones básicas de procesamiento?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (63, 2, 2, N'¿Qué es la "nube" en el contexto de almacenamiento de datos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (64, 2, 2, N'¿Qué tipo de dispositivo es un "smartwatch" y qué función principal cumple?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (65, 2, 2, N'¿Qué es una "IP" en redes de computadoras y cuál es su propósito?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (66, 2, 3, N'¿Qué innovador algoritmo fue creado por Tim Berners-Lee en 1989 y es la base de la web moderna?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (67, 2, 3, N'¿Cuál es el nombre del protocolo de comunicación utilizado para enviar correos electrónicos a través de Internet?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (68, 2, 3, N'¿Qué empresa de tecnología es conocida por su sistema operativo de código abierto llamado Android?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (69, 2, 3, N'¿Qué es la "computación cuántica" y cómo se diferencia de la computación clásica?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (70, 2, 3, N'¿Cuál es el propósito principal del protocolo de red "TCP/IP" y por qué es fundamental para la comunicación en Internet?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (71, 3, 1, N'¿Cuál es el continente más grande en términos de superficie terrestre?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (72, 3, 1, N'¿En qué país se encuentra la Torre Eiffel?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (73, 3, 1, N'¿Qué océano se encuentra al este de los Estados Unidos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (74, 3, 1, N'¿Cuál es el río más largo del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (75, 3, 1, N'¿Qué país tiene la mayor cantidad de islas en el mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (76, 3, 2, N'¿Cuál es el nombre del desierto más grande del mundo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (77, 3, 2, N'¿Qué país es conocido por su forma de bota en el mapa?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (78, 3, 2, N'¿En qué continente se encuentra el desierto de Atacama?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (79, 3, 2, N'¿Cuál es la capital de Australia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (80, 3, 2, N'¿Qué cadena montañosa se extiende a lo largo de la frontera entre Europa y Asia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (81, 3, 3, N'¿Cuál es el país más pequeño del mundo en términos de superficie?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (82, 3, 3, N'¿Qué isla es conocida por ser la más grande del mundo en términos de superficie terrestre?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (83, 3, 3, N'¿Cuál es el punto más bajo en la superficie terrestre?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (84, 3, 3, N'¿Qué gran río de África fluye desde el Lago Victoria hasta el Mediterráneo?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (85, 3, 3, N'¿En qué país se encuentra la región de los Montes de la Luna, una importante fuente de agua para el continente africano?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (86, 4, 1, N'¿Cuál es el nombre del famoso ratón de dibujos animados creado por Walt Disney?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (87, 4, 1, N'¿Qué instrumento musical tiene 88 teclas y se toca con las manos?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (88, 4, 1, N'¿En qué ciudad se encuentra el Coliseo, un antiguo anfiteatro romano?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (89, 4, 1, N'¿Qué libro famoso fue escrito por J.K. Rowling y trata sobre un joven mago?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (90, 4, 1, N'¿Qué día se celebra el Día de Navidad?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (91, 4, 2, N'¿Cuál es el nombre del pintor español famoso por sus obras como "Guernica" y "Las Meninas"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (92, 4, 2, N'¿Qué película ganó el Óscar a la Mejor Película en 1994 y tiene como protagonista a Tom Hanks?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (93, 4, 2, N'¿Qué famoso autor inglés escribió "Orgullo y Prejuicio"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (94, 4, 2, N'¿Cuál es el nombre del festival de cine celebrado anualmente en Cannes, Francia?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (95, 4, 2, N'¿Qué tipo de danza es conocida por sus pasos rápidos y el uso de tacones altos, a menudo asociado con la cultura española?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (96, 4, 3, N'¿Cuál es el nombre del filósofo griego que escribió "La República"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (97, 4, 3, N'¿Qué novela de Gabriel García Márquez es conocida por su estilo de realismo mágico y cuenta la historia de la familia Buendía?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (98, 4, 3, N'¿Qué pintor del Renacimiento es conocido por su obra "El nacimiento de Venus"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (99, 4, 3, N'¿Qué compositor austriaco es conocido por sus sinfonías y conciertos, y es famoso por su obra "La Novena Sinfonía"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (100, 4, 3, N'¿Qué novelista ruso escribió "Crimen y castigo"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (101, 5, 1, N'¿Cuál es la capital de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (102, 5, 1, N'¿Qué famoso baile tradicional es originario de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (103, 5, 1, N'¿Qué famosa figura del fútbol argentino es conocida por su apodo "El Diego"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (104, 5, 1, N'¿Cuál es la moneda oficial de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (105, 5, 1, N'¿Qué gran catarata, una de las más grandes del mundo, se encuentra en la frontera entre Argentina y Brasil?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (106, 5, 2, N'¿En qué año se proclamó la independencia de Argentina?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (107, 5, 2, N'¿Qué equipo de fútbol argentino ha ganado la mayor cantidad de títulos de la Copa Libertadores?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (108, 5, 2, N'¿Cuál es el nombre del presidente argentino que implementó la política de "Peronismo" en la década de 1940?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (109, 5, 2, N'¿Qué región de Argentina es conocida por su producción de vino, especialmente en la provincia de Mendoza?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (110, 5, 2, N'¿Qué famoso escritor argentino es conocido por sus obras como "Ficciones" y "El Aleph"?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (111, 5, 3, N'¿Qué evento internacional de música y arte se celebra anualmente en Buenos Aires y es conocido por su enfoque en el tango?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (112, 5, 3, N'¿Cuál es el nombre del famoso escritor argentino que recibió el Premio Nobel de Literatura en 1970?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (113, 5, 3, N'¿Qué figura política argentina es conocida por haber sido la primera mujer en ocupar la presidencia del país?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (114, 5, 3, N'¿Qué región de Argentina, ubicada en el sur del país, es famosa por su impresionante paisaje de glaciares y montañas?', NULL)
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (115, 5, 3, N'¿Cuál es el nombre del famoso río que atraviesa la ciudad de Buenos Aires?', NULL)


INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1, 41, 1, N'Baloncesto', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (2, 41, 2, N'Fútbol', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (3, 41, 3, N'Rugby', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (4, 41, 4, N'Hockey', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (5, 42, 1, N'Badminton', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (6, 42, 2, N'Tenis', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (7, 42, 3, N'Ping-pong', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (8, 42, 4, N'Squash', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (9, 43, 1, N'Windsurf', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (10, 43, 2, N'Kitesurf', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (11, 43, 3, N'Surf', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (12, 43, 4, N'Paddleboard', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (13, 44, 1, N'Hockey sobre hielo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (14, 44, 2, N'Curling', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (15, 44, 3, N'Patinaje artístico', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (16, 44, 4, N'Esquí', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (17, 45, 1, N'Baloncesto', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (18, 45, 2, N'Fútbol sala', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (19, 45, 3, N'Volleyball', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (20, 45, 4, N'Handbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (21, 46, 1, N'Baloncesto', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (22, 46, 2, N'Voleibol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (23, 46, 3, N'Hockey', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (24, 46, 4, N'Fútbol', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (25, 47, 1, N'Copa América', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (26, 47, 2, N'Eurocopa', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (27, 47, 3, N'Copa Mundial de la FIFA', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (28, 47, 4, N'Copa Libertadores', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (29, 48, 1, N'Ciclismo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (30, 48, 2, N'Motociclismo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (31, 48, 3, N'Atletismo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (32, 48, 4, N'Triatlón', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (33, 49, 1, N'Carl Lewis', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (34, 49, 2, N'Usain Bolt', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (35, 49, 3, N'Michael Johnson', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (36, 49, 4, N'Tyson Gay', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (37, 50, 1, N'Natación', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (38, 50, 2, N'Ciclismo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (39, 50, 3, N'Atletismo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (40, 50, 4, N'Remo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (41, 51, 1, N'China', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (42, 51, 2, N'Rusia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (43, 51, 3, N'Estados Unidos', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (44, 51, 4, N'Reino Unido', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (45, 52, 1, N'Roland Garros', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (46, 52, 2, N'US Open', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (47, 52, 3, N'Wimbledon', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (48, 52, 4, N'Australian Open', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (49, 53, 1, N'Baloncesto', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (50, 53, 2, N'Fútbol americano', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (51, 53, 3, N'Baseball', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (52, 53, 4, N'Hockey sobre hielo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (53, 54, 1, N'Triatlón', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (54, 54, 2, N'Atletismo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (55, 54, 3, N'Ciclismo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (56, 54, 4, N'Natación', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (57, 55, 1, N'Roger Federer', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (58, 55, 2, N'Rafael Nadal', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (59, 55, 3, N'Novak Djokovic', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (60, 55, 4, N'Rod Laver', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (61, 56, 1, N'Computadora portátil', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (62, 56, 2, N'Teléfono móvil', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (63, 56, 3, N'Televisor', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (64, 56, 4, N'Consola de videojuegos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (65, 57, 1, N'Navegador web', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (66, 57, 2, N'Procesador de texto', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (67, 57, 3, N'Hoja de cálculo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (68, 57, 4, N'Editor de imágenes', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (69, 58, 1, N'Firefox', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (70, 58, 2, N'Safari', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (71, 58, 3, N'Google Chrome', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (72, 58, 4, N'Edge', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (73, 59, 1, N'ROM', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (74, 59, 2, N'HDD', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (75, 59, 3, N'RAM', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (76, 59, 4, N'SSD', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (77, 60, 1, N'Un dispositivo de entrada que se usa para controlar el cursor', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (78, 60, 2, N'Un tipo de impresora', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (79, 60, 3, N'Un componente del monitor', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (80, 60, 4, N'Un cable de conexión', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (81, 61, 1, N'Un software que gestiona el hardware y el software, ejemplos: Windows, macOS, Linux', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (82, 61, 2, N'Un tipo de procesador', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (83, 61, 3, N'Un programa de edición de video', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (84, 61, 4, N'Un dispositivo de almacenamiento', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (85, 62, 1, N'GPU', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (86, 62, 2, N'RAM', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (87, 62, 3, N'CPU', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (88, 62, 4, N'SSD', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (89, 63, 1, N'Un servicio de almacenamiento en servidores remotos accesibles a través de Internet', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (90, 63, 2, N'Un tipo de memoria externa', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (91, 63, 3, N'Un protocolo de comunicación', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (92, 63, 4, N'Un sistema de backup local', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (93, 64, 1, N'Un reloj inteligente que realiza funciones de seguimiento de salud y notificaciones', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (94, 64, 2, N'Un dispositivo de almacenamiento', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (95, 64, 3, N'Una cámara digital', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (96, 64, 4, N'Un auricular Bluetooth', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (97, 65, 1, N'Un protocolo de red para transferir archivos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (98, 65, 2, N'Una dirección única que identifica cada dispositivo en una red', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (99, 65, 3, N'Un tipo de servidor', 0, NULL)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (100, 65, 4, N'Un programa antivirus', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (101, 66, 1, N'HTTP', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (102, 66, 2, N'HTML', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (103, 66, 3, N'CSS', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (104, 66, 4, N'JavaScript', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (105, 67, 1, N'FTP', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (106, 67, 2, N'HTTP', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (107, 67, 3, N'SMTP', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (108, 67, 4, N'POP3', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (109, 68, 1, N'Apple', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (110, 68, 2, N'Microsoft', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (111, 68, 3, N'Google', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (112, 68, 4, N'IBM', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (113, 69, 1, N'Un tipo de computación que utiliza principios de la mecánica cuántica para procesar información', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (114, 69, 2, N'Un sistema operativo especializado', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (115, 69, 3, N'Una forma de almacenamiento de datos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (116, 69, 4, N'Un algoritmo de búsqueda en Internet', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (117, 70, 1, N'Gestionar la conexión entre redes locales', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (118, 70, 2, N'Facilitar la transmisión de datos entre diferentes redes, asegurando la entrega correcta y el orden', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (119, 70, 3, N'Almacenar datos en servidores externos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (120, 70, 4, N'Proteger datos mediante encriptación', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (121, 71, 1, N'África', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (122, 71, 2, N'Europa', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (123, 71, 3, N'Asia', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (124, 71, 4, N'América del Norte', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (125, 72, 1, N'Francia', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (126, 72, 2, N'Italia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (127, 72, 3, N'Alemania', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (128, 72, 4, N'España', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (129, 73, 1, N'Tierra', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (130, 73, 2, N'Venus', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (131, 73, 3, N'Marte', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (132, 73, 4, N'Júpiter', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (133, 74, 1, N'Alpes', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (134, 74, 2, N'Himalaya', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (135, 74, 3, N'Andes', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (136, 74, 4, N'Apalaches', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (137, 75, 1, N'Egipto', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (138, 75, 2, N'Sudán', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (139, 75, 3, N'Etiopía', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (140, 75, 4, N'Nigeria', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (141, 76, 1, N'Berlín', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (142, 76, 2, N'París', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (143, 76, 3, N'Londres', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (144, 76, 4, N'Madrid', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (145, 77, 1, N'Báltico', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (146, 77, 2, N'Mediterráneo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (147, 77, 3, N'Mar del Norte', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (148, 77, 4, N'Caribe', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (149, 78, 1, N'Tiburón blanco', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (150, 78, 2, N'Ballena azul', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (151, 78, 3, N'Delfín', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (152, 78, 4, N'Atún', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (153, 79, 1, N'Isla de Pascua', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (154, 79, 2, N'Cuba', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (155, 79, 3, N'Madagascar', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (156, 79, 4, N'Sicilia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (157, 80, 1, N'Canadá', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (158, 80, 2, N'México', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (159, 80, 3, N'Argentina', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (160, 80, 4, N'Chile', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (161, 81, 1, N'Groenlandia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (162, 81, 2, N'Islandia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (163, 81, 3, N'Svalbard', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (164, 81, 4, N'Aleutianas', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (165, 82, 1, N'Marruecos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (166, 82, 2, N'Libia', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (167, 82, 3, N'Argelia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (168, 82, 4, N'Túnez', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (169, 83, 1, N'Danubio', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (170, 83, 2, N'Rin', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (171, 83, 3, N'Elba', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (172, 83, 4, N'Po', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (173, 84, 1, N'Río Nilo', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (174, 84, 2, N'Río Amazonas', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (175, 84, 3, N'Río Yangtsé', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (176, 84, 4, N'Río Mississippi', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (177, 85, 1, N'Ucrania', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (178, 85, 2, N'Polonia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (179, 85, 3, N'Hungría', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (180, 85, 4, N'Eslovaquia', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (181, 86, 1, N'Donald Duck', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (182, 86, 2, N'Mickey Mouse', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (183, 86, 3, N'Goofy', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (184, 86, 4, N'Pluto', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (185, 87, 1, N'Guitarra', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (186, 87, 2, N'Piano', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (187, 87, 3, N'Violín', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (188, 87, 4, N'Acordeón', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (189, 88, 1, N'Roma', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (190, 88, 2, N'Atenas', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (191, 88, 3, N'París', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (192, 88, 4, N'Londres', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (193, 89, 1, N'El señor de los anillos', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (194, 89, 2, N'Harry Potter', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (195, 89, 3, N'Crónicas de Narnia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (196, 89, 4, N'El hobbit', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (197, 90, 1, N'24 de diciembre', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (198, 90, 2, N'25 de diciembre', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (199, 90, 3, N'31 de diciembre', 0, NULL)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (200, 90, 4, N'1 de enero', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (201, 91, 1, N'Salvador Dalí', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (202, 91, 2, N'Francisco Goya', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (203, 91, 3, N'Pablo Picasso', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (204, 91, 4, N'El Greco', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (205, 92, 1, N'Titanic', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (206, 92, 2, N'Forrest Gump', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (207, 92, 3, N'Pulp Fiction', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (208, 92, 4, N'The Shawshank Redemption', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (209, 93, 1, N'Emily Brontë', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (210, 93, 2, N'Charles Dickens', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (211, 93, 3, N'Jane Austen', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (212, 93, 4, N'William Shakespeare', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (213, 94, 1, N'Festival de Cine de Venecia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (214, 94, 2, N'Festival de Cine de Berlín', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (215, 94, 3, N'Festival de Cine de Cannes', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (216, 94, 4, N'Festival de Cine de Toronto', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (217, 95, 1, N'Salsa', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (218, 95, 2, N'Tango', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (219, 95, 3, N'Flamenco', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (220, 95, 4, N'Rumba', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (221, 96, 1, N'Aristóteles', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (222, 96, 2, N'Sócrates', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (223, 96, 3, N'Platón', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (224, 96, 4, N'Epicuro', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (225, 97, 1, N'El otoño del patriarca', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (226, 97, 2, N'El amor en los tiempos del cólera', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (227, 97, 3, N'Cien años de soledad', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (228, 97, 4, N'Crónica de una muerte anunciada', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (229, 98, 1, N'Leonardo da Vinci', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (230, 98, 2, N'Sandro Botticelli', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (231, 98, 3, N'Rafael', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (232, 98, 4, N'Miguel Ángel', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (233, 99, 1, N'Johannes Brahms', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (234, 99, 2, N'Ludwig van Beethoven', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (235, 99, 3, N'Franz Schubert', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (236, 99, 4, N'Wolfgang Amadeus Mozart', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (237, 100, 1, N'León Tolstói', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (238, 100, 2, N'Iván Turguéniev', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (239, 100, 3, N'Fiódor Dostoyevski', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (240, 100, 4, N'Anton Chéjov', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (241, 101, 1, N'Buenos Aires', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (242, 101, 2, N'Córdoba', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (243, 101, 3, N'Mendoza', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (244, 101, 4, N'Rosario', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (245, 102, 1, N'Salsa', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (246, 102, 2, N'Tango', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (247, 102, 3, N'Flamenco', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (248, 102, 4, N'Samba', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (249, 103, 1, N'Lionel Messi', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (250, 103, 2, N'Gabriel Batistuta', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (251, 103, 3, N'Diego Maradona', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (252, 103, 4, N'Juan Román Riquelme', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (253, 104, 1, N'Real', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (254, 104, 2, N'Peso argentino', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (255, 104, 3, N'Dólar', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (256, 104, 4, N'Euro', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (257, 105, 1, N'Cataratas del Iguazú', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (258, 105, 2, N'Cataratas del Niágara', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (259, 105, 3, N'Cataratas del Victoria', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (260, 105, 4, N'Cataratas del Ángel', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (261, 106, 1, N'1810', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (262, 106, 2, N'1816', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (263, 106, 3, N'1820', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (264, 106, 4, N'1825', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (265, 107, 1, N'River Plate', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (266, 107, 2, N'Boca Juniors', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (267, 107, 3, N'Racing Club', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (268, 107, 4, N'Independiente', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (269, 108, 1, N'Raúl Alfonsín', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (270, 108, 2, N'Juan Domingo Perón', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (271, 108, 3, N'Carlos Menem', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (272, 108, 4, N'Mauricio Macri', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (273, 109, 1, N'Patagonia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (274, 109, 2, N'Cuyo', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (275, 109, 3, N'Mesopotamia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (276, 109, 4, N'Pampa', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (277, 110, 1, N'Julio Cortázar', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (278, 110, 2, N'Jorge Luis Borges', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (279, 110, 3, N'Gabriel García Márquez', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (280, 110, 4, N'Ricardo Piglia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (281, 111, 1, N'Pampas', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (282, 111, 2, N'Patagonia', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (283, 111, 3, N'Gran Chaco', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (284, 111, 4, N'Mesopotamia', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (285, 112, 1, N'Jorge Luis Borges', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (286, 112, 2, N'Julio Cortázar', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (287, 112, 3, N'Adolfo Bioy Casares', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (288, 112, 4, N'Pablo Neruda', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (289, 113, 1, N'Ernesto Guevara', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (290, 113, 2, N'Fidel Castro', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (291, 113, 3, N'Simón Bolívar', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (292, 113, 4, N'Hugo Chávez', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (293, 114, 1, N'Talampaya', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (294, 114, 2, N'Valle de la Luna', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (295, 114, 3, N'Cañón del Río Atuel', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (296, 114, 4, N'Parque Nacional Ischigualasto', 1, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (297, 115, 1, N'Clorindo Testa', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (298, 115, 2, N'César Pelli', 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (299, 115, 3, N'Santiago Calatrava', 1, NULL)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (300, 115, 4, N'Mario Roberto Álvarez', 0, NULL)
