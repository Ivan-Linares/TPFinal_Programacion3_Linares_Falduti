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
                    aux.FechaNacimiento = DateTime.Parse(datos.Lector["FECHA_NACIMIENTO"].ToString());
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
                datos.Setear_Sp("SP_AGREGAR_USUARIO");

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



        public void Agregar_Usuario_Registracion(Usuario NewUsuario)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_AGREGAR_USUARIO_REGISTRACION");

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
                datos.setearParametro("@NIVEL", UpdatedUsuario.Tipo.Id);
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

        public void Eliminar_Usuario(int Id)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_ELIMINAR_USUARIO");

                datos.setearParametro("@IDUSUARIO", Id);

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
        public Usuario Loguear(Usuario ingreso)
        {

            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_BUSCAR_USUARIO");
                datos.setearParametro("@user", ingreso.Email);
                datos.setearParametro("@pass", ingreso.Password);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    ingreso.IdUsuario = (int)datos.Lector["IDUSUARIO"];
                    ingreso.Tipo=new TipoUsuario();
                    ingreso.Tipo.Id = (int)datos.Lector["NIVEL_ACCESO"];
                    ingreso.Email = (string)datos.Lector["EMAIL"];
                    ingreso.Password = (string)datos.Lector["CONTRESEÑA"];


                }
                return ingreso;

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