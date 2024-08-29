namespace preguntadORT.Models;

static class Juego
{
    private static string Username {get; set;}
    private static int PuntajeActual {get; set;}
    private static int CantidadPreguntasCorrectas {get; set;}
    private static List<Preguntas> Preguntas {get; set;}
    private static List<Respuestas> Respuestas {get; set;}

    public static void InicializarJuego()
    {
        Username = String.Empty;
        PuntajeActual = 0;
        CantidadPreguntasCorrectas = 0;
    }
    public static List<Categorias> ObtenerCategorias()
    {
        List<Categorias> categorias = BD.ObtenerCategorias();
        return categorias;
    }
    public static List<Dificultades> ObtenerDificultades()
    {
        List<Dificultades> dificultades = BD.ObtenerDificultades();
        return dificultades;
    }
    public static void CargarPartida(string username, int dificultad, int categoria)
    {
        Preguntas = BD.ObtenerPreguntas(dificultad, categoria);
    }
    public static Preguntas ObtenerProximaPregunta()
    {
        Random rd = new Random();
        int idPregunta = rd.Next(0, Preguntas.Count);
        Preguntas pregunta = Preguntas[idPregunta];
        return pregunta;
    }
    public static List<Respuestas> ObtenerProximasRespuestas(int idPregunta)
    {
        Preguntas pregunta = Preguntas[idPregunta];
        return BD.ObtenerRespuestas(pregunta);
    }
}