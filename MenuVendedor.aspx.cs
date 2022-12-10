using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Aplicacion_Web
{
    public partial class MenuVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        private void Cargar()
        {
            VendedorCheck();

            try
            {
                VisitaNegocio negocio = new VisitaNegocio();
                GvVisitas.DataSource = negocio.ListarPorIdVendededor(((Usuario)Session["ActualUser"]).IdUsuario);
                GvVisitas.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void VendedorCheck()
        {
            if (!(Session["ActualUser"] != null && ((Dominio.Usuario)Session["ActualUser"]).Tipo.Id == 1))
            {
                Session.Add("Error", "Necesitas Loguearte Como Vendedor");
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}