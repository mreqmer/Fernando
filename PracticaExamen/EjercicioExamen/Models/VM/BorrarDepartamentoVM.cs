using BL;
using ENT;

namespace EjercicioExamen.Models.VM
{
    public class BorrarDepartamentoVM : ClsDepartamento
    {

        private int cantidadPersonasDepartamento;


        public int CantidadPersonasDepartamento { get { return cantidadPersonasDepartamento; } set { cantidadPersonasDepartamento = value; } }
    
        public BorrarDepartamentoVM(int id) {
            base.IdDepartamento = id;
            base.NombreDept = ClsListadosBl.findDepartamentoBl(id).NombreDept;
            cantidadPersonasDepartamento = ClsListadosBl.PersonaDepartamentosBl(id).Count;
        }

    }
}
