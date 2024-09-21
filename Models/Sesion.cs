namespace preguntadORT.Models{

    public static class Sesion{
        public static bool EstaLogeado =false;
        public static bool EstaJugando = false;
        public static Usuario userActual = new Usuario();
        public static Jugador jugadorActual = new Jugador();


        public static void SetearSesion(Usuario use){
            userActual=use;
            EstaLogeado=true;
        }

        public static void LogOut(){
            EstaLogeado=false;
            userActual=new Usuario();
        }

        public static void SetearJugador(Jugador jugador){
            jugadorActual = jugador;
            EstaJugando=true;
        }

        public static void BorrarJugador(){
            EstaJugando=false;
            jugadorActual=new Jugador();
        }

    }
}