using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion_Web
{
    public partial class MenuCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ingresos"] == null)
            {
                Response.Redirect("/default.aspx");
            }

            else if (Session["ingresos"] != null)
            {
                int probando;
                probando = int.Parse(Session["ingresos"].ToString());
                if (probando != 2) { Response.Redirect("/default.aspx"); }

            }



        }
    }
}