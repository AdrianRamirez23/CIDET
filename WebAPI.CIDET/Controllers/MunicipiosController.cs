
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
    [EnableCors(origins: "http://localhost:4200",headers:"*",methods:"*")]
    public class MunicipiosController : ApiController
    {
        //GET:api/Municipios
        [HttpGet]
        public List<Municipios> ListarMunicipios()
        {
            try
            {
                List<Model.CIDET.Maestros.Municipios> MunBack = new List<Model.CIDET.Maestros.Municipios>();
                List< Municipios> ListMuns = new List<Municipios>();
                MunBack = new Fachada().ObtenerMunicipios();

                foreach (Model.CIDET.Maestros.Municipios Muns in MunBack)
                {
                    Municipios Mun = new Municipios();
                    Mun.id = Muns.id;
                    Mun.Nombre = Muns.Nombre;
                    Mun.Departamento = Muns.Departamento;
                    Mun.CodigoDANE = Muns.CodigoDANE;
                    Mun.DistritoCapital = Muns.DistritoCapital;
                    ListMuns.Add(Mun);
                }
                return ListMuns;
            }
            catch (Exception)
            {
                throw;
            }
        }
        //GET:api/Municipios{id}
        [HttpGet]
        public Municipios ConsultarMunicipio(int id)
        {
            try
            {
               Model.CIDET.Maestros.Municipios MunBack = new Model.CIDET.Maestros.Municipios();
               Municipios Muns = new Municipios();
               MunBack = new Fachada().ConsultarMunicipio(id);

               Muns.id = MunBack.id;
               Muns.Nombre = MunBack.Nombre;
               Muns.Departamento = MunBack.Departamento;
               Muns.CodigoDANE = MunBack.CodigoDANE;
               Muns.DistritoCapital = MunBack.DistritoCapital;

               return Muns;
            }
            catch (Exception)
            {
                throw;
            }
        }
        //POST:api/CrearMunicipios
        [HttpPost]
        public IHttpActionResult CrearMunicipio(Municipios mun)
        {
            try
            {
                if (mun.Nombre == null)
                {
                    return NotFound();
                }
                else
                {
                    Model.CIDET.Maestros.Municipios muni = new Model.CIDET.Maestros.Municipios();

                    muni.id = mun.id;
                    muni.Nombre = mun.Nombre;
                    muni.Departamento = mun.Departamento;
                    muni.CodigoDANE = mun.CodigoDANE;
                    muni.DistritoCapital = mun.DistritoCapital;

                    new Fachada().CrearMunicipio(muni);

                    return Ok();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        //PUT:api/EditarMunicipios
        [HttpPut]
        public IHttpActionResult EditarMunicipio(Municipios mun)
        {
            try
            {
                if (mun.Nombre == null)
                {
                    return NotFound();
                }
                else
                {
                    Model.CIDET.Maestros.Municipios muni = new Model.CIDET.Maestros.Municipios();

                    muni.id = mun.id;
                    muni.Nombre = mun.Nombre;
                    muni.Departamento = mun.Departamento;
                    muni.CodigoDANE = mun.CodigoDANE;
                    muni.DistritoCapital = mun.DistritoCapital;

                    new Fachada().EditarMunicipio(muni);

                    return Ok();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
        //PUT:api/EditarMunicipios
        [HttpDelete]
        public IHttpActionResult EliminarMunicipio(int id)
        {
            try
            {
                Model.CIDET.Maestros.Municipios MunBack = new Model.CIDET.Maestros.Municipios();
                MunBack = new Fachada().ConsultarMunicipio(id);
                if(string.IsNullOrEmpty(MunBack.Nombre))
                {
                    return NotFound();
                }
                else
                {
                    new Fachada().EliminarMunicipio(id);
                    return Ok();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
