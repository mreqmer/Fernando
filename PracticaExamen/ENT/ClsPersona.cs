using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENT
{
    public class ClsPersona
    {

        #region Atributos
        private int idPersona;
        private string nombre;
        private string apellidos;
        private int edad;
        private int idDepartamento;
        #endregion

        #region Propiedades
        public int IdPersona { get { return idPersona; } set { idPersona = value; } }
        public string Nombre { get { return nombre; } set { nombre = value; } }
        public string Apellidos { get { return apellidos; } set { apellidos = value; } }
        public int Edad { get { return edad; } set { edad = value; } }
        public int IdDepartamento { get{ return idDepartamento; } set {idDepartamento = value;} }

        #endregion

        #region Constructores

        public ClsPersona()
        {

        }
        public ClsPersona(int idPersona, string nombre, string apellidos, int edad, int idDepartamento)
        {
            this.idPersona = idPersona;
            this.nombre = nombre;
            this.apellidos = apellidos;
            this.edad = edad;
            this.idPersona = idPersona;
            this.idDepartamento = idDepartamento;
           
        }
        #endregion

    }
}
