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

        public IActionResult Index()
        {
            PersonasConDepartamentosVM vm = new PersonasConDepartamentosVM();

            return View(vm);
        }

        public IActionResult Borrado(int id)
        {
            BorrarDepartamentoVM vm = new BorrarDepartamentoVM(id);
            
            return View(vm);
        }

        [HttpPost]
        public IActionResult BorradoConfirmado(int id)
        {
            BorrarDepartamentoVM vm = new BorrarDepartamentoVM(id);
            ClsListadosBl.borraDepartamentoBl(id);
            ViewBag.Mensaje = "Se ha eliminado con éxito el departamento";

            return View( "Borrado", vm);
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
