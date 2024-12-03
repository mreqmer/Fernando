using BL;
using ENT;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace EjercicioASP.Controllers.API
{
    [Route("api/[controller]")]
    [ApiController]
    public class PersonasController : ControllerBase
    {
        // GET: api/<PesonasController>
        [HttpGet]
        public List<ClsPersona>  Get()
        {
            List<ClsPersona> listaPersonas = new List<ClsPersona>();
            listaPersonas = ClsListadosBL.ObtieneListadoPersonasBl();

            return listaPersonas;
        }

        // GET api/<PesonasController>/5
        [HttpGet("{id}")]
        public ClsPersona Get(int id)
        {
            ClsPersona p = ClsManejadoraBL.findPersonaBl(id);
            
            return p;
        }

        // POST api/<PesonasController>
        [HttpPost]
        public void Post([FromBody] string value)
        {

            ClsPersona p = new ClsPersona();

        }

        // PUT api/<PesonasController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<PesonasController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
