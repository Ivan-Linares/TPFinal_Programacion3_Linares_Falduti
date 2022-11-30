using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class TipoUsuarioNegocio
    {
        public List<TipoUsuario> Listar()
        {
            List<TipoUsuario> lista = new List<TipoUsuario>();
            ConexionBD datos = new ConexionBD();

            try
            {

                datos.Setear_Sp("SP_LISTAR_TIPOUSUARIO");

                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    TipoUsuario aux = new TipoUsuario();

                    aux.Id = datos.Lector.GetInt32(0);
                    aux.Descripcion = datos.Lector.GetString(1);

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
