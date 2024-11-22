using BL;
using ENT;

namespace EjercicioExamen.Models.VM
{
    public class ClsMisionesPersonasVM
    {
        #region Atributos
        private List<ClsMision> listaMisiones = new List<ClsMision>();
        private List<ClsCandidato> listaCanditatos = new List<ClsCandidato>();
        #endregion

        #region Propiedades
        public List<ClsMision> ListaMisiones { get { return listaMisiones; } set { listaMisiones = value; } }
        public List<ClsCandidato> ListaCanditatos { get { return listaCanditatos; } set { listaCanditatos = value; } }
        #endregion

        #region Constructores
        public ClsMisionesPersonasVM()
        {
            listaMisiones = ClsListadosBl.obtieneListaMisionesBl();
        }

        public ClsMisionesPersonasVM(int idMision)
        {
            ClsMision misionSeleccionada = ClsManejadoraBl.obtieneMisionBl(idMision);

            listaMisiones = ClsListadosBl.obtieneListaMisionesBl();
            listaCanditatos = ClsListadosBl.obtieneListaCandidatosBl(misionSeleccionada);
        }
        #endregion
    }
}
