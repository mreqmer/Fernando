﻿using BL;
using Ejercicio01.Models.VM.Utils;
using ENT;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjercicioMAUI.Models.VM
{
    public class VMListaPersonasDepartamento : clsVMBase
    {
        #region Atributos

        private DelegateCommand btnAddCommand;
        private DelegateCommand btnDeleteCommand;
        private DelegateCommand btnEditCommand;
        private ObservableCollection<ModelPersonaDepartamento> personasConDept;
        private ClsPersona personaSeleccionada;

        #endregion

        #region Propiedades

        public DelegateCommand BtnAddCommand { get { return btnAddCommand; } }
        public DelegateCommand BtnDeleteCommand { get { return btnDeleteCommand; } }
        public DelegateCommand BtnEditCommand { get { return btnEditCommand; } }
        public ObservableCollection<ModelPersonaDepartamento> PersonasConDept { get { return personasConDept; } }
        public ClsPersona PersonaSelecionada { 
            get { return personaSeleccionada;} 
            set 
            { 
                personaSeleccionada = value;
                OnPropertyChanged("PersonaSeleccionada");
                btnAddCommand.RaiseCanExecuteChanged();
                btnDeleteCommand.RaiseCanExecuteChanged();
                btnEditCommand.RaiseCanExecuteChanged();

            } 
        }
        public ClsPersona PersonaSeleccionada { get { return personaSeleccionada; } set { PersonaSeleccionada = value; } }

        #endregion

        #region Constructores

        public VMListaPersonasDepartamento()
        {
            this.personasConDept = CargarDatos();
            btnAddCommand = new DelegateCommand(btnAddCommand_Execute, btnAddComand_CanExecute);
            btnEditCommand = new DelegateCommand(btnEditCommand_Execute, btnEditCommand_CanExecute);
            btnDeleteCommand = new DelegateCommand(btnDeleteCommand_Execute, btnDeleteCommand_CanExecute);

        }

        public VMListaPersonasDepartamento(int idPersonaSeleccionada)
        {
            this.personasConDept = CargarDatos();
            btnAddCommand = new DelegateCommand(btnAddCommand_Execute, btnAddComand_CanExecute);
            btnEditCommand = new DelegateCommand(btnEditCommand_Execute, btnEditCommand_CanExecute);
            btnDeleteCommand = new DelegateCommand(btnDeleteCommand_Execute, btnDeleteCommand_CanExecute);
        }

        #endregion

        /// <summary>
        /// llena la lista de personas con departamento
        /// </summary>
        /// <returns></returns>
        private ObservableCollection<ModelPersonaDepartamento> CargarDatos()
        {

            List<ClsPersona> personas = ClsListadosBL.ObtieneListadoPersonasBl();
            List<ClsDepartamento> departamentos = ClsListadosBL.ObtieneListadoDepartamentosBl();
            ObservableCollection<ModelPersonaDepartamento> p = new ObservableCollection<ModelPersonaDepartamento>();

            foreach (ClsPersona persona in personas)
            {
                p.Add(new ModelPersonaDepartamento(persona, departamentos));
            }

            return p;
        }

        #region Command

        /// <summary>
        /// Boton para añadir persona Can Execute
        /// </summary>
        /// <returns></returns>
        public bool btnAddComand_CanExecute()
        {
            

            return true;

        }

        /// <summary>
        /// Execute para ir a la vista de aladir persona
        /// </summary>
        private async void btnAddCommand_Execute()
        {

            await Shell.Current.GoToAsync("///addPersonasViewPage");

        }

        public bool btnEditCommand_CanExecute()
        {
            bool execute = false;

            if (personaSeleccionada != null)
            {
                execute = true;
            }

            return execute;
        }

        public async void btnEditCommand_Execute()
        {
            try
            {
               
                var queryParams = new Dictionary<string, object>
                {
                    { "Persona", PersonaSeleccionada}
                };

                await Shell.Current.GoToAsync("///editPersonaView", queryParams);
            }
            catch (Exception ex) {

                await Shell.Current.GoToAsync("///Error");

            }
            
            

        }
        public bool btnDeleteCommand_CanExecute()
        {
            bool execute = false;

            if (personaSeleccionada != null)
            {
                execute = true;
            }

            return execute;
        }

        public void btnDeleteCommand_Execute()
        {
            ClsManejadoraBL.borrarPersonaBl(personaSeleccionada.Id);
            ModelPersonaDepartamento personaEncontrada = personasConDept.FirstOrDefault(p => p.Id == personaSeleccionada.Id);
            personasConDept.Remove(personaEncontrada);


        }



        #endregion
    }
}

