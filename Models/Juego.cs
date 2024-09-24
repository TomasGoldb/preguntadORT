namespace preguntadORT.Models;

static class Juego
{
    private static string username {get; set;}
    private static List<Preguntas> preguntas {get; set;}
    private static List<Respuestas> respuestas {get; set;}
    private static int dificultad {get;set;} =1;
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
        List<Preguntas> preguntas = BD.ObtenerPreguntas(dificultad, idCategoria);
        return preguntas[0];
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
    public static int CrearPartida(int tiempoMax, bool girarNehuen, Dificultades dificultad)
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
        Console.WriteLine(jugadores.Count);
        foreach (JugadorEnJuego jug in jugadores){
            Console.WriteLine(jug.IdUsuario==Sesion.userActual.idUsuario);
            if(jug.IdUsuario==Sesion.userActual.idUsuario){
                Console.WriteLine("a");
                string[] personajes = Juego.ObtenerJugadoresEnJuego(Sesion.jugadorActual.IdJugador)[0].PersonajesConseguidos.Split("/");
                for(int i=0;i<6;i++){
                    if(Juego.ObtenerPregunta(idPregunta).IdCategoria==i+1){
                        personajes[i]="1";
                        Console.WriteLine(string.Join("/",personajes));
                        BD.ActualizarPersonajes(Sesion.jugadorActual.IdJugador, string.Join("/",personajes));
                    }
                }
            }
        }
    }
    public static void Setear3Coronas(){
        BD.SetearEn3Corona(Sesion.jugadorActual.IdJugador);
    }
}