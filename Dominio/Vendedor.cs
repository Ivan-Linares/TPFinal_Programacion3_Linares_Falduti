﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Vendedor : Persona
    {
        public int Legajo { get; set; }
        public DateTime FechaIngreso { get; set; }
        public string User { get; set; }
        public string Password { get; set; }
    }
}
