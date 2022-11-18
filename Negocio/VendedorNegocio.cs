using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class VendedorNegocio
    {
        public List<Vendedor> Listar()
        {
            List<Vendedor> lista = new List<Vendedor>();
            ConexionBD datos = new ConexionBD();
            try
            {

                datos.Setear_Sp("");

                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Vendedor aux = new Vendedor();


                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void Agregar_Empleado(Vendedor nueva)
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

        public void ModificarEmpleado(Vendedor Prop)
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

