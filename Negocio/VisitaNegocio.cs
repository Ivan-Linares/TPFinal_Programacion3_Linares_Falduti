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
                    aux.Fecha = datos.Lector.GetDateTime(1);
                    aux.Hora = datos.Lector.GetTimeSpan(2);
                    aux.Nombre = datos.Lector.GetString(3);
                    aux.Apellido = datos.Lector.GetString(4);
                    aux.NumeroPropiedad = datos.Lector.GetInt32(5);
                    aux.Telefono = datos.Lector.GetString(6);
                    aux.Estado = datos.Lector.GetBoolean(7);



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

                datos.setearParametro("@FECHA", NewVisita.Fecha);
                datos.setearParametro("@HORA", NewVisita.Hora);
                datos.setearParametro("@NOMBRE", NewVisita.Nombre);
                datos.setearParametro("@APELLIDO", NewVisita.Apellido);
                datos.setearParametro("@NUMPROPIEDAD", NewVisita.NumeroPropiedad); 
                datos.setearParametro("@TELEFONO", NewVisita.Telefono);
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
                datos.setearParametro("@IDVISITA", NewVisita.Id);
                datos.setearParametro("@FECHA", NewVisita.Fecha);
                datos.setearParametro("@HORA", NewVisita.Hora);
                datos.setearParametro("@NOMBRE", NewVisita.Nombre);
                datos.setearParametro("@APELLIDO", NewVisita.Apellido);
                datos.setearParametro("@NUMPROPIEDAD", NewVisita.NumeroPropiedad);
                datos.setearParametro("@TELEFONO", NewVisita.Telefono);
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
