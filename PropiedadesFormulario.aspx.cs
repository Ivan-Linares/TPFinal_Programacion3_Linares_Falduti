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
            Cargar(sender, e);
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

                NewPropiedad.TipoPropiedad = new TiposPropiedad();
                NewPropiedad.TipoPropiedad.IdTipo = int.Parse(DDTiposProp.SelectedValue);

                NewPropiedad.Descripcion = TextDescrip.Text;
                NewPropiedad.CantAmbientes = int.Parse(TextCantAmb.Text);
                NewPropiedad.Mts2 = decimal.Parse(TextMts.Text);
                NewPropiedad.Direccion = TextDireccion.Text;
                NewPropiedad.UrlImagen = TextUrlImagen.Text;
                NewPropiedad.Precio = decimal.Parse(TextPrecio.Text);

                if (CheckCochera.Checked) NewPropiedad.Cochera = true;
                if (CheckVenta.Checked) NewPropiedad.EnVenta = true;

                if (Request.QueryString["Id"] != null)
                {
                    NewPropiedad.IdPropiedad = int.Parse(TextId.Text);
                    Negocio.Modificar_Propiedad(NewPropiedad);
                }
                else
                    Negocio.Agregar_Propiedad(NewPropiedad);

                Response.Redirect("ListadoPropiedades.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw;
            }
        }

        private void Cargar(object sender, EventArgs e)
        {
            TextId.Enabled = false;
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

                if (Request.QueryString["Id"] != null)
                    CargarModificiacion(sender, e, Request.QueryString["Id"]);
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw;
            }

        }

        private void CargarModificiacion(object sender, EventArgs e, string id)
        {
            try
            {
                PropiedadNegocio negocio = new PropiedadNegocio();
                List<Propiedad> lista = negocio.Listar();
                Propiedad propiedad = new Propiedad();

                foreach (Propiedad prop in lista)
                {
                    if (prop.IdPropiedad == int.Parse(id))
                        propiedad = prop;
                }

                TextId.Text = propiedad.IdPropiedad.ToString();
                TextDescrip.Text = propiedad.Descripcion;
                TextCantAmb.Text = propiedad.CantAmbientes.ToString();
                TextMts.Text = propiedad.Mts2.ToString();
                TextDireccion.Text = propiedad.Direccion;
                TextUrlImagen.Text = propiedad.UrlImagen;
                TextPrecio.Text = propiedad.Precio.ToString();

                if (propiedad.EnVenta)
                    CheckVenta.Checked = true;
                if (propiedad.Cochera)
                    CheckCochera.Checked = true;

                DDTiposProp.SelectedValue = propiedad.TipoPropiedad.IdTipo.ToString();

                TextUrlImagen_TextChanged(sender, e);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}