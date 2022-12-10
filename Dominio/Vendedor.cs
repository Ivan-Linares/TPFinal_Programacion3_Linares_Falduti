using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Vendedor
    {
        public int IdVendedor { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Email { get; set; }
        public string Sexo { get; set; }  
        public string Legajo { get; set; }
        public string Dni { get; set; }
        public string Domicilio { get; set; }
        public DateTime FechaIngreso { get; set; }
        public DateTime FechaNac { get; set; }
        public bool Estado { get; set; }
    }
}
