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
            PropiedadNegocio propiedadNegocio = new PropiedadNegocio();
            ListaPropiedad = propiedadNegocio.Listar();

            string ID = Request.QueryString["ID"] != null ? Request.QueryString["ID"].ToString() : "";

            foreach (Propiedad propiedad in ListaPropiedad)
            {
                if (propiedad.IdPropiedad == int.Parse(ID))
                    Propiedad = propiedad;
            }
        }
    }
}