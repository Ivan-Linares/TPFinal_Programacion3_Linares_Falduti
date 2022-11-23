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
            try
            {
                Propiedad NewPropiedad = new Propiedad();
                PropiedadNegocio Negocio = new PropiedadNegocio();

                NewPropiedad.Descripcion = TextDescrip.Text;
                NewPropiedad.CantAmbientes = int.Parse(TextCantAmb.Text);
                NewPropiedad.Mts2 = decimal.Parse(TextMts.Text);
                NewPropiedad.Direccion = TextDireccion.Text;
                NewPropiedad.UrlImagen = TextUrlImagen.Text;
                NewPropiedad.Precio = decimal.Parse(TextPrecio.Text);

                if (CheckCochera.Checked) NewPropiedad.Cochera = true;
                if(CheckVenta.Checked) NewPropiedad.EnVenta = true;

                NewPropiedad.TipoPropiedad = new TiposPropiedad();
                NewPropiedad.TipoPropiedad.IdTipo = int.Parse(DDTiposProp.SelectedValue);
                
                Negocio.Agregar_Propiedad(NewPropiedad);
                Response.Redirect("ListadoPropiedades.aspx", false);
            }
            catch(Exception ex)
            {
                Session.Add("Error", ex);
                throw;
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
                    DDTiposProp.DataValueField = "IdTipo";
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