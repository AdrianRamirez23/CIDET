using Model.CIDET.ADO;
using Model.CIDET.Maestros;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.CIDET.Negocio
{
    class MunicipioBL
    {
        internal List<Municipios> ObtenerMunicipios()
        {
            return new MuniciopioADO().ObtenerMunicipios();
        }
        internal void CrearMunicipio(Municipios mun)
        {
            new MuniciopioADO().CrearMunicipio(mun);
        }
        internal Municipios ConsultarMunicipio(int id)
        {
            return new MuniciopioADO().ConsultarMunicipio(id);
        }
        internal void EditarMunicipio(Municipios mun)
        {
            new MuniciopioADO().EditarMunicipio(mun);
        }
        internal void EliminarMunicipio(int id)
        {
            new MuniciopioADO().EliminarMunicipio(id);
        }
    }
}
