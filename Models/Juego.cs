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
    
}