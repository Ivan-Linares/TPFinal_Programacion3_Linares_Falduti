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
    public partial class DetallePropiedad : System.Web.UI.Page
    {
        public List<Propiedad> ListaPropiedad { get; set; }
        public Propiedad Propiedad = new Propiedad();
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListadoPropiedades.aspx");
        }

        private void Cargar()
        {
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

        public bool TieneCochera()
        {
            if(((Propiedad)Session["Propiedad"]).Cochera)
                return true;
            return false;
        }

        public bool EnVenta()
        {
            if (((Propiedad)Session["Propiedad"]).EnVenta)
                return true;
            return false;
        }
    }
}