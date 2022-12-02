using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion_Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Usuario ingreso;
            UsuarioNegocio negocio = new UsuarioNegocio();
            TipoUsuario Tipo= new TipoUsuario();
            try
            {
                ingreso = new Usuario(TexUsuario.Text, TexContra.Text);
                ingreso = negocio.Loguear(ingreso);

                Session.Add("ActualUser", ingreso);

                if (ingreso.Tipo.Id == 0)
                {
                    Session.Add("ingresos", ingreso.Tipo.Id);
                    Session.Add("IdUsuario", ingreso.IdUsuario);
                    Response.Redirect("/MenuAdmin.aspx");

                }
                else if (ingreso.Tipo.Id == 1)
                {
                    Session.Add("ingresos", ingreso.Tipo.Id);
                    Session.Add("IdUsuario", ingreso.IdUsuario);
                    Response.Redirect("/Gestion/MenuVendedor.aspx");


                }
                else if (ingreso.Tipo.Id == 2)
                {
                    Session.Add("ingresos", ingreso.Tipo.Id);
                    Session.Add("IdUsuario", ingreso.IdUsuario);
                    Response.Redirect("/MenuCliente.aspx");

                }

                else
                {

                    Session.Add("ingresos", null);
                    Response.Redirect("default.aspx");

                }


            }

            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                throw ex;

            }
        }
        private void Page_Error(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();


            Session.Add("error", exc.ToString());
            //Response.Redirect("Error.aspx");
            Server.Transfer("Error.aspx");
        }
    }
}