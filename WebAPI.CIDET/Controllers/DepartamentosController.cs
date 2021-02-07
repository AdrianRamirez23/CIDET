using Model.CIDET.Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using WebAPI.CIDET.Models;

namespace WebAPI.CIDET.Controllers
{
    [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*")]
    public class DepartamentosController : ApiController
    {
        //GET:api/Departamentos
        [HttpGet]
        public List<Departamentos> ObtenerDepartamentos()
        {
            try
            {
                List<Model.CIDET.Maestros.Departamentos> DepBack = new List<Model.CIDET.Maestros.Departamentos>();
                List<Departamentos> ListDepartamentos = new List<Departamentos>();
                DepBack = new Fachada().ObtenerDepartamentos();

                foreach (Model.CIDET.Maestros.Departamentos ListDep in DepBack)
                {
                    Departamentos dep = new Departamentos();
                    dep.CodigoDepartamento = ListDep.CodigoDepartamento;
                    dep.NombreDepartamento = ListDep.NombreDepartamento;
                    ListDepartamentos.Add(dep);
                }
                return ListDepartamentos;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
