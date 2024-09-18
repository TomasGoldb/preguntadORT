namespace preguntadORT.Models;

public class Jugador
{
    public int IdUsuario {get;set;}
    public int IdJugador {get;set;}
    public int IdPartida {get;set;}
    public string PersonajesConseguidos {get;set;}
    public bool[] PersonajesConseguidosCasteado {get;set;} = new bool[5];
    public int CantidadParaCorona {get;set;}

    public Jugador(){}
    public Jugador(int idUsuario, int idJugador, int idPartida){
        IdUsuario=idUsuario;
        IdPartida=idPartida;
        IdJugador=idJugador;
    }
}
