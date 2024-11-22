using DAL;
using ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ClsListadosBl
    {
        /// <summary>
        /// devuelve desde la bl la lista de misiones de la bl
        /// </summary>
        /// <returns></returns>
        public static List<ClsMision> obtieneListaMisionesBl()
        {
            return ClsListadosDal.obtieneListaMisionesDal();
        }
        /// <summary>
        /// devuelve desde la bl la lista de candidatos disponibles para una mision
        /// </summary>
        /// <returns></returns>
        public static List<ClsCandidato> obtieneListaCandidatosBl(ClsMision mision)
        {
            List<ClsCandidato> listaC = ClsListadosDal.obtieneListaCandidatosDal();
            List<ClsCandidato> listaFiltrada = new List<ClsCandidato>();
            int edad;

            foreach (ClsCandidato c in listaC){
                edad = DateTime.Now.Year - c.FechaNac.Year;
                if ((mision.Dificultad == 1 || mision.Dificultad == 2)
                    && c.Pais.Equals("USA"))
                {
                    listaFiltrada.Add(c);
                }else if(mision.Dificultad == 3 && c.Pais.Equals("USA") && edad >= 40)
                {
                    listaFiltrada.Add(c);
                }else if( mision.Dificultad == 4 && c.Pais.Equals("Italia") && edad < 45)
                {
                    listaFiltrada.Add(c);
                }else if(mision.Dificultad == 5 && c.Pais.Equals("Italia") && (edad >= 45 && edad < 55))
                {
                    listaFiltrada.Add(c);
                }

            }
            return listaFiltrada;
        }
    }
}
