using ENT;
using BL;

namespace EjercicioExamen.Models.VM
{
    public class PersonasConDepartamentosVM
    {

        private List<PersonasDepartamentos> personasConDepartamentos;

        public List<PersonasDepartamentos> PersonasConDepartamentos { get { return personasConDepartamentos; } set{ personasConDepartamentos = value;  }}

        public PersonasConDepartamentosVM()
        {

            personasConDepartamentos = obtienePersonasConDepartamentos();
        }

        private List<PersonasDepartamentos> obtienePersonasConDepartamentos()
        {
            List<ClsDepartamento> departamentos = new List<ClsDepartamento>();
            List<PersonasDepartamentos> lista = new List<PersonasDepartamentos>();
            departamentos = ClsListadosBl.ObtieneDepartamentosBl();
            
            foreach (ClsDepartamento dep in departamentos)
            {
                PersonasDepartamentos pd = new PersonasDepartamentos(dep);
                lista.Add(pd);
            }
            return lista;
        }

         

    }
}
