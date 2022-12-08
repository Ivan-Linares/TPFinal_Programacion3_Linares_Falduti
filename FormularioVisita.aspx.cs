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
    public partial class FormularioVisita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VisitaNegocio negocio = new VisitaNegocio();
            GvVisitas.DataSource = negocio.ListarPorId(((Usuario)Session["ActualUser"]).IdUsuario);
            GvVisitas.DataBind();
        }

        //protected void BtnConfirmar_Click(object sender, EventArgs e)
        //{

        //}

        protected void GvVisitas_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Id = GvVisitas.SelectedDataKey.Value.ToString();
            Response.Redirect("ModificarVisita.aspx?id=" + Id, false);
        }
    }
}