using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENT
{
    class ClsDepartamento
    {

        #region Atributos
        private int idDepartamento;
        private string nombreDepartamento;
        #endregion

        #region Propiedades
        public int IdDepartamento { get { return idDepartamento; } }
        public string NombreDepartamento {get { return nombreDepartamento;} }
        #endregion

        #region Constructores
        public ClsDepartamento()
        {

        }
        public ClsDepartamento(int idDepartamento, string nombreDepartamento)
        {
            this.idDepartamento = idDepartamento;
            this.nombreDepartamento = nombreDepartamento;
        }
        #endregion

    }
}
