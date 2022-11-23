using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Propiedad
    {   
        public int IdPropiedad { get; set; }    
        public TiposPropiedad TipoPropiedad { get; set; }
        public string Descripcion { get; set; }
        public int CantAmbientes { get; set; }
        public float Mts2 { get; set; }
        public bool Cochera { get; set; }
        public string Direccion { get; set; }
        public string UrlImagen { get; set; }
        public bool EnVenta { get; set; }
        public decimal Precio { get; set; }
    }
}
