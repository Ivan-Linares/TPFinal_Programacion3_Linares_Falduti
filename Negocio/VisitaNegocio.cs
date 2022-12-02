using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class VisitaNegocio
    {
        public List<Visita> Listar()
        {
            List<Visita> lista = new List<Visita>();
            ConexionBD datos = new ConexionBD();
            try
            {
                datos.Setear_Sp("SP_LISTAR_VISITAS");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Visita aux = new Visita();

                    aux.Id = datos.Lector.GetInt32(0);

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
