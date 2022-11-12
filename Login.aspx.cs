using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion_Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
          
        }

        private void Page_Error(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();


            Session.Add("error", exc.ToString());
            //Response.Redirect("Error.aspx");
            Server.Transfer("Error.aspx");
        }
    }
}