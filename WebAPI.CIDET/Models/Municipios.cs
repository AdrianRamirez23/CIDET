using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.CIDET.Models
{
    public class Municipios
    {
        public int id { get; set; }
        public string Nombre { get; set; }
        public string Departamento { get; set; }
        public string CodigoDANE { get; set; }
        public string DistritoCapital { get; set; }
    }
}