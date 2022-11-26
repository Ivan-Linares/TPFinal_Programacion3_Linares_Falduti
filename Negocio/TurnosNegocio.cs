using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class TurnosNegocio
    {
        public List<Turnos> Listar()
        {
            List<Turnos> lista = new List<Turnos>();
            ConexionBD datos = new ConexionBD();

            try
            {
                datos.Setear_Sp("");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Turnos aux = new Turnos();

                    //completar aux con las cosas del sp cuando haya tabla sql

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
