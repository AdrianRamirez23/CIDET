using Model.CIDET.Maestros;
using Model.CIDET.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.CIDET.Servicios
{
    public class Fachada
    {
        public List<Departamentos> ObtenerDepartamentos()
        {
            return new DepartamentoBL().ObtenerDepartamentos();
        }
        public List<Municipios> ObtenerMunicipios()
        {
            return new MunicipioBL().ObtenerMunicipios();
        }
        public void CrearMunicipio(Municipios mun)
        {
            new MunicipioBL().CrearMunicipio(mun);
        }
        public Municipios ConsultarMunicipio(int id)
        {
            return new MunicipioBL().ConsultarMunicipio(id);
        }
        public void EditarMunicipio(Municipios mun)
        {
            new MunicipioBL().EditarMunicipio(mun);
        }
        public void EliminarMunicipio(int id)
        {
            new MunicipioBL().EliminarMunicipio(id);
        }
    }
}
