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
    public partial class AgregarPropiedad : System.Web.UI.Page
    {
        Propiedad NewPropiedad = new Propiedad();
        PropiedadNegocio Negocio = new PropiedadNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        protected void TextUrlImagen_TextChanged(object sender, EventArgs e)
        {
            ImagePropiedad.ImageUrl = TextUrlImagen.Text;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                //TODO: Hay que tomas todos los datos de las textboxes y meterlas en el objeto, y agregarlo a la DB
            }
            catch
            {

            }
        }

        private void Cargar()
        {
            //TODO: La dropdownlist hay q cargarle los tipos de propiedades
        }
    }
}