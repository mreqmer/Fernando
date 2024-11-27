using BL;
using Ejercicio01.Models.VM.Utils;
using ENT;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjercicioMAUI.Models.VM
{
    public class VMPersonaConListaDepartamentos : ModelPersonaDepartamento
    {
        #region Atributos

        private DelegateCommand btnAddPersona;
        private ObservableCollection<ClsDepartamento> departamentos = new ObservableCollection<ClsDepartamento>();


        #endregion

        #region Propiedades
        public DelegateCommand BtnAddPersona {  get { return btnAddPersona; } }
        public ObservableCollection<ClsDepartamento> Departamentos { get {  return departamentos; } }
        #endregion

        #region Constructores

        public VMPersonaConListaDepartamentos() {
            

        }

        public VMPersonaConListaDepartamentos(ClsPersona p)
        {
            base.Id = p.Id;
            base.Nombre = p.Nombre;
            base.Apellidos = p.Apellidos;
            base.Telefono = p.Telefono;
            base.Direccion = p.Direccion;
            base.Foto = p.Foto;
            base.FechaNacimiento = p.FechaNacimiento;
            base.IdDepartamento = p.IdDepartamento;

            List<ClsDepartamento> listaDepartamentos = ClsListadosBL.ObtieneListadoDepartamentosBl();
            this.departamentos = new ObservableCollection<ClsDepartamento>(listaDepartamentos);

        }

        #endregion

        #region Command

        public bool btnAddPersona_CanExecute()
        {
            return true;
        }

        public void btnAddPersona_Execute()
        {
            ClsPersona p = new ClsPersona();
           
        }

        #endregion
    }
}
