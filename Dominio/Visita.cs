using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Visita
    {
        public int Id { get; set; }
        public int IdPropiedad { get; set; }
        public int IdVendedor { get; set; }
        public int Idusuario { get; set; }
        public DateTime Fecha { get; set; } 
        public TimeSpan Hora { get; set; }
        public bool Estado { get; set; }
    }
}
