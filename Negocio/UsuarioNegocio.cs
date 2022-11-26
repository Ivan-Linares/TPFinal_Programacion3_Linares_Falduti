using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class UsuarioNegocio
    {
        public List<Usuario> Listar()
        {
            List<Usuario> lista = new List<Usuario>();
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_LISTAR_USUARIO");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Usuario aux = new Usuario();

                    aux.IdUsuario = datos.Lector.GetInt32(0);
                    aux.Nombre = datos.Lector.GetString(1);
                    aux.Apellido = datos.Lector.GetString(2);
                    aux.Email = datos.Lector.GetString(3);
                    aux.FechaNacimiento = datos.Lector.GetDateTime(4);
                    aux.Tipo = new TipoUsuario();
                    aux.Tipo.Nivel = datos.Lector.GetInt32(5);
                    aux.Tipo.Descripcion = datos.Lector.GetString(6);
                    aux.Password = datos.Lector.GetString(7);
                    aux.Estado = datos.Lector.GetBoolean(8);

                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

        public void Agregar_Usuario(Usuario NewUsuario)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_AGREGAR_PROPIEDAD");

                datos.setearParametro("", NewUsuario);

                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
