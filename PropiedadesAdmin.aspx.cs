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
                Session.Add("ListaPropiedades", negocio.Listar());
                GvPropiedades.DataSource = Session["ListaPropiedades"];
                GvPropiedades.DataBind();

            }
        }
    }
}