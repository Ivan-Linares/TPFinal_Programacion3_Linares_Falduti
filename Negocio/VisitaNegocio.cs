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
                    aux.IdPropiedad = datos.Lector.GetInt32(2);
                    aux.Fecha = datos.Lector.GetDateTime(3);
                    aux.Hora = datos.Lector.GetTimeSpan(4);
                    aux.Estado = datos.Lector.GetBoolean(5);

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

                datos.setearParametro("@IDPROPIEDAD", NewVisita.Fecha);
                datos.setearParametro("@IDUSUARIO", NewVisita.Fecha);
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

                datos.setearParametro("@IDVISITA", NewVisita.Fecha);
                datos.setearParametro("@IDPROPIEDAD", NewVisita.Fecha);
                datos.setearParametro("@IDUSUARIO", NewVisita.Fecha);
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
