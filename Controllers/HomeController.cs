using System;  
using System.Collections.Generic;  
using System.Linq;  
using System.Net.Mail;  
using System.Web;
using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using preguntadORT.Models;

namespace preguntadORT.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private IWebHostEnvironment Environment;

    public HomeController(ILogger<HomeController> logger, IWebHostEnvironment environment)
    {
        _logger = logger;
        Environment=environment;
    }

    public IActionResult Index()
    {
        ViewBag.logeado = Sesion.EstaLogeado;
        return View();
    }
    public IActionResult Home()
    {
        return View();
    }
    
    public IActionResult ConfigurarJuego()
    {
        ViewBag.dificultades = Juego.ObtenerDificultades();
        return View();
    }

    [HttpPost] IActionResult VerificarRespuesta(int idPregunta, int opcion){
        ViewBag.IsCorrect = Juego.VerificarRespuesta(idPregunta, opcion);
        return View("Respuesta");
    }
    
    public IActionResult recuperarContrasena(){
        return View();
    }
    [HttpPost]
    public IActionResult RecuperarContrasenaMail(string direccion) 
    {
        try
        {
            using (var mail = new MailMessage())
            {
                mail.To.Add(new MailAddress(direccion));
                mail.From = new MailAddress("nehuentados.noresponder@gmail.com");
                mail.Subject = "No responder";  // Se puede cambiar
                mail.Body = "Holi, esto es un test";  // Se puede cambiar
                mail.IsBodyHtml = true;

                using (var smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new System.Net.NetworkCredential("nehuentados.noresponder@gmail.com", "NehuGod123");
                    smtp.EnableSsl = true;

                    smtp.Send(mail);
                }
            }

            return View("Index");
        }
        catch (Exception ex)
        {
            // Manejar el error y mostrar un mensaje adecuado
            ViewBag.ErrorMessage = "Hubo un problema enviando el correo: " + ex.Message;
            return View("Home"); // Asegúrate de tener una vista de error
        }
    }

    
    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(categoria);
        return View("Ruleta");
    }

    public IActionResult Jugar(int idCategoria){
        return View("Juego");
    }


    public IActionResult Pregunta(int idCategoria){
        //Categorias categoria = BD.ObtenerCategoriaPorID(idCategoria);
        //ViewBag.categoria=categoria;
        Preguntas pregunta= Juego.ObtenerProximaPregunta(idCategoria);
        ViewBag.Pregunta = pregunta;
        ViewBag.Respuestas=Juego.ObtenerProximasRespuestas(pregunta.IdPregunta);
        //ViewBag.fotoCategoria=categoria.Foto;
        return View("Pregunta");
    }

    public IActionResult CrearPartida(int tiempoMax, Dificultades dificultad, bool girarNehuen)
    {
        int idPartida = Juego.CrearPartida(tiempoMax, girarNehuen, dificultad);
        Jugador jugador = new Jugador(Sesion.userActual.idUsuario, 1, idPartida);
        Juego.CrearJugador(jugador);
        Sesion.SetearJugador(jugador);
        ViewBag.jugador = jugador;
        ViewBag.idPartida = idPartida;
        return View("SalaEspera");
    }

    public IActionResult Unirse(int codigo)
    {
        Jugador jugador = new Jugador(Sesion.userActual.idUsuario, 2, codigo);
        int idError = Juego.CrearJugador(jugador);
        ViewBag.dificultades = Juego.ObtenerDificultades();
        switch(idError)
        {
            case 0:
                Sesion.SetearJugador(jugador);
                ViewBag.jugador = jugador;
                ViewBag.idPartida = codigo;
                return View("SalaEspera");
            
            case 1:
                ViewBag.error = "El código ingresado es incorrecto.";
                return View("ConfigurarJuego");

            case 2:
                ViewBag.error = "La partida está llena.";
                return View("ConfigurarJuego");

            default:
                ViewBag.error = "Se ha producido un error.";
                return View("ConfigurarJuego");
        }
    }

    // PARTE DE LOGIN Y REGISTRO

    public IActionResult register()
    {
        ViewBag.logeado = Sesion.EstaLogeado;
        return View();
    }
    public IActionResult RegistrarUsuario(string nombre, string nick, string correo, string confirmaContra, string contra){
        ViewBag.logeado = Sesion.EstaLogeado;
        bool coincide=false;
        if (contra==confirmaContra){
            Usuario user = new Usuario(nombre,nick,contra,correo);
            List<Usuario> usuarios=BD.Seleccionar("SP_ListarUsuarios");
            foreach(Usuario usu in usuarios){
                if(usu.Nick==user.Nick||usu.GetMail()==user.GetMail()){
                    coincide=true;
                } 
            }
            if (!coincide){
                ViewBag.error="";
                BD.CrearUsuario(user);
                Sesion.SetearSesion(user);  
                return RedirectToAction("Home");
            } else{
                ViewBag.error=FormatearError("ERROR_001_YaExisteNickoMail");
                return View("register");
            }
        } else{
            ViewBag.error=FormatearError("ERROR_002_ContraNoCoincide");
            return View("register");
        }
        
    }
    public IActionResult LogearUsuario(string mail, string contra){
        ViewBag.logeado = Sesion.EstaLogeado;
        bool coincide=false;
        List<Usuario> usuarios=BD.Seleccionar("SP_ListarUsuarios");
        foreach(Usuario usu in usuarios){
            if(usu.GetMail()==mail){
                coincide=true;
            } 
        }
        if(coincide){
            if(contra==BD.SeleccionarXMail($"SP_ListarUsuariosXMail", mail)[0].GetContrasena()){
                Sesion.SetearSesion(BD.SeleccionarXMail($"SP_ListarUsuariosXMail", mail)[0]);
                ViewBag.estaLogeado=Sesion.EstaLogeado;
                ViewBag.usuario=BD.SeleccionarXMail($"SP_ListarUsuariosXMail", mail)[0];
                return RedirectToAction("Home");
            }else{
                ViewBag.error=FormatearError("ERROR_003_ContraIncorrecta");
                return View("login");
            }
        } else{
            ViewBag.error=FormatearError("ERROR_005_MailIncorrecto");
            return View("login");
        }
    }
    public IActionResult Corona(){
        ViewBag.PersonajesNombre=2;
        string[] listaFotos = {"/personajesCategorias/arte.png", "/personajesCategorias/ciencia.png", "/personajesCategorias/deportes.png", "/personajesCategorias/entretenimiento.png","/personajesCategorias/geografia.png","/personajesCategorias/historia.png"};
        ViewBag.PersonajesFoto=listaFotos;
        string [] listaNombres = {"arte","ciencia","deportes","entretenimiento","geografia","historia"};
        ViewBag.PersonajesNombres=listaNombres;
        return View("Corona");
    }
    public IActionResult PostCorona(string opcion){
        
        Preguntas pregunta= Juego.ObtenerProximaPregunta(Categorias.ObtenerCategoriaPorNombre(opcion).IdCategoria);
        ViewBag.Pregunta = pregunta;
        ViewBag.Respuestas=Juego.ObtenerProximasRespuestas(pregunta.IdPregunta);
        return View("Pregunta");
    }
    public IActionResult ActualizarFotoPerfil(IFormFile archivo){
        bool seCambio=Sesion.userActual.CambiarFoto(archivo, Environment);
        if(seCambio){
            
            return RedirectToAction("index");
        }else{
            ViewBag.error=FormatearError("ERROR_004_SinArchivo");
            return View("setearfotoperfil");
        }
        
    }
    public IActionResult login()
    {
        ViewBag.logeado = Sesion.EstaLogeado;
        return View();
    }
    public IActionResult logout(){
        ViewBag.logeado = Sesion.EstaLogeado;
        Sesion.LogOut();
        return View("Index");
    }
    public IActionResult Ruleta(Jugador jugador1, Jugador jugador2, int IdPartida){
        ViewBag.Jugador1 = jugador1;
        ViewBag.Jugador2 = jugador2;
        ViewBag.Partida = IdPartida;
        return View();
    }
    public string ObtenerPersonajesConseguidos(int idUsuario, int idPartida){
        List<JugadorEnJuego> jugadores= Juego.ObtenerJugadoresEnJuego(idPartida);
        foreach (JugadorEnJuego jug in jugadores){
            if(jug.IdUsuario==idUsuario){
                return jug.PersonajesConseguidos;
            }
        }
        return "ERROR";

    }
    [HttpGet]
    public JsonResult ObtenerNombreJugador(){
        List<JugadorEnJuego> jugadores = BD.SeleccionarJugadorEnJuego(Sesion.jugadorActual.IdPartida);
        string jugador="", jugador2="";
        jugador=BD.Seleccionar($"select * from usuario where IdUsuario={jugadores[0].IdUsuario}")[0].Nombre;
        if(jugadores.Count!=1){
        jugador2=BD.Seleccionar($"select * from usuario where IdUsuario={jugadores[1].IdUsuario}")[0].Nombre;
        }
        Console.WriteLine(jugador+" "+jugador2);
        return Json(new { jug1 = jugador, jug2= jugador2 });

    }
    private string FormatearError(string error)
    {
        Dictionary<string, string> ErroresAMensajes = new();
        ErroresAMensajes["ERROR_001_YaExisteNickoMail"] = "Ya existe un usuario con ese nick o mail.";
        ErroresAMensajes["ERROR_002_ContraNoCoincide"] = "Las contraseñas no coinciden.";
        ErroresAMensajes["ERROR_003_ContraIncorrecta"] = "La contraseña es incorrecta.";
        ErroresAMensajes["ERROR_004_SinArchivo"] = "No has ingresado ningún archivo!";
        ErroresAMensajes["ERROR_005_MailIncorrecto"] = "El mail ingresado es incorrecto.";

        string mensaje = ErroresAMensajes[error];

        return "<div class='alert alert-danger alert-dismissible' role='alert'><div>"+ mensaje + "</div>   <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
