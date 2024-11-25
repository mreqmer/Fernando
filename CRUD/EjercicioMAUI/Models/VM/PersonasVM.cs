using BL;
using Ejercicio01.Models.VM.Utils;
using ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjercicioMAUI.Models.VM 
{
    public class PersonasVM : clsVMBase
    {
        private List<ClsPersona> listadoPersonas = new List<ClsPersona>();
        //TODO los botones de borrar, editar y nuevo

         public List<ClsPersona> ListadoPersonas { get { return listadoPersonas; }}

        public PersonasVM() {
            listadoPersonas = ClsListadosBL.ObtieneListadoPersonasBl();
        }

    }
}
