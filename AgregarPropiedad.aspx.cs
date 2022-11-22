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
            Propiedad NewPropiedad = new Propiedad();
            PropiedadNegocio Negocio = new PropiedadNegocio();

            try
            {
                //TODO: Hay que traer todos los parametros al objeto propiedad

                Negocio.Agregar_Propiedad(NewPropiedad);
                Response.Redirect("ListadoPropiedades.aspx", false);
            }
            catch(Exception ex)
            {
                Session.Add("Error", ex);
            }
        }

        private void Cargar()
        {
            try 
            {
                if (!IsPostBack)
                {
                    TipoPropiedadNegocio negocio = new TipoPropiedadNegocio();
                    List<TiposPropiedad> lista = negocio.Listar();

                    DDTiposProp.DataSource = lista;
                    DDTiposProp.DataValueField = "ID";
                    DDTiposProp.DataTextField = "Descripcion";
                    DDTiposProp.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
            }
        }
    }
}