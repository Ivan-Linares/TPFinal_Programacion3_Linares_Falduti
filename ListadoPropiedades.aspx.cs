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
    public partial class ListadoPropiedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PropiedadNegocio Negocio = new PropiedadNegocio();
            //Session.Add("ListaPropiedades", Negocio.listarConSP());
            DgvPropiedades.DataSource = Session["ListaPropiedades"];
        }

        protected void DgvPropiedades_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DgvPropiedades.PageIndex = e.NewPageIndex;
            DgvPropiedades.DataBind();
        }

        protected void DgvPropiedades_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = DgvPropiedades.SelectedDataKey.Value.ToString();
            Response.Redirect("FormularioPokemon.aspx?id=" + id);

        }

    }
}