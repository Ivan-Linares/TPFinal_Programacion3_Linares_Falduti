using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;


namespace Aplicacion_Web
{
    public partial class FormularioVisita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConfirmar_Click(object sender, EventArgs e)
        {
            try
            {
                Visita newVisita = new Visita();
                VisitaNegocio Negocio = new VisitaNegocio();

                newVisita.Nombre =TxtNombre.Text;
                newVisita.Apellido = TxtApellido.Text;
                newVisita.NumeroPropiedad = int.Parse(TxtNumPropiedad.Text);
                newVisita.Telefono = TxtTelefono.Text;
                newVisita.Fecha = DateTime.Parse(txtFechaVisita.Text.ToString());
                newVisita.Hora = TimeSpan.Parse(txtHoraVisita.Text.ToString());

                Negocio.AgregarVisita(newVisita);


                Response.Redirect("MenuCliente.aspx", false);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}