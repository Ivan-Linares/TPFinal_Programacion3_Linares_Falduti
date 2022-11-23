using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Dominio;


namespace Negocio
{
    public class PropiedadNegocio
    {
        public List<Propiedad> Listar()
        {
            List<Propiedad> lista = new List<Propiedad>();
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_LISTAR_PROPIEDADES");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Propiedad aux = new Propiedad();

                    aux.IdPropiedad = datos.Lector.GetInt32(0);
                    aux.TipoPropiedad = new TiposPropiedad();
                    aux.TipoPropiedad.IdTipo = datos.Lector.GetInt32(1);
                    aux.TipoPropiedad.Descripcion = datos.Lector.GetString(2);
                    aux.Descripcion = datos.Lector.GetString(3);
                    aux.CantAmbientes = datos.Lector.GetInt32(4);
                    aux.Mts2 = datos.Lector.GetDecimal(5);
                    aux.Cochera = datos.Lector.GetBoolean(6);
                    aux.Direccion = datos.Lector.GetString(7);
                    aux.UrlImagen = datos.Lector.GetString(8);
                    aux.EnVenta = datos.Lector.GetBoolean(9);
                    aux.Precio = datos.Lector.GetDecimal(10);
                    aux.Estado = datos.Lector.GetBoolean(11);

                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void Agregar_Propiedad(Propiedad nueva)
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

        public void Modificar_Propiedad(Propiedad Prop)
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