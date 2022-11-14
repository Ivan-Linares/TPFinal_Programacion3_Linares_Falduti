using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Vendedor : Usuario
    {
        public int Legajo { get; set; }
        public DateTime FechaIngreso { get; set; }
    }
}
