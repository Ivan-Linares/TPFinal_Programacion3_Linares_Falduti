using Dominio;
using System;
using System.Collections.Generic;

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
                    aux.Tipo.Id = datos.Lector.GetInt32(5);
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

                datos.setearParametro("@NOMBRE", NewUsuario.Nombre);
                datos.setearParametro("@APELLIDO", NewUsuario.Apellido);
                datos.setearParametro("@EMAIL", NewUsuario.Email);
                datos.setearParametro("@FECHA_NAC", NewUsuario.FechaNacimiento);
                datos.setearParametro("@NIVEL", NewUsuario.Tipo.Id);
                datos.setearParametro("@PASS", NewUsuario.Password);
                datos.setearParametro("@ESTADO", 1);

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

        public void Modificar_Usuario(Usuario UpdatedUsuario)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_MODIFICAR_USUARIO");

                datos.setearParametro("@IDUSUARIO", UpdatedUsuario.IdUsuario);
                datos.setearParametro("@NOMBRE", UpdatedUsuario.Nombre);
                datos.setearParametro("@APELLIDO", UpdatedUsuario.Apellido);
                datos.setearParametro("@EMAIL", UpdatedUsuario.Email);
                datos.setearParametro("@FECHA_NAC", UpdatedUsuario.FechaNacimiento);
                //datos.setearParametro("@NIVEL", UpdatedUsuario.Tipo.Nivel);
                datos.setearParametro("@PASS", UpdatedUsuario.Password);
                datos.setearParametro("@ESTADO", UpdatedUsuario.Estado);

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

        public void Eliminar_Usuario(Usuario DeletedUsuario)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_ELIMINAR_USUARIO");

                datos.setearParametro("@IDUSUARIO", DeletedUsuario.IdUsuario);
                
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
