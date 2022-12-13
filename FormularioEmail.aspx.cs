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
    public partial class FormularioEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            try
            {

                EmailService emailService = new EmailService();
                string EmailOrigen =(TxtEmail.Text);


                emailService.armarCorreo(EmailOrigen,TxtAsunto.Text,txtmensaje.Text);
                emailService.enviarEmail();
                Response.Redirect("Default.aspx", false);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }
        }
    }
}