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
    public class Usuario
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Email { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public Nivel_Acceso NivelAcceso { get; set; }
        public string User { get; set; }
        public string Password { get; set; }
    }
}
