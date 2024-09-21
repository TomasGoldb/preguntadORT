namespace preguntadORT.Models;

public class JugadorEnJuego
{
    public int IdUsuario {get;set;}
    public string Nombre {get;set;}
    public string FotoPerfil {get;set;}
    public string PersonajesConseguidos {get;set;}
    public int CantidadParaCorona {get;set;}

    public JugadorEnJuego(){}
    public JugadorEnJuego(string nombre, string fotoPerfil, string personajesConseguidos, int cantidadParaCorona){
        Nombre=nombre;
        FotoPerfil=fotoPerfil;
        PersonajesConseguidos=personajesConseguidos;
        CantidadParaCorona=cantidadParaCorona;
    }
}