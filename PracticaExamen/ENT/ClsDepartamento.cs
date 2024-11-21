using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENT
{
    public class ClsDepartamento
    {
        #region Atributos
        private int idDepartamento;
        private string nombreDept;
        #endregion

        #region Propiedades
        public int IdDepartamento { get { return idDepartamento; } set { idDepartamento = value; } }
        public string NombreDept { get { return nombreDept; } set { nombreDept = value; } }
        #endregion

        #region Constructores
        public ClsDepartamento() { }
        public ClsDepartamento(int idDepartamento, string nombreDept)
        {

            this.idDepartamento=idDepartamento;
            this.nombreDept=nombreDept;

        }
        #endregion

    }
}
