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
    public partial class ModificarVisita : System.Web.UI.Page
    {
        public bool EliminarCheck;
        int IDVisita;
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        private void Cargar()
        {
            EliminarCheck = false;

            try
            {
                if (Request.QueryString["Id"] != null)
                    CargarModificiacion(Request.QueryString["Id"]);
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw;
            }
        }

        private void CargarModificiacion(string id)
        {
            try
            {
                IDVisita = int.Parse(id); //Despues lo uso para eliminar

                Visita visita = new Visita();
                VisitaNegocio negocio = new VisitaNegocio();
                List<Visita> lista = negocio.ListarPorId(((Usuario)Session["ActualUser"]).IdUsuario);

                foreach (Visita aux in lista)
                {
                    if(aux.Id == int.Parse(id))
                        visita = aux;
                }

                if (!IsPostBack)
                {
                    txtFecha.Text = visita.Fecha.ToString();
                    txthora.Text = visita.Hora.ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            EliminarCheck = true;
        }

        protected void BtnConfirmarElim_Click(object sender, EventArgs e)
        {
            VisitaNegocio negocio = new VisitaNegocio();

            if (ChkEliminar.Checked)
            {
                negocio.EliminarVisita(IDVisita);
                Response.Redirect("MenuCliente.aspx", false);
            }
        }
    }
}