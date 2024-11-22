using ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ClsManejadoraDal
    {
        /// <summary>
        /// Devuelve una mision según su id
        /// Pre: el id debe ser mayor a 0
        /// </summary>
        /// <param name="idMision"></param>
        /// <returns></returns>
        public static ClsMision obtieneMisionDal(int idMision) {
            List<ClsMision> list = ClsListadosDal.obtieneListaMisionesDal();
            ClsMision mision = new ClsMision();

            mision = list.Find(m => m.IdMision == idMision);

            return mision;
        }

        /// <summary>
        /// devuelve un candidato
        /// Pre: el id debe ser mayyor a 0
        /// </summary>
        /// <param name="idCandidato"></param>
        /// <returns></returns>
        public static ClsCandidato obtieneCandidatoDal(int idCandidato)
        {
            List<ClsCandidato> list = ClsListadosDal.obtieneListaCandidatosDal();
            ClsCandidato candidato = new ClsCandidato();

            candidato = list.Find(c => c.IdCandidato == idCandidato);
            return candidato;
        }

    }
}
