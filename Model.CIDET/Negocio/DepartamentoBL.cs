using Model.CIDET.ADO;
using Model.CIDET.Maestros;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.CIDET.Negocio
{
    class DepartamentoBL
    {
        internal List<Departamentos> ObtenerDepartamentos()
        {
            return new DepartamentoADO().ObtenerDepartamentos();
        }
    }
}
