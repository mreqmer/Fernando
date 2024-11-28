using Ejercicio01.Models.VM.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cartitas.VM
{
    public class VMJuego : ClsVMBase
    {

        private DelegateCommand flipCommand;
        private string reverso = "fondito.png";

        private string[] posibilidades = { "elefante.jpg", "mono.jpg", "panda.jpg", "tigre.jpg" };

        private string[,] actual = {
            { "fondito.png", "fondito.png", "fondito.png", "fondito.png" },
            { "fondito.png", "fondito.png", "fondito.png", "fondito.png" },
            { "fondito.png", "fondito.png", "fondito.png", "fondito.png" }
        };

        private string[,] solucionCartas = new string[3, 4];
        
        string carta = "fondito.png";

        public DelegateCommand FlipCommand { get { return flipCommand; } }
        public string Carta { get {  return carta; } set { carta = value; OnPropertyChanged("Carta"); } }

        public VMJuego()
        {
            flipCommand = new DelegateCommand(flipCommand_Execute);
            carta = reverso;
        }

        public void flipCommand_Execute()
        {
            if (Carta.Equals(reverso))
            {
                Carta = "elefante.jpg";  // Cambiar la imagen
            }
            
        }

        public void asignaCartas()
        {

            Random random = new Random();

            

        }   
    }
}
