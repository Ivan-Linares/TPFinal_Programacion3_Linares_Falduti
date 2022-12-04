using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPFinal_Programacion3_Linares_Falduti
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool IsAdmin()
        {
            try
            {
                if (Session["ActualUser"] != null && ((Dominio.Usuario)Session["ActualUser"]).Tipo.Id == 0)
                    return true;
                return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool IsVendedor()
        {
            try
            {
                if (Session["ActualUser"] != null && ((Dominio.Usuario)Session["ActualUser"]).Tipo.Id == 1)
                    return true;
                return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool IsCliente()
        {
            try
            {
                if (Session["ActualUser"] != null && ((Dominio.Usuario)Session["ActualUser"]).Tipo.Id == 2)
                    return true;
                return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}