namespace preguntadORT.Models;

public class Partida
{
    public int IdPartida{get; set;}
    public int TiempoMax{get;set;}
    public bool GirarNehuen{get;set;}
    public int IdDificultad{get;set;}
    public bool PartidaIniciada{get;set;}

    public Partida(){}
    public Partida(int idPartida, int tiempoMax, bool girarNehuen, int idDificultad)
    {
        IdPartida = idPartida;
        TiempoMax = tiempoMax;
        GirarNehuen = girarNehuen;
        IdDificultad = idDificultad;
    }
}