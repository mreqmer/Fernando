using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using ENT;

namespace BL
{
    public class ClsListadosBL
    {
        /// <summary>
        /// Obtiene una lista de candidatos de la bl
        /// </summary>
        /// <returns></returns>
        public List<ClsCandidato> ObtieneListaCandidatosBl()
        {
            return ClsListadosDAL.obtieneListaCandidatosDal();
        }

    }
}
