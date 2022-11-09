using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class EmpleadoNegocio
    {
        public List<Empleado> listar()
        {
            List<Empleado> lista = new List<Empleado>();
            ConexionBD datos = new ConexionBD();
            try
            {

                datos.Setear_Sp("");

                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Empleado aux = new Empleado();


                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void Agregar_Empleado(Empleado nueva)
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

        public void ModificarEmpleado(Empleado Prop)
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

