using DAL;
using ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ClsManejadoraBL
    {
        /// <summary>
        /// Obtiene un candidato que lo ofrece la bl
        /// Lo busca por el id
        /// pre: el id debe ser mayor de 0
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static ClsCandidato ObtieneCandidatoBl(int id)
        {
            return ClsManejadoraDAL.ObtieneCandidatoDal(id);
        }

    }
}
