﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Cliente : Usuario
    {
        Cliente()
        {
            NivelAcceso = Nivel_Acceso.CLIENTE;
        }
    }
}
