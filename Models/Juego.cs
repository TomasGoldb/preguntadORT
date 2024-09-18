namespace preguntadORT.Models;

static class Juego
{
    private static string username {get; set;}
    private static int cantidadPreguntasCorrectas {get; set;}
    private static List<Preguntas> preguntas {get; set;}
    private static List<Respuestas> respuestas {get; set;}
    private static int dificultad {get;set;}
    private static bool[] personajesConseguidos = new bool[6];

    public static void InicializarJuego(/* string usuario */)
    {
        username = String.Empty; // Aca se puede referenciar a la BD
        cantidadPreguntasCorrectas = 0;
        for(int i = 0; i < personajesConseguidos.Length; i++) personajesConseguidos[i] = false;
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
    public static void CargarPartida(int categoria)
    {
        preguntas = BD.ObtenerPreguntas(dificultad, categoria);
    }
    public static Preguntas ObtenerProximaPregunta(int idCategoria)
    {
        Random rd = new Random();
        int idPregunta = 10; //rd.Next(0, preguntitas.Count);
        Preguntas pregunta = preguntas[idPregunta];
        return pregunta;
    }
    public static List<Respuestas> ObtenerProximasRespuestas(int idPregunta)
    {
        return BD.ObtenerRespuestas(idPregunta);
    }
    public static bool VerificarRespuesta(int idPregunta, int opcion)
    {
        bool correcta = respuestas[opcion].Correcta;
        if (correcta)
        {
            cantidadPreguntasCorrectas++;
            /*Mas tarde vemos lo de los personajes*/
        }
        preguntas.Remove(preguntas[idPregunta]);
        return correcta;
    }
<<<<<<< HEAD
=======
    public static List<JugadorEnJuego> ObtenerJugadoresEnJuego(int idPartida){
        return BD.SeleccionarJugadorEnJuego(0);
    }
    public static int CrearPartida(int IdPartida, int TiempoMax, bool GirarNehuen, Dificultades Dificultad){
        int idNuevaPartida;
        Partida NuevaPartida = new Partida(IdPartida, TiempoMax, GirarNehuen, Dificultad);
        idNuevaPartida = BD.CrearPartida(NuevaPartida);
        return idNuevaPartida;
    }
>>>>>>> 50f3506f931eaf7e71d6afabbd0fa7e31a7fb720
}