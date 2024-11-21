using BL;
using ENT;

namespace EjercicioExamen.Models
{
    public class PersonasDepartamentos : ClsDepartamento
    {

        private List<ClsPersona> personasPorDepartamento;

        public List<ClsPersona> PersonasPorDepartamento { get { return personasPorDepartamento; } set { personasPorDepartamento = value; } }

        public PersonasDepartamentos(ClsDepartamento d){

            base.IdDepartamento = d.IdDepartamento;
            base.NombreDept = d.NombreDept;
            personasPorDepartamento = ClsListadosBl.PersonaDepartamentosBl(d.IdDepartamento);

        }

       
    }
}
