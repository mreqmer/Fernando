using ENT;

namespace EjercicioExamen.Models.VM
{
    public class ClsPersonaDetallesVM 
    {
        #region Atributos
        private int idCandidato;
        private string nombre;
        private string apellidos;
        private string direccion;
        private string telefono;
        private int precioMedio;
        private int edad;
        #endregion

        #region Propiedades
        public int IdCandidato { get { return idCandidato; } set { idCandidato = value; } }
        public string Nombre { get { return nombre; } set { nombre = value; } }
        public string Apellidos { get { return apellidos; } set { apellidos = value; } }
        public string Direccion { get { return direccion; } set { direccion = value; } }
        public string Telefono { get { return telefono; } set { telefono = value; } }
        public int PrecioMedio { get { return precioMedio; } set { precioMedio = value; } }
        public int Edad { get { return edad; } set { edad = value; } }
        #endregion

        #region Constructor
        public ClsPersonaDetallesVM()
        {

        }
        public ClsPersonaDetallesVM(ClsCandidato c)
        {
            this.idCandidato = c.IdCandidato;
            this.nombre = c.Nombre;
            this.apellidos = c.Apellidos;
            this.direccion = c.Direccion;
            this.telefono = c.Telefono;
            this.precioMedio = c.PrecioMedio;
            this.edad = DateTime.Now.Year - c.FechaNac.Year;
        }
        #endregion
    }
}
