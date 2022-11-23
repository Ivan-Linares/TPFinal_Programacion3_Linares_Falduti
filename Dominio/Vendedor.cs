using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Vendedor : Usuario
    {
        public Vendedor()
        {
            NivelAcceso = Nivel_Acceso.VENDEDOR;
        }
        public int  IdVendedor { get; set; }    
        public string Legajo { get; set; }
        public string Dni { get; set; }
        public string Domicilio { get; set; }
        public DateTime FechaIngreso { get; set; }
    }
}
