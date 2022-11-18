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
    }
}
