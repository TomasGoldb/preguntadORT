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

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult ConfigurarJuego()
    {
        Juego.InicializarJuego();
        ViewBag.categorias = Juego.ObtenerCategorias();
        ViewBag.dificultades = Juego.ObtenerDificultades();
        return View();
    }

    [HttpPost] IActionResult VerificarRespuesta(int idPregunta, int idRespuesta){
        ViewBag.IsCorrect = Juego.VerificarRespuesta(idPregunta, idRespuesta);
        ViewBag.Respuesta = BD.ObtenerRespuestas(idPregunta);
        return View("Respuesta");
    }

    [HttpPost]  
    public ViewResult Index(string direccion) {  
        if (ModelState.IsValid) {  
            MailMessage mail = new MailMessage();  
            mail.To.Add(direccion);  
            mail.From = new MailAddress("nehuentados.noresponder@gmail.com");  
            mail.Subject = "No responder";  //Probablemente se pueda cambiar
            string Body = "Holi, esto es un test";  //Probablemente se pueda cambiar
            mail.Body = Body;  //Probablemente se pueda cambiar
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();  
            smtp.Host = "smtp.gmail.com";  
            smtp.Port = 587;  
            smtp.UseDefaultCredentials = false;  
            smtp.Credentials = new System.Net.NetworkCredential("nehuentados.noresponder@gmail.com", "NehueGod123"); // Enter seders User name and password  
            smtp.EnableSsl = true;  
            smtp.Send(mail);
            return View("Index");  
        } else {  
            return View();  
        }  
    }  
    
    public IActionResult Comenzar(string username, int dificultad, int categoria)
    {
        Juego.CargarPartida(username, dificultad, categoria);
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
