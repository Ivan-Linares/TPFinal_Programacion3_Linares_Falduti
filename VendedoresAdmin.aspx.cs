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
    public partial class VendedoresAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VendedorNegocio Negocio = new VendedorNegocio();

            GvVendedores.DataSource = Negocio.Listar();
            GvVendedores.DataBind();
        }

        protected void GvVendedores_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Id = GvVendedores.SelectedDataKey.Value.ToString();
            Response.Redirect("VendedoresFormulario.aspx?id=" + Id, false);
        }
    }
}