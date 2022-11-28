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
    public partial class ListadoVendedores : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                VendedorNegocio negocio = new VendedorNegocio();
                Session.Add("ListaVendedores", negocio.Listar());
                GvVendedores = Session["ListaVendedores"];
                GvVendedores.DataBind();

            }


        }

    }
}