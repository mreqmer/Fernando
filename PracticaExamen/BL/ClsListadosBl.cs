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



        public static List<ClsDepartamento> ObtieneDepartamentosBl()
        {
            List < ClsDepartamento > departamentos = ClsListados.ListaDepartamentos;

            return departamentos;

        }

        public static List<ClsPersona> PersonaDepartamentosBl(int id)
        {
            List<ClsPersona> personasDepartamento = ClsListados.listadoPersonasPorDepartamento(id);
            return personasDepartamento;
        }

        public static ClsDepartamento findDepartamentoBl(int idDept)
        {
            

            return ClsListados.findDepartamento(idDept);
        }

        public static void borraDepartamentoBl(int idDept)
        {
            ClsListados.borraDepartamento(idDept);

        }


    }
}
