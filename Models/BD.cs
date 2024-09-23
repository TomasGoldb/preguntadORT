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
    public static Categorias ObtenerIDDeCategoria(string nombreCategoria){
        Categorias cat= new Categorias();
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ObtenerIDDeCategoria";
            cat= db.QueryFirstOrDefault<Categorias>(sql,new { Nombre = nombreCategoria });
        }
        return cat;
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
    public static Partida ObtenerPartidaPorID(int id){
        Partida partida= new Partida();
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ObtenerPartidaXID";
            partida= db.QueryFirstOrDefault<Partida>(sql,new { IdPartida = id });
        }
        return partida;
    }
    public static Usuario ObtenerUsuarioPorID(int id){
        Usuario user= new Usuario();
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_SeleccionarUsuarioXID";
            user= db.QueryFirstOrDefault<Usuario>(sql,new { IdUSuario = id });
        }
        return user;
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
            //que esl stored procedure las devuelva ordenadas al azar
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
            respuestas = db.Query<Respuestas>(sql, new { PreguntaId = preguntaId }).ToList();
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
    public static void ReiniciarCantidadCorona(int idJugador){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ReiniciarCantidadCorona";
            db.Execute(sql, new {IdJugador=idJugador});
        }
    }
    public static void AgregarCantidadCorona(int idJugador){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_SumarCantidadCorona";
            db.Execute(sql, new {IdJugador=idJugador});
        }
    }

    public static void EmpezarPartida(int idPartida){
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_IniciarPartida";
            db.Execute(sql, new {IdPartida=idPartida});
        }
    }

    public static void UpdateFotoPerfil(Usuario objeto){
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = $"UPDATE usuario SET FotoPerfil='{objeto.FotoPerfil}' where mail='{objeto.GetMail()}'";
            db.Execute(sql);
        }
    }
    public static int CrearPartida(int TiempoMax, bool GirarNehuen, Dificultades Dificultad){
        Partida partida = new Partida();
        int idNuevaPartida;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql = "SP_CrearPartida";
            db.Execute(sql, new {@TiempoMax = TiempoMax, @GirarNehuen = Convert.ToInt32(GirarNehuen), @IdDificultad = Dificultad.IdDificultad});
            sql = "SP_ObtenerIdPartida";
            partida = db.QueryFirstOrDefault<Partida>(sql);
        }
        idNuevaPartida = partida.IdPartida;
        return idNuevaPartida;
    }
    public static int CrearJugador(Jugador jugador){
        Partida partida = new Partida();
        Jugador jugadorBD = new Jugador();
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SP_ObtenerPartidaXID";
            partida = db.QueryFirstOrDefault<Partida>(sql, new {@IdPartida = jugador.IdPartida});
            if(partida != null){
                sql = "SP_ObtenerJugador";
                jugadorBD = db.QueryFirstOrDefault<Jugador>(sql, new {@JugadorID = jugador.IdJugador, @PartidaID = jugador.IdPartida});
            }
            if (partida == null) 
            {
                return 1;
            }
            else if(jugadorBD != null){
                return 2;
            }
            else
            {
                sql = "SP_CrearJugador";
                db.Execute(sql, new {@IdUsuario = jugador.IdUsuario, @IdJugador = jugador.IdJugador, @IdPartida = jugador.IdPartida});
                return 0; 
            }
        }        
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