using DAL;
using ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ClsManejadoraBl
    {
        /// <summary>
        /// devuelve desde la bl una mision de la lista de misiones
        /// </summary>
        /// <param name="idMision"></param>
        /// <returns></returns>
        public static ClsMision obtieneMisionBl(int idMision)
        {
            return ClsManejadoraDal.obtieneMisionDal(idMision);
        }

        /// <summary>
        /// Obtiene desde la bl  un candidato de la lista de candidatos
        /// </summary>
        /// <param name="idCandidato"></param>
        /// <returns></returns>
        public static ClsCandidato obtieneCandidatoBl(int idCandidato)
        {
            return ClsManejadoraDal.obtieneCandidatoDal(idCandidato);
        }

    }
}
