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
    public partial class ComprarPropiedad : System.Web.UI.Page
    {
        public List<Propiedad> ListaPropiedad { get; set; }
        public Propiedad Propiedad = new Propiedad();

        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        private void Cargar()
        {
            CheckUsuario();

            try
            {
                PropiedadNegocio propiedadNegocio = new PropiedadNegocio();
                ListaPropiedad = propiedadNegocio.Listar();
                string ID;

                if (Request.QueryString["Id"] != null)
                    ID = Request.QueryString["Id"].ToString();
                else
                    ID = "";

                foreach (Propiedad prop in ListaPropiedad)
                {
                    if (prop.IdPropiedad == int.Parse(ID))
                        Propiedad = prop;
                }

                Session.Add("Propiedad", Propiedad);
                SetearCard(Propiedad);
            }
            catch (Exception)
            {
                Session.Add("Error", "No seleccionaste una propiedad para ver el detalle");
                Response.Redirect("Error.aspx", false);
            }
        }

        private void SetearCard(Propiedad Propiedad)
        {
            ImagePropiedad.ImageUrl = Propiedad.UrlImagen.ToString();
            LbTipo.Text = Propiedad.TipoPropiedad.Descripcion.ToString();
            LbDescrip.Text = Propiedad.Descripcion.ToString();
            LbCantAmb.Text = Propiedad.CantAmbientes.ToString();
            LbMts2.Text = Propiedad.Mts2.ToString();
            LbDireccion.Text = Propiedad.Direccion.ToString();
            LbPrecio.Text = Propiedad.Precio.ToString();
        }

        private void CheckUsuario()
        {
            try
            {
                if (!(Session["ActualUser"] != null && ((Dominio.Usuario)Session["ActualUser"]).Tipo.Id == 2))
                {
                    Session.Add("Error", "Necesitas Loguearte!");
                    Response.Redirect("Error.aspx", false);
                }
            }
            catch (Exception)
            {
                Session.Add("Error", "Oh no, algo salio mal D:");
                Response.Redirect("Error.aspx", false);
            }
        }

        public bool TieneCochera()
        {
            if (((Propiedad)Session["Propiedad"]).Cochera)
                return true;
            return false;
        }

        public bool EnVenta()
        {
            if (((Propiedad)Session["Propiedad"]).EnVenta)
                return true;
            return false;
        }

        protected void BtnConfirmar_Click(object sender, EventArgs e)
        {
            try
            {
                Visita visita = new Visita();
                VisitaNegocio negocio = new VisitaNegocio();

                visita.IdPropiedad = Propiedad.IdPropiedad;
                visita.IdVendedor = Propiedad.IdVendedor;
                visita.Idusuario = ((Usuario)Session["ActualUser"]).IdUsuario;
                visita.Fecha = DateTime.Parse(txtFechaIng.Text.ToString());
                visita.Hora = TimeSpan.Parse(txthora.Text.ToString());
                visita.Estado = true;

                negocio.AgregarVisita(visita);
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}