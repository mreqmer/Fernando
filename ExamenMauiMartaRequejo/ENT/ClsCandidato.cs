using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENT
{
    public class ClsCandidato
    {
        #region Atributos

        private int id;
        private string nombre;

        #endregion

        #region Propiedades

        public int Id { get { return id; } }
        public string Nombre { get { return nombre; } }

        #endregion

        #region Constructores

        public ClsCandidato()
        {

        }

        public ClsCandidato(int id, string nombre)
        {
            this.id = id;
            this.nombre = nombre; 
        }

        #endregion

        

    }


}
