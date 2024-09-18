namespace preguntadORT.Models;


public class Partida{
    public int IdPartida {get; set;}
    public int TiempoMax {get; set;}
    public bool GirarNehuen {get; set;}
    public Dificultades Dificultad {get; set;}
    public Partida(int _IdPartida, int _TiempoMax, bool _GirarNehuen, Dificultades _Dificultad){
        IdPartida = _IdPartida;
        TiempoMax = _TiempoMax;
        GirarNehuen = _GirarNehuen;
        Dificultad = _Dificultad;
    }
}
