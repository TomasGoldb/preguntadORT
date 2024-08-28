namespace preguntadORT.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;
class BD
{
    private static string _connectionString = "";
    public static List<Categorias> ObtenerCategorias(){
        List<Categorias> categoriasList;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ListarCategorias";
            categoriasList = db.Query<Categorias>(sql).ToList();
        }
        return categoriasList;
    }
    public static List<Dificultades> ObtenerDificultades(){
        List<Dificultades> dificultadesList;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ListarDificultades";
            dificultadesList = db.Query<Dificultades>(sql).ToList();
        }
        return dificultadesList;
    }
    public static List<Preguntas> ObtenerPreguntas(int dificultad, int categoria){
        List<Preguntas> preguntasList;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ListarPreguntas";
            preguntasList = db.Query<Preguntas>(sql, new { dificultadId = dificultad, categoriaId = categoria }).ToList();
        }
        return preguntasList;
    }
    public static List<Respuestas> ObtenerRespuestas(List<Preguntas> preguntas){
        List<Respuestas> respuestasList = new List<Respuestas>();
        foreach (Preguntas preg in preguntas)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "SP_ListarRespuestas";
                respuestasList.AddRange(db.Query<Respuestas>(sql, new { preg.IdPregunta }).ToList());
            }
        }
        return respuestasList;
    }
}