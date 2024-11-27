using Ejercicio01.Models.VM.Utils;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ENT;
using BL;

namespace EjercicioMAUI.Models.VM
{
    public class VMAddPersona : clsVMBase
    {
        #region Atributos
        private DelegateCommand btnAddPersonaCommand;
        private long id = 0;
        private string nombre;
        private string apellidos;
        private string telefono;
        private string direccion;
        private string foto;
        private DateTime fechaNacimiento;
        private ObservableCollection<ClsDepartamento> listaDepartamentos;
        private ClsDepartamento departamentoSeleccionado;
        #endregion

        #region Propiedades
        public DelegateCommand BtnAddPersonaCommand { get { return btnAddPersonaCommand; } }
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; OnPropertyChanged("Nombre"); }
        }

        public string Apellidos
        {
            get { return apellidos; }
            set { apellidos = value; OnPropertyChanged("Apellidos"); }
        }

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; OnPropertyChanged("Telefono"); }
        }

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; OnPropertyChanged("Direccion"); }
        }

        public string Foto
        {
            get { return foto; }
            set { foto = value; OnPropertyChanged("Foto"); }
        }

        public DateTime FechaNacimiento
        {
            get { return fechaNacimiento; }
            set { fechaNacimiento = value; OnPropertyChanged(); }
        }

        public ObservableCollection<ClsDepartamento> ListaDepartamentos
        {
            get { return listaDepartamentos; }
            set { listaDepartamentos = value; OnPropertyChanged(); }
        }

        public ClsDepartamento DepartamentoSeleccionado { get { return departamentoSeleccionado; } set { departamentoSeleccionado = value; OnPropertyChanged(); } }
        #endregion

        #region Constructor

        public VMAddPersona()
        {
            listaDepartamentos = new ObservableCollection<ClsDepartamento>(ClsListadosBL.ObtieneListadoDepartamentosBl());
            btnAddPersonaCommand = new DelegateCommand(btnAddPersonaCommand_Execute, btnAddPersonaCommand_CanExecute);
        }

        #endregion

        #region Command

        public bool btnAddPersonaCommand_CanExecute()
        {
            return true;
        }

        public async void btnAddPersonaCommand_Execute()
        {
            
            ClsPersona p = new ClsPersona(nombre, apellidos, telefono, direccion, foto, fechaNacimiento, departamentoSeleccionado.IdDepartamento);
            ClsManejadoraBL.newPersonaBl(p);

            await Shell.Current.GoToAsync("///MainPage");

        }

        #endregion
    }
}
