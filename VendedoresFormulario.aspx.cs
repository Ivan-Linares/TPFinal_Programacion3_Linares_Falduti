using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion_Web
{
    public partial class VendedoresForm : System.Web.UI.Page
    {
        public bool PuedeEliminar;
        public bool EliminarCheck;
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Vendedor newVendedor = new Vendedor();
                VendedorNegocio Negocio = new VendedorNegocio();

                newVendedor.Nombre = txtNombres.Text;
                newVendedor.Apellido = txtApellidos.Text;
                newVendedor.Sexo = ddlSexo.SelectedValue.ToString();
                newVendedor.Legajo = txtNroLegajo.Text;
                newVendedor.Dni = txtDni.Text;
                newVendedor.Domicilio = txtDomicilio.Text;
                newVendedor.FechaIngreso = DateTime.Parse(txtFechaIng.Text.ToString()); 

                if (Request.QueryString["Id"] != null)
                {
                    newVendedor.IdVendedor = int.Parse(TextId.Text);
                    Negocio.ModificarVendedor(newVendedor);
                }
                else
                    Negocio.AgregarVendedor(newVendedor);

                Response.Redirect("MenuAdmin.aspx", false);
            }
            catch (Exception ex)
            { 
                throw ex;
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            EliminarCheck = true;
        }

        protected void BtnConfirmarElim_Click(object sender, EventArgs e)
        {
            VendedorNegocio negocio = new VendedorNegocio();

            if (ChkEliminar.Checked)
            {
                negocio.EliminarVendedor(int.Parse(TextId.Text));
                Response.Redirect("MenuAdmin.aspx", false);
            }
        }

        private void Cargar()
        {
            TextId.Enabled = false;

            EliminarCheck = false;
            PuedeEliminar = false;

            try
            {
                if (Request.QueryString["Id"] != null)
                    CargarModificiacion(Request.QueryString["Id"]);
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw;
            }
        }

        private void CargarModificiacion(string id)
        {
            PuedeEliminar = true;

            try
            {
                if (!IsPostBack)
                {
                    VendedorNegocio negocio = new VendedorNegocio();
                    List<Vendedor> lista = negocio.Listar();
                    Vendedor Vendedor = new Vendedor();

                    foreach (Vendedor vender in lista)
                    {
                        if (vender.IdVendedor == int.Parse(id))
                            Vendedor = vender;
                    }

                    TextId.Text = Vendedor.IdVendedor.ToString();
                    txtNombres.Text = Vendedor.Nombre.ToString();
                    txtApellidos.Text = Vendedor.Apellido.ToString();
                    ddlSexo.Text = Vendedor.Sexo.ToString();
                    txtNroLegajo.Text = Vendedor.Legajo.ToString();
                    txtDni.Text = Vendedor.Dni.ToString();
                    txtDomicilio.Text = Vendedor.Domicilio.ToString();
                    txtFechaIng.Text = Vendedor.FechaIngreso.ToString("yyyy-MM-dd");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
