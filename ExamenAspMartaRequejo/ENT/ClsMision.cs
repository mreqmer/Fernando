using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENT
{
    public class ClsMision
    {
        #region Atributos
        private int idMision;
        private string nombreMision;
        private int dificultad;
        #endregion

        #region Propiedades
        public int IdMision { get { return idMision; } set {  idMision = value; } }
        public string NombreMision { get { return nombreMision; } set { nombreMision = value; } }
        public int Dificultad { get { return dificultad; } set { dificultad = value; } }
        #endregion

        #region Constructores
        public ClsMision()
        {

        }
        public ClsMision(int idMision, string nombreMision, int dificultad)
        {
            this.idMision = idMision;
            this.nombreMision = nombreMision;
            this.dificultad = dificultad;
        }
        #endregion
    }
}
