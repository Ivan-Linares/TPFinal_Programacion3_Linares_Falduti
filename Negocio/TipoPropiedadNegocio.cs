using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class TipoPropiedadNegocio
    {
        public List<TiposPropiedad> Listar()
        {
            List<TiposPropiedad> lista = new List<TiposPropiedad>();
            ConexionBD datos = new ConexionBD();
            
            try
            {

                datos.Setear_Sp("SP_LISTAR_TIPOPROPIEDAD");

                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    TiposPropiedad aux = new TiposPropiedad();

                    aux.IdTipo = datos.Lector.GetInt32(0);
                    aux.Descripcion = datos.Lector.GetString(1);
                    aux.Estado = datos.Lector.GetBoolean(2);

                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
