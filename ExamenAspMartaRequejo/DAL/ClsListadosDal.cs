using ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ClsListadosDal
    {
        private static List<ClsMision> listaMisionesDal = cargaMisionesDal();
        private static List<ClsCandidato> listaCandidatosDal = cargaCandidatosDal();

        /// <summary>
        /// devuelve una lista de misiones
        /// </summary>
        /// <returns>ClsMision</returns>
        public static List<ClsMision> cargaMisionesDal()
        {

             List<ClsMision> ListadoMisiones = new List<ClsMision>
            {
                new ClsMision(1, "Recoger impuestos en el restaurante", 1),
                new ClsMision(2, "Hacer una oferta que no podran rechazar al sindicato de basura", 2),
                new ClsMision(3, "Supervisar obras en new Jersey", 3),
                new ClsMision(4, "Convencer al Concejal de urbanismo para conseguir favores", 4),
                new ClsMision(5, "Encargarse del Concejal de urbanismo que no se dejo convencer", 5),
                new ClsMision(6, "Llevar la contabilidad del Bada Bing", 1)
            };
            return ListadoMisiones;   
        }

        /// <summary>
        /// devuelve una lista de Candidatos
        /// </summary>
        /// <returns>ClsCandidatos</returns>
        public static List<ClsCandidato> cargaCandidatosDal()
        {
            List<ClsCandidato> ListadoCandidato = new List<ClsCandidato> {
                new ClsCandidato(1, "vito", "Gordon", "Pizza StreeT", "USA", "111222333", new DateTime(1961, 11, 10) , 2500),
                new ClsCandidato(2, "Cristopher", "Moltisanti", "Pizza StreeT", "USA", "111222333", new DateTime(2000, 11, 10) , 1500),
                new ClsCandidato(3, "Braulia", "Galliani", "Pizza StreeT", "USA", "111222333", new DateTime(1998, 11, 10) , 1500),
                new ClsCandidato(4, "Paulia", "Gualtieri", "Pizza StreeT", "USA", "111222333", new DateTime(1968, 11, 10) , 2000),
                new ClsCandidato(5, "Estas", "Caputo", "Pizza StreeT", "Italia", "111222333", new DateTime(1973, 11, 10) , 20000),
                new ClsCandidato(6, "Toco", "L'Acordeone", "Pizza StreeT", "Italia", "111222333", new DateTime(1984, 11, 10) , 14000),
                new ClsCandidato(7, "Luigi", "Peperoni", "Pizza StreeT", "Italia", "111222333", new DateTime(1999, 11, 10) , 16000),
                new ClsCandidato(8, "Silvio", "Dante", "Pizza StreeT", "USA", "111222333", new DateTime(1966, 11, 10) , 2000),

            };
            return ListadoCandidato;
        }
    
        /// <summary>
        /// Devuelve la lista de las misiones de la dal
        /// </summary>
        /// <returns></returns>
        public static List<ClsMision> obtieneListaMisionesDal()
        {
            return listaMisionesDal;
        }

        /// <summary>
        /// Devuelve la lista de los candidatos de la dal
        /// </summary>
        /// <returns></returns>
        public static List<ClsCandidato> obtieneListaCandidatosDal()
        {
            return listaCandidatosDal;
        }
        
    }
}
