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

                datos.Setear_Sp("");

                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    TiposPropiedad aux = new TiposPropiedad();


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
