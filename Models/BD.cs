namespace preguntadORT.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;
class BD
{
    private static string _connectionString = @"Server = localhost; Database = PreguntadORT; Trusted_Connection = True;";
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
    public static Respuestas ObtenerRespuestas(int preguntaId){
        Respuestas respuesta;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ListarRespuestas";
            respuesta = db.QueryFirstOrDefault<Respuestas>(sql, new { IdPregunta = preguntaId });
        }
        return respuesta;
    }
}