using ENT;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ClsListados
    {
        public static List<ClsDepartamento> ListaDepartamentos = cargaDepartamentos();
        public static List<ClsPersona> ListaPersonas = cargaPersonas();

        public static List<ClsDepartamento> cargaDepartamentos()
        {
            return ListaDepartamentos = new List<ClsDepartamento>
            {
                new ClsDepartamento(1, "Recursos Humanos"),
                new ClsDepartamento(2, "Finanzas"),
                new ClsDepartamento(3, "Tecnología"),
                new ClsDepartamento(4, "Marketing"),
                new ClsDepartamento(5, "Ventas")

            };

        }

        public static List<ClsPersona> cargaPersonas()
        {
            return ListaPersonas = new List<ClsPersona>
            {
                new ClsPersona(1, "Ana", "López García", 30, 1),
                new ClsPersona(2, "Fernando", "Cruz Herrera", 42, 3),
                new ClsPersona(3, "Javier", "Vega Gutiérrez", 37, 2),
                new ClsPersona(4, "Marta", "Ortiz Domínguez", 27, 2),
                new ClsPersona(5, "Pablo", "Ortiz Navarro", 38, 5),
                new ClsPersona(6, "Carlos", "Hernández Ruiz", 35, 1),
                new ClsPersona(7, "Sofía", "Reyes González", 36, 1),
                new ClsPersona(8, "Daniela", "Cano Rojas", 27, 1),
                new ClsPersona(9, "Lucía", "Blanco Pérez", 31, 1),
                new ClsPersona(10, "Luis", "Pérez Rodríguez", 45, 1),
                new ClsPersona(11, "Adrián", "Gil Sánchez", 28, 4),
                new ClsPersona(12, "Paula", "Camacho García", 24, 5),
                new ClsPersona(13, "Pedro", "Sánchez Torres", 40, 2),
                new ClsPersona(14, "Laura", "Martínez Jiménez", 32, 1),
                new ClsPersona(15, "Hugo", "Morales Gómez", 39, 5),
                new ClsPersona(16, "Claudia", "Ibáñez Delgado", 26, 3),
                new ClsPersona(17, "María", "Gómez Fernández", 28, 1),
                new ClsPersona(18, "Alberto", "Rivas Castillo", 41, 4),
                new ClsPersona(19, "Elena", "Ramírez Sánchez", 33, 2),
                new ClsPersona(20, "Carolina", "Fuentes Álvarez", 32, 5),
                new ClsPersona(21, "José", "Castro Morales", 50, 2),
                new ClsPersona(22, "Raúl", "Pardo Martín", 34, 4),
                new ClsPersona(23, "Andrés", "Escobar Serrano", 33, 5),
                new ClsPersona(24, "Carmen", "Molina Vargas", 29, 4),
                new ClsPersona(25, "Gabriel", "Núñez Ramos", 31, 5),
                new ClsPersona(26, "Isabel", "Santos Cruz", 30, 5),
                new ClsPersona(27, "Diego", "Navarro López", 29, 3),
                new ClsPersona(28, "Verónica", "Lara Mendoza", 25, 5),
                new ClsPersona(29, "David", "Suárez Romero", 35, 3),
                new ClsPersona(30, "Jorge", "Soria Vargas", 28, 5)
            };
        }
    
        public static ClsDepartamento findDepartamento(int idDept)
        {
            ClsDepartamento departamento = new ClsDepartamento();

            departamento = ListaDepartamentos.Find(d => d.IdDepartamento == idDept);

            return departamento;
        }

        public static List<ClsPersona> listadoPersonasPorDepartamento(int idDept)
        {
            List<ClsPersona> personasDepartamento = new List<ClsPersona>();

            foreach(ClsPersona p in ListaPersonas)
            {
                if(p.IdDepartamento == idDept)
                {
                    personasDepartamento.Add(p);
                }
            }

            return personasDepartamento;
        }
    
        public static void borraDepartamento(int idDept)
        {
            ClsDepartamento departamento = new ClsDepartamento();

            departamento = ListaDepartamentos.Find(d => d.IdDepartamento == idDept);

            ListaDepartamentos.Remove(departamento);

        }

        public static void borraDepartamentoPersonas(int idDept)
        {

            foreach (ClsPersona p in ListaPersonas)
            {
                if (p.IdDepartamento == idDept)
                {
                    ListaPersonas.Remove(p);
                }
            }
        }
    }

}

