namespace preguntadORT.Models;

public class Respuestas
{
    public int IdRespuesta {get;set;}
    public int IdPregunta {get;set;}
    public int Opcion{get;set;}
    public string Contenido {get;set;}
    public bool Correcta {get;set;}

    public Respuestas(){}
    public Respuestas(int idpregunta, int idrespuesta, int opcion, string contenido, bool correcta){
        IdPregunta=idpregunta;
        IdRespuesta=idrespuesta;
        Opcion=opcion;
        Contenido=contenido;
        Correcta=correcta;
    }
}
