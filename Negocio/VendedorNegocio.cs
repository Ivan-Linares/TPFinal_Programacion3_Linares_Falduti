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
                datos.Setear_Sp("SP_LISTAR_VENDORES");

                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Vendedor aux = new Vendedor();

                    aux.IdVendedor = datos.Lector.GetInt32(0);
                    aux.Legajo = datos.Lector.GetString(1);
                    aux.Dni = datos.Lector.GetString(2);
                    aux.Domicilio = datos.Lector.GetString(3);
                    aux.FechaIngreso = datos.Lector.GetDateTime(4);
                    aux.Estado = datos.Lector.GetBoolean(5);

                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void AgregarVendedor(Vendedor NewVendedor)
        {
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("SP_AGREGAR_VENDEDOR");
                
                datos.setearParametro("@LEGAJO", NewVendedor.Legajo);
                datos.setearParametro("@DNI", NewVendedor.Dni);
                datos.setearParametro("@DOMICILIO", NewVendedor.Domicilio);
                datos.setearParametro("@FEC_INGRESO", NewVendedor.FechaIngreso);
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

        public void ModificarVendedor(Vendedor UpdatedVendedor)
        {
            ConexionBD datos = new ConexionBD();
            
            try
            {
                datos.Setear_Sp("SP_MODIFICAR_VENDEDOR");

                datos.setearParametro("@IDVENDEDOR", UpdatedVendedor.IdVendedor);
                datos.setearParametro("@LEGAJO", UpdatedVendedor.Legajo);
                datos.setearParametro("@DNI", UpdatedVendedor.Dni);
                datos.setearParametro("@DOMICILIO", UpdatedVendedor.Domicilio);
                datos.setearParametro("@FEC_INGRESO", UpdatedVendedor.FechaIngreso);
                datos.setearParametro("@ESTADO", UpdatedVendedor.Estado);

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

        public void EliminarVendedor(Vendedor DeletedVendedor)
        {
            ConexionBD datos = new ConexionBD();
            
            try
            {
                datos.Setear_Sp("SP_ELIMINAR_VENDEDOR");

                datos.setearParametro("@IDVENDEDOR", DeletedVendedor.IdVendedor);

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

