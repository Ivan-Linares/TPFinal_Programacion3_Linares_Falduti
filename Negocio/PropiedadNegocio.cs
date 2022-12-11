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
                    if (!(datos.Lector.GetString(8) is null))
                        aux.UrlImagen = datos.Lector.GetString(8);
                    else aux.UrlImagen = "./Images/PlaceHolder.png";
                    aux.EnVenta = datos.Lector.GetBoolean(9);
                    aux.Precio = datos.Lector.GetDecimal(10);
                    aux.Estado = datos.Lector.GetBoolean(11);
                    aux.IdVendedor = datos.Lector.GetInt32(12);

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

        public void Agregar_Propiedad(Propiedad NewPropiedad)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_AGREGAR_PROPIEDAD");

                datos.setearParametro("@TIPO_PROPIEDAD", NewPropiedad.TipoPropiedad.IdTipo);
                datos.setearParametro("@DESCRIPCION", NewPropiedad.Descripcion);
                datos.setearParametro("@CANT_AMBIENTES", NewPropiedad.CantAmbientes);
                datos.setearParametro("@MTS2", NewPropiedad.Mts2);
                datos.setearParametro("@COCHERA", NewPropiedad.Cochera);
                datos.setearParametro("@DIRECCION", NewPropiedad.Direccion);
                datos.setearParametro("@URL", NewPropiedad.UrlImagen);
                datos.setearParametro("@VENTA", NewPropiedad.EnVenta);
                datos.setearParametro("@PRECIO", NewPropiedad.Precio);
                datos.setearParametro("@ESTADO", 1);
                datos.setearParametro("@IDVENDEDOR", NewPropiedad.IdVendedor);

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

        public void Modificar_Propiedad(Propiedad AlterPropiedad)
        {
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_MODIFICAR_PROPIEDAD");

                datos.setearParametro("@IDPROPIEDAD", AlterPropiedad.IdPropiedad);
                datos.setearParametro("@TIPO_PROPIEDAD", AlterPropiedad.TipoPropiedad.IdTipo);
                datos.setearParametro("@DESCRIPCION", AlterPropiedad.Descripcion);
                datos.setearParametro("@CANT_AMBIENTES", AlterPropiedad.CantAmbientes);
                datos.setearParametro("@MTS2", AlterPropiedad.Mts2);
                datos.setearParametro("@COCHERA", AlterPropiedad.Cochera);
                datos.setearParametro("@DIRECCION", AlterPropiedad.Direccion);
                datos.setearParametro("@URL", AlterPropiedad.UrlImagen);
                datos.setearParametro("@VENTA", AlterPropiedad.EnVenta);
                datos.setearParametro("@PRECIO", AlterPropiedad.Precio);
                datos.setearParametro("@ESTADO", AlterPropiedad.Estado);
                datos.setearParametro("@IDVENDEDOR", AlterPropiedad.IdVendedor);

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

        public void Eliminar_Propiedad(int IdDelete)
        {
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_ELIMINAR_PROPIEDAD");

                datos.setearParametro("@IDPROPIEDAD", IdDelete);

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

        public List<Propiedad> ListarPorIdVendededor(string email)
        {
            List<Propiedad> lista = new List<Propiedad>();
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_LISTAR_PROPIEDADES_PORID_VENDEDOR");
                datos.setearParametro("@EMAILVEND", email);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Propiedad aux = new Propiedad();

                    aux.IdPropiedad = datos.Lector.GetInt32(0);
                    aux.TipoPropiedad = new TiposPropiedad();
                    aux.TipoPropiedad.IdTipo = datos.Lector.GetInt32(1);
                    aux.TipoPropiedad.Descripcion = datos.Lector.GetString(2);
                    aux.Direccion = datos.Lector.GetString(3);
                    aux.EnVenta = datos.Lector.GetBoolean(4);

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
    }
}