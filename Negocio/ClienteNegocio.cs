using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
namespace Negocio
{
    public class ClienteNegocio
    {
        public List<Cliente> listar()
        {
            List<Cliente> lista = new List<Cliente>();
            ConexionBD datos = new ConexionBD();
            try
            {

                datos.Setear_Sp("");

                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Cliente aux = new Cliente();


                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void Agregar_Empleado(Cliente nuevo)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("");

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

        public void ModificarEmpleado(Cliente Prop)
        {
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("");

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




