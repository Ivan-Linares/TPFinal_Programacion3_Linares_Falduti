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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ingresos"] == null)
            {
                //Response.Redirect("/default.aspx");
            }
            else if (Session["ingresos"] != null)
            {// no deja entrar tamp a tipo de usuario que le coloquemo probando==1?
                int probando;
                probando = int.Parse(Session["ingresos"].ToString());
                if (probando == 0) { Response.Redirect("/default.aspx"); }

            }


            try
            {
                if (!IsPostBack)
                {



                    if (Request.QueryString["id"] != null && btnModificar.Visible == false)
                    {   //captura el id 
                        Int64 id = Int64.Parse(Request.QueryString["id"].ToString());
                        // copia en lista temporal >> lo que hay en session
                        List<Vendedor> temporal = ((List<Vendedor>)Session["listaUsuarios"]);
                        //crea un objeto usuario llamado seleccionado y le copia lo que hay en la lista temporal q viene de session
                        Vendedor seleccionado = temporal.Find(x => x.IdVendedor == id);
                        //agrega los datos la pantalla .
                        txtApellidos.Text = seleccionado.Apellido;
                        txtNombres.Text = seleccionado.Nombre;
                        txtFechaIng.Text = seleccionado.FechaIngreso.ToString("yyyy-MM-dd");
                        ddlSexo.SelectedValue = seleccionado.Sexo;
                        txtDni.Text = seleccionado.Dni.ToString();

                        btnRegistrar.Visible = false;
                        btnModificar.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }
        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                Vendedor usuario = new Vendedor();
                VendedorNegocio negocio = new VendedorNegocio();

                usuario.Apellido = txtApellidos.Text;
                usuario.Nombre = txtNombres.Text;
                usuario.FechaIngreso = DateTime.Parse(txtFechaIng.Text);
                usuario.Sexo = ddlSexo.SelectedValue;

                usuario.Dni = txtDni.Text;



                negocio.AgregarVendedor(usuario);


                Session["listaUsuarios"] = null;

                Response.Redirect("UsuarioListado.aspx", false);

            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                Vendedor usuario = new Vendedor();
                VendedorNegocio negocio = new VendedorNegocio();

                usuario.IdVendedor = int.Parse(Request.QueryString["id"].ToString());
                usuario.Apellido = txtApellidos.Text;
                usuario.Nombre = txtNombres.Text;
                usuario.FechaIngreso = DateTime.Parse(txtFechaIng.Text);
                usuario.Sexo = ddlSexo.SelectedValue;
                usuario.Dni = txtDni.Text;

                negocio.ModificarVendedor(usuario);

                Session["listaUsuarios"] = null;

                Response.Redirect("UsuarioListado.aspx", false);
            }
            catch (Exception ex)
            {

                throw;
            }
        }

    }
}
