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

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}