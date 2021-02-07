using Model.CIDET.Maestros;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.CIDET.ADO
{
    class DepartamentoADO
    {
        private string Conexion = ConfigurationManager.ConnectionStrings["SQLConection"].ConnectionString;
        internal List<Departamentos> ObtenerDepartamentos()
        {
            List<Departamentos> ListaDep = new List<Departamentos>();
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Departamentos_Lista ";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    Departamentos dep = new Departamentos();
                    dep.CodigoDepartamento = rdr[0] == DBNull.Value ? "" : rdr.GetString(0).Trim();
                    dep.NombreDepartamento = rdr[1] == DBNull.Value ? "" : rdr.GetString(1).Trim();
                    ListaDep.Add(dep);
                }
                return ListaDep;
            }
        }
    }
}
