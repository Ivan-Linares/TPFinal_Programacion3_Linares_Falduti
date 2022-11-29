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
        ADMINISTRADOR = 2
    }
    public class Usuario
    {
        public int IdUsuario { get; set; }
        public TipoUsuario Tipo { get; set; } //0 ADMINISTRADOR - 1 VENDEDORES - 2 CLIENTE
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public bool Estado { get; set; }
        public Usuario(string Email, string pass)
        {
            this.Email = Email;
            this.Password = pass;


        }
        public Usuario()
        {

        }
    }


}
