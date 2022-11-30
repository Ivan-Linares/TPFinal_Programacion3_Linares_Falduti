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
    public partial class UsuariosAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioNegocio Negocio = new UsuarioNegocio();
            GvUsuarios.DataSource = Negocio.Listar();
            GvUsuarios.DataBind();
        }

        protected void GvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Id = GvUsuarios.SelectedDataKey.Value.ToString();
            Response.Redirect("UsuariosFormulario.aspx?id=" + Id, false);
        }
    }
}