using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ENT;

namespace DAL
{
    public class ClsManejadoraDAL
    {
        /// <summary>
        /// Busca un candidato en la lista de candidatos
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static ClsCandidato ObtieneCandidatoDal(int id)
        {
            List<ClsCandidato> listaCandidatos = ClsListadosDAL.obtieneListaCandidatosDal();
            ClsCandidato candidato = listaCandidatos.Find(p => p.Id == id);

            return candidato;
        }

    }
}
