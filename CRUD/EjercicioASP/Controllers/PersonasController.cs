using ENT;
using BL;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using DAL;

namespace EjercicioASP.Controllers
{
    public class PersonasController : Controller
    {
        // GET: PersonasController
        public ActionResult Index()
        {
            List<ClsPersona> personas = new List<ClsPersona>();

            try
            {
                personas = ClsListadosBL.ObtieneListadoPersonasBl();
            }
            catch (Exception ex)
            {
                //TODO error
            }
            
            return View(personas);
        }

        // GET: PersonasController/Details/5
        public ActionResult Details(int id)
        {
            ClsPersona p = new ClsPersona();
            try
            {
                p = ClsManejadoraBL.findPersonaBl(id);
            }
            catch (Exception ex)
            {
                //TODO error
            }

            return View(p);
        }

        // GET: PersonasController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: PersonasController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: PersonasController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: PersonasController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: PersonasController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: PersonasController/Delete/5
        [HttpPost]
        [ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeletePost(int id)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View("Delete");
            }
        }
    }
}
