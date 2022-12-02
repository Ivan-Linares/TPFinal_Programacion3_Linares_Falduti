using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion_Web
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BotonRegister_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario user = new Usuario();
                UsuarioNegocio Negocio = new UsuarioNegocio();


                user.Email = TextEmail.Text;
                user.Password = TextContra.Text;
                user.Nombre = TextEmail.Text;
                user.Apellido = TextApellido.Text;
                user.Tipo.Id = 2;
                user.FechaNacimiento = DateTime.Parse(txtFechaNac.Text.ToString());
                Negocio.Agregar_Usuario_Registracion(user);

                Session.Add("Usuario", user);

       
                Response.Redirect("/Login.aspx", false);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }
        }
    }
}