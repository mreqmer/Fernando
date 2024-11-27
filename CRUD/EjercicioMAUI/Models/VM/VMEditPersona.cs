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
    [QueryProperty(nameof(Persona), "Persona")]
    public class VMEditPersona : clsVMBase
    {
        #region Atributos

        private ClsDepartamento departamentoSeleccionado;
        private ClsPersona persona = new ClsPersona();
        private List<ClsDepartamento> listadoDepartamentos = new List<ClsDepartamento>();
        #endregion


        #region Propiedades
        

        public ClsPersona Persona { get { return persona; } set { persona = value;} }


        #endregion

        #region Constructores
        public VMEditPersona()
        {
            OnPropertyChanged("Persona");

        }
        #endregion
        #region Commands

        //public bool btnEditCommand_CanExecute()
        //{
        //    bool execute = false;

        //    if (nombre!= "" && apellidos != "" && telefono != "" && direccion != "" && foto != "" && departamentoSeleccionado!= null)
        //    {
        //        execute = true;
        //    }

        //    return execute;
        //}    

        //public async void btnEditCommand_Execute()
        //{
        //    try
        //    {
        //        persona.Nombre = this.nombre;
        //        persona.Apellidos = this.apellidos;
        //        persona.Telefono = this.telefono;
        //        persona.Direccion = this.direccion;
        //        persona.Foto = this.foto;
        //        persona.FechaNacimiento = this.fechaNacimiento;
        //        persona.IdDepartamento = this.departamentoSeleccionado.IdDepartamento;

        //        try
        //        {
        //            ClsManejadoraBL.updatePersonaBl(persona);
        //        }
        //        catch
        //        {
        //            await Shell.Current.GoToAsync("///Error");
        //        }
                
        //    }
        //    catch (Exception ex)
        //    {
        //    }

        //}

        #endregion
    }
}

