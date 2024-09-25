namespace preguntadORT.Models;

static class Juego
{
    private static string username {get; set;}
    private static List<Preguntas> preguntas {get; set;}
    private static List<Respuestas> respuestas {get; set;}
    private static bool[] personajesConseguidos = new bool[6];

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
    public static Preguntas ObtenerProximaPregunta(int idCategoria)
    {
        Random rd = new Random();
        int dificultad = Sesion.partidaActual.IdDificultad;
        if (dificultad == 4) dificultad = rd.Next(1, 4);
        Preguntas pregunta = BD.ObtenerPreguntas(dificultad, idCategoria)[0];
        return pregunta;
    }
    public static List<Respuestas> ObtenerProximasRespuestas(int idPregunta)
    {
        return BD.ObtenerRespuestas(idPregunta);
    }
    public static bool VerificarRespuesta(int idPregunta, int opcion)
    {
        List<Respuestas> respuestas = BD.ObtenerRespuestas(idPregunta);
        bool correcta = respuestas[opcion].Correcta;
        return correcta;
    }
    public static List<JugadorEnJuego> ObtenerJugadoresEnJuego(int idPartida){
        return BD.SeleccionarJugadorEnJuego(idPartida);
    }
    public static int CrearJugador(Jugador jugador){
        int output = BD.CrearJugador(jugador);
        return output;
    }
    public static int CrearPartida(int tiempoMax, bool girarNehuen, int dificultad)
    {
        int idPartida = BD.CrearPartida(tiempoMax, girarNehuen, dificultad);
        return idPartida;
    }
    public static Usuario UsuarioPorID(int id){
            return BD.ObtenerUsuarioPorID(id);
        }
    public static void EmpezarPartida(int IdPartida){
        BD.EmpezarPartida(IdPartida);
    }

    public static int ObtenerCantidadParaCorona(int idPartida){
        List<JugadorEnJuego> jugadores= BD.SeleccionarJugadorEnJuego(idPartida);
        foreach(JugadorEnJuego jug in jugadores){
            if (jug.IdUsuario==Sesion.userActual.idUsuario){
                return jug.CantidadParaCorona;
            }
        }
        return -1;
    }
    public static Partida ObtenerPartidaPorID(int idPartida){
        return BD.ObtenerPartidaPorID(idPartida);
    }
    public static void SumarParaCorona(int idJugador){
        BD.AgregarCantidadCorona(idJugador);
    }
    public static void ReiniciarCorona(int idJugador){
        BD.ReiniciarCantidadCorona(idJugador);
    }
    public static bool PartidaGanada(){
        List<JugadorEnJuego> part=Juego.ObtenerJugadoresEnJuego(Sesion.partidaActual.IdPartida);
        bool seGano=false;
        foreach(JugadorEnJuego j in part){
            if(j.PersonajesConseguidos=="1/1/1/1/1/1"){
                seGano=true;
            }
        }
        return seGano;
    }
    public static Preguntas ObtenerPregunta(int idPregunta){
        return BD.ObtenerPreguntaPorID(idPregunta);
    }
    public static void AgregarPersonaje(int idPregunta){
        List<JugadorEnJuego> jugadores = Juego.ObtenerJugadoresEnJuego(Sesion.jugadorActual.IdJugador);
        string[] personajes = new string[6];
        foreach (JugadorEnJuego jug in jugadores){
            if(jug.IdUsuario==Sesion.userActual.idUsuario){
                personajes = Juego.ObtenerJugadoresEnJuego(Sesion.jugadorActual.IdJugador)[0].PersonajesConseguidos.Split("/");
                personajes[Juego.ObtenerPregunta(idPregunta).IdCategoria]="1";
            }
             BD.ActualizarPersonajes(Sesion.jugadorActual.IdJugador, string.Join("/",personajes));
        }
       
    }
    public static void Setear3Coronas(){
        BD.SetearEn3Corona(Sesion.jugadorActual.IdJugador);
    }
    public static Categorias ObtenerCategoriaPorNombre(string nombre){
        return  BD.ObtenerIDDeCategoria(nombre);
        
    }
}