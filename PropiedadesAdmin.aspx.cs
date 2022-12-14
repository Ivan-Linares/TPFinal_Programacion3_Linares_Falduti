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
    public partial class PropiedadesAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PropiedadNegocio negocio = new PropiedadNegocio();
                GvPropiedades.DataSource = negocio.Listar();
                GvPropiedades.DataBind();

            }
        }

        protected void GvPropiedades_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Id = GvPropiedades.SelectedDataKey.Value.ToString();
            Response.Redirect("PropiedadesFormulario.aspx?id=" + Id, false);
        }
    }
}