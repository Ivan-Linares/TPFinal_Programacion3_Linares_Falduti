﻿using System;
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
            //if (((Usuario)Session["ActualUser"]).IdUsuario != 0)
            //    Response.Redirect("Default.aspx");
        }
    }
}