using BL;
using EjercicioExamen.Models;
using EjercicioExamen.Models.VM;
using ENT;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace EjercicioExamen.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        /// <summary>
        /// Vista de listado de misiones
        /// </summary>
        /// <returns></returns>
        public IActionResult Index()
        {
            ClsMisionesPersonasVM vm = new ClsMisionesPersonasVM();
            //MEJORA: el asp-form para que se mantenga la seleccion del select que
            //deberia ser añadiendo un atributo mision al vm y asignandolo en el constructor
            //con parametros,
            //además faltan datos que se deberian ver de cada persona
            return View(vm);
        }

        /// <summary>
        /// controlador para la lista de listado de misiones pero ahora con la mision seleccionada
        /// y las personas que pueden hacer la mision
        /// </summary>
        /// <param name="idMision"></param>
        /// <returns></returns>
        [HttpPost]
        public IActionResult Index(int idMision)
        {
            ClsMisionesPersonasVM vm = new ClsMisionesPersonasVM(idMision);
            //MEJORA: el asp-form para que se mantenga la seleccion del select que
            //deberia ser añadiendo un atributo mision al vm y asignandolo en el constructor
            //con parametros,
            //además faltan datos que se deberian ver de cada persona
            return View("Index", vm);
        }

        /// <summary>
        /// controlador para la vista de detalles de la persona
        /// </summary>
        /// <param name="idCandidato"></param>
        /// <returns></returns>
        public IActionResult Detalles(int idCandidato)
        {
            ClsCandidato c = ClsManejadoraBl.obtieneCandidatoBl(idCandidato);

            ClsPersonaDetallesVM vm = new ClsPersonaDetallesVM(c);

            //MEJORA: falta por mostrar datos de la persona, solo mostre nombre y edad
            //ya que el calculo de la edad es importante
            return View("VistaDetalles", vm);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
