namespace preguntadORT.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;
class BD
{
    private static string _connectionString = @"Server = A-PHZ2-CIDI-23; Database = PreguntadORT; Trusted_Connection = True;";
    public static List<Categorias> ObtenerCategorias(){
        List<Categorias> categoriasList;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ListarCategorias";
            categoriasList = db.Query<Categorias>(sql).ToList();
        }
        return categoriasList;
    }
    public static Categorias ObtenerCategoriaPorID(int id){
        Categorias categoria= new Categorias();
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_CategoriaPorID";
            categoria= db.QueryFirstOrDefault<Categorias>(sql,new { idCategoria = id });
        }
        return categoria;
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
    public static List<Respuestas> ObtenerRespuestas(int preguntaId){
        List<Respuestas> respuestas;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ListarRespuestas";
            respuestas = db.Query<Respuestas>(sql, new { IdPregunta = preguntaId }).ToList();
        }
        return respuestas;
    }
    public static List<Usuario> Seleccionar(string sql){
        List<Usuario> listaUsuario = new List<Usuario>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            listaUsuario = db.Query<Usuario>(sql).ToList();
        }
        return listaUsuario;
    }
    public static List<Usuario> SeleccionarXMail(string sql, string mail){
        List<Usuario> listaUsuario = new List<Usuario>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            listaUsuario = db.Query<Usuario>(sql, new{ @Mail = mail }).ToList();
        }
        return listaUsuario;
    }
        public static void CrearUsuario(Usuario objeto){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_CrearUsuario";
            db.Execute(sql, new {contra=objeto.GetContrasena(),nick=objeto.Nick,nombre=objeto.Nombre,mail=objeto.GetMail()});
        }
    }

    public static void UpdateFotoPerfil(Usuario objeto){
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = $"UPDATE usuario SET FotoPerfil='{objeto.FotoPerfil}' where mail='{objeto.GetMail()}'";
            db.Execute(sql);
        }
    }
    public static int CrearPartida(Partida NuevaPartida){
        int idNuevaPartida;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SP_CrearPartida";
            idNuevaPartida = db.QueryFirst(sql, new {@IdPartida = NuevaPartida.IdPartida, @TiempoMax = NuevaPartida.TiempoMax, @GirarNehuen = Convert.ToInt32(NuevaPartida.GirarNehuen), @Dificultad = NuevaPartida.Dificultad.IdDificultad});
        }
        return idNuevaPartida; 
    } 
    public static List<JugadorEnJuego> SeleccionarJugadorEnJuego(int idPartida){
        List<JugadorEnJuego> listaJug = new List<JugadorEnJuego>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="SP_ListarUsuariosXIDPartida";
            listaJug = db.Query<JugadorEnJuego>(sql, new{ @IdPartida = idPartida }).ToList();
        }
        return listaJug;
    }
}