using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Negocio
{
    public class VisitaNegocio
    {
        public List<Visita> Listar()
        {
            List<Visita> lista = new List<Visita>();
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_LISTAR_VISITAS");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Visita aux = new Visita();

                    aux.Id = datos.Lector.GetInt32(0);
                    aux.IdPropiedad = datos.Lector.GetInt32(1);
                    aux.IdVendedor = datos.Lector.GetInt32(2);
                    aux.Idusuario = datos.Lector.GetInt32(3);
                    aux.Fecha = datos.Lector.GetDateTime(4);
                    aux.Hora = datos.Lector.GetTimeSpan(5);
                    aux.Estado = datos.Lector.GetBoolean(6);

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

        public List<Visita> ListarPorId(int IdUsuario)
        {
            List<Visita> lista = new List<Visita>();
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_LISTAR_VISITAR_PORID");
                datos.setearParametro("@IDUSUARIO", IdUsuario);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Visita aux = new Visita();

                    aux.Id = datos.Lector.GetInt32(0);
                    aux.IdPropiedad = datos.Lector.GetInt32(1);
                    aux.IdVendedor = datos.Lector.GetInt32(2);
                    aux.Idusuario = datos.Lector.GetInt32(3);
                    aux.Fecha = datos.Lector.GetDateTime(4);
                    aux.Hora = datos.Lector.GetTimeSpan(5);
                    aux.Estado = datos.Lector.GetBoolean(6);

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

        public List<Visita> ListarPorIdVendededor(int IdVendedor)
        {
            List<Visita> lista = new List<Visita>();
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_LISTAR_VISITAR_PORID_VENDEDOR");
                datos.setearParametro("@IDVENDEDOR", IdVendedor);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Visita aux = new Visita();

                    aux.Id = datos.Lector.GetInt32(0);
                    aux.IdPropiedad = datos.Lector.GetInt32(1);
                    aux.IdVendedor = datos.Lector.GetInt32(2);
                    aux.Idusuario = datos.Lector.GetInt32(3);
                    aux.Fecha = datos.Lector.GetDateTime(4);
                    aux.Hora = datos.Lector.GetTimeSpan(5);
                    aux.Estado = datos.Lector.GetBoolean(6);

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

        public void AgregarVisita(Visita NewVisita)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_AGREGAR_VISITA");

                datos.setearParametro("@IDPROPIEDAD", NewVisita.IdPropiedad);
                datos.setearParametro("@IDVENDEDOR", NewVisita.IdVendedor);
                datos.setearParametro("@IDUSUARIO", NewVisita.Idusuario);
                datos.setearParametro("@FECHA", NewVisita.Fecha);
                datos.setearParametro("@HORA", NewVisita.Hora);
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

        public void ModificarVisita(Visita NewVisita)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_MODIFICAR_VISITA");

                datos.setearParametro("@IDVISTA", NewVisita.Id);
                datos.setearParametro("@IDPROPIEDAD", NewVisita.IdPropiedad);
                datos.setearParametro("@IDVENDEDOR", NewVisita.IdVendedor);
                datos.setearParametro("@IDUSUARIO", NewVisita.Idusuario);
                datos.setearParametro("@FECHA", NewVisita.Fecha);
                datos.setearParametro("@HORA", NewVisita.Hora);
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

        public void EliminarVisita(int delete)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_ELIMINAR_VISITA");

                datos.setearParametro("@IDVISITA", delete);

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
