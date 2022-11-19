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
    public partial class ListadoPropiedades : System.Web.UI.Page
    {
        public List<Propiedad> ListaPropiedades { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        protected void btnDescrip_Click(object sender, EventArgs e)
        {

        }

        protected void btnFav_Click(object sender, EventArgs e)
        {

        }

        private void Cargar()
        {
            PropiedadNegocio Negocio = new PropiedadNegocio();

            ListaPropiedades = Negocio.Listar();

            Repeater.DataSource = ListaPropiedades;
            Repeater.DataBind();
        }
    }
}