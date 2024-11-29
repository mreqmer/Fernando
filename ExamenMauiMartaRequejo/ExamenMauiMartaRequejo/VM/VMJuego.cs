using ExamenMauiMartaRequejo.VM.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ENT;
using BL;
using System.Collections.ObjectModel;
using DAL;

namespace ExamenMauiMartaRequejo.VM
{

    //Cosas a tener en cuenta,  el txt no me dio tiempo de revisar bien si hay alguna nueva implementacion de algún método
    //la foto no se cambia, cosa que me ha tomado mucho tiempo y no por ello no he tenido en cuenta los cambios en los contadores
    //falta implementar el boton de reinicio, pero eso simplemente es reiniciar todos los valores
    public class VMJuego : ClsVMBase
    {

        #region Atributos
        private DelegateCommand btnEnviarCommand;
        private DelegateCommand btnReiniciarCommand;
        private ClsCandidato candidatoJuego;
        private ClsCandidato candidatoSeleccionado;
        private string foto;
        private ObservableCollection<ClsCandidato> listaCandidatosRespuesta = new ObservableCollection<ClsCandidato>();  
        private List<ClsCandidato> candidatosUsados = new List<ClsCandidato>();
        int ganadas = 0;
        int perdidas = 0;
        int rondas = 0;
        #endregion

        #region Propiedades
        public DelegateCommand BtnEnviarCommand { get { return btnEnviarCommand; } }
        public DelegateCommand BtnReiniciarCommand { get {return btnReiniciarCommand;} }
        public ClsCandidato CandidatoJuego { get { return candidatoJuego; } set { candidatoJuego = value; OnPropertyChanged("CandidatoJuego"); } }
        public ClsCandidato CandidatoSeleccionado { 
            get { return candidatoSeleccionado; } 
            set 
            {
                candidatoSeleccionado = value; 
                OnPropertyChanged("CandidatoSeleccionado");
                btnEnviarCommand.RaiseCanExecuteChanged();
            } }
        public string Foto { get { return foto; } set { foto = value; OnPropertyChanged("Foto"); } }
        public ObservableCollection<ClsCandidato> ListaCandidatosRespuesta { get { return listaCandidatosRespuesta; } set { listaCandidatosRespuesta = value; } }
        public int Ganadas { get { return ganadas; } set { ganadas = value; OnPropertyChanged("Ganadas"); } }
        public int Perdidas { get {return perdidas; } set { perdidas = value; OnPropertyChanged("Perdidas"); } }
        public int Rondas { get { return rondas; } set { rondas = value; OnPropertyChanged("Rondas"); } }
        #endregion

        #region Constructores


        public VMJuego()
        {
            ganadas = 0;
            perdidas = 0;
            rondas = 0;
            //Al entrar en el juego se llama a la funcion que carga un candidato para jugar
            candidatoJuego = CargaCandidato();
            //carga una lista de respuestas para qeu el jugador elija
            CargaRespuestas();
            //carga la foot que se tiene que mostar
            CargaFoto();

            btnEnviarCommand = new DelegateCommand(btnEnviarCommand_Execute, btnEnviarCommand_CanExecute);
        }

        #endregion

        #region Metodos

        /// <summary>
        /// Funcion que carga un candidato en la lista si este no existe en candidatosUsados
        /// </summary>
        /// <returns></returns>
        private ClsCandidato CargaCandidato()
        {

            //No le voy a dar más vueltas a esto porque sino no me da tiempo, se puede
            //hacer definitivamente mejor
            Random rand = new Random();
            int aleatorio = 0;
            ClsCandidato c;

            if (candidatosUsados.Count == 0)
            {
                aleatorio = rand.Next(1, 15);
                c = ClsManejadoraBL.ObtieneCandidatoBl(aleatorio);
            }
            else
            {
                aleatorio = rand.Next(1, 15);
                c = ClsManejadoraBL.ObtieneCandidatoBl(aleatorio);
                
                while (candidatosUsados.Contains(c))
                {
                    aleatorio = rand.Next(1, 15);
                    c = ClsManejadoraBL.ObtieneCandidatoBl(aleatorio);
                }
                
            }
            return c;
        }

        /// <summary>
        /// obtiene una lista de personas que se usaran para que el usuario elija una de ellas
        /// </summary>
        /// <returns></returns>
        private void CargaRespuestas()
        {

            //esto se pude hacer mejor y darle una vuelta, ademas estoy usando una lista, cuando un array seria mejor
            //además, pongo el candidadto juego (que sería la respuesta) simpre arriba, cosa que no deberia pasar y seria 
            //mas facil con un array que luego convertiria a Obervable collection para usarlo mejor en la UI
            Random rand = new Random();
            int aleatorio = 0;
            ClsCandidato c;



            listaCandidatosRespuesta.Add(candidatoJuego);

            while (listaCandidatosRespuesta.Count < 4)
            {
                aleatorio = rand .Next(1, 15);
                c = ClsManejadoraBL.ObtieneCandidatoBl(aleatorio);
                if (!listaCandidatosRespuesta.Contains(c))
                {
                    listaCandidatosRespuesta.Add(c);
                }
            }
        }

        /// <summary>
        /// carga la foto que se le mostrara al jugador, que coincide con el id del candidato
        /// que está en juego
        /// </summary>
        private void CargaFoto()
        {
            foto = $"f{candidatoJuego.Id}f.jfif";
        }
        #endregion

        #region Commands

        /// <summary>
        /// Solo se ejecuta el boton al haber un candidato seleccionado
        /// </summary>
        /// <returns></returns>
        public bool btnEnviarCommand_CanExecute()
        {
            bool execute = false;

            if (candidatoSeleccionado != null && rondas <= 5)
            {
                execute = true;
            }
            
            return execute;
        }
      
        /// <summary>
       /// Solo de puede ejecutar reiniciar si se ha llegado a la ronda 5
       /// </summary>
       /// <returns></returns>
        public bool btnReiniciarCommand_CanExecute()
        {
            bool execute = false;

            if(rondas >= 5)
            {
                execute = true;
            }

            return execute;
        }

        /// <summary>
        /// lógica del boton que reinicia el juego
        /// </summary>
        public void btnReiniciarCommand_Execute()
        {
            //esto deberia reiniciar todos los valores a su por defecto, si me da tiempo
            //lo termino
        }

        /// <summary>
        /// Lógica del boton enviar
        /// </summary>
        public void btnEnviarCommand_Execute()
        {
            if (candidatoJuego.Equals(candidatoSeleccionado))
            {
                ganadas++;
                rondas++;
            }
            else
            {
                perdidas++;
                rondas++;
            }

            candidatosUsados.Add(candidatoJuego);
            
            candidatoJuego = CargaCandidato();
            CargaFoto(); 
            OnPropertyChanged(Foto);
            listaCandidatosRespuesta.Clear();
            CargaRespuestas();

        }

        #endregion
    }
}
