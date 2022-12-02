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
    public partial class UsuariosFormulario : System.Web.UI.Page
    {
        public bool PuedeEliminar;
        public bool EliminarCheck;
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = new Usuario();
                UsuarioNegocio negocio = new UsuarioNegocio();

                usuario.Tipo = new TipoUsuario();
                usuario.Tipo.Id = int.Parse(DDTiposUser.SelectedValue);

                usuario.Nombre = TextNombre.Text;
                usuario.Apellido = TextApellido.Text;
                usuario.Email = TextEmail.Text;
                usuario.Password = TextPassword.Text;
                usuario.FechaNacimiento = DateTime.Parse(TextFechaNac.Text.ToString());
                if (CheckEstado.Checked)
                    usuario.Estado = true;

                if (Request.QueryString["Id"] != null)
                {
                    usuario.IdUsuario = int.Parse(TextId.Text);
                    negocio.Modificar_Usuario(usuario);
                }
                else
                    negocio.Agregar_Usuario(usuario);

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
            UsuarioNegocio negocio = new UsuarioNegocio();

            if (ChkEliminar.Checked)
            {
                negocio.Eliminar_Usuario(int.Parse(TextId.Text));
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
                if (!IsPostBack)
                {
                    TipoUsuarioNegocio negocio = new TipoUsuarioNegocio();
                    List<TipoUsuario> lista = negocio.Listar();

                    DDTiposUser.DataSource = lista;
                    DDTiposUser.DataValueField = "Id";
                    DDTiposUser.DataTextField = "Descripcion";
                    DDTiposUser.DataBind();
                }

                if (Request.QueryString["Id"] != null)
                    CargarModificiacion(Request.QueryString["Id"]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void CargarModificiacion(string id)
        {
            PuedeEliminar = true;

            try
            {
                if (!IsPostBack)
                {
                    Usuario User = new Usuario();
                    UsuarioNegocio negocio = new UsuarioNegocio();
                    List<Usuario> lista = negocio.Listar();

                    foreach (Usuario us in lista)
                    {
                        if (us.IdUsuario == int.Parse(id))
                            User = us;
                    }

                    TextId.Text = id;
                    TextApellido.Text = User.Apellido;
                    TextNombre.Text = User.Nombre;
                    TextEmail.Text = User.Email;
                    TextPassword.Text = User.Password;
                    TextFechaNac.Text = User.FechaNacimiento.ToString("yyyy-MM-dd");

                    DDTiposUser.SelectedValue = User.Tipo.Id.ToString();

                    if (User.Estado)
                        CheckEstado.Checked = true;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}