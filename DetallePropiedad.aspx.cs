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
            PropiedadNegocio propiedadNegocio = new PropiedadNegocio();
            ListaPropiedad = propiedadNegocio.Listar();

            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";

            foreach (Propiedad Prop in ListaPropiedad)
            {
                if (Prop.IdPropiedad == int.Parse(id))
                    Propiedad = Prop;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {

        }
    }
}