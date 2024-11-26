using BL;
using ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjercicioMAUI.Models.VM
{
    public class VMListaPersonasDepartamento
    {
        #region Atributos

        private List<ModelPersonaDepartamento> personasConDept;

        #endregion

        #region Propiedades

        public List<ModelPersonaDepartamento> PersonasConDept { get { return personasConDept; } }

        #endregion

        #region Constructores

        public VMListaPersonasDepartamento()
        {
            personasConDept = CargarDatos();
        }

        #endregion

        /// <summary>
        /// llena la lista de personas con departamento
        /// </summary>
        /// <returns></returns>
        private List<ModelPersonaDepartamento> CargarDatos()
        {

            List<ClsPersona> personas = ClsListadosBL.ObtieneListadoPersonasBl();
            List<ClsDepartamento> departamentos = ClsListadosBL.ObtieneListadoDepartamentosBl();
            List<ModelPersonaDepartamento> p = new List<ModelPersonaDepartamento>();

            foreach (ClsPersona persona in personas)
            {
                p.Add(new ModelPersonaDepartamento(persona, departamentos));
            }

            return p;
        }
    }
}

