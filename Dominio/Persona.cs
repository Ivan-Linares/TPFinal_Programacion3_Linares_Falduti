using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public enum Nivel_Acceso
    {
        CLIENTE = 0,
        VENDEDOR = 1,
        ADMINISTRADOR=2
    }
    public class Persona
    {
        public string Dni { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public DateTime Fecha_Nacimiento { get; set; }
        public string Domicilio { get; set; }
        public string Email { get; set; }
        public Nivel_Acceso NivelAcceso { get; set; }
    }
}
