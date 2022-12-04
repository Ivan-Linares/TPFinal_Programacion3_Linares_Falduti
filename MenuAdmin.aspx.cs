using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace Aplicacion_Web
{
    public partial class MenuAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!(Session["ActualUser"] != null && ((Dominio.Usuario)Session["ActualUser"]).Tipo.Id == 0))
                {
                    Session.Add("Error", "Necesitas Loguearte!");
                    Response.Redirect("Error.aspx", false);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}