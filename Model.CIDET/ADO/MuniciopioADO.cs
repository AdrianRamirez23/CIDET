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
    class MuniciopioADO
    {
        private string Conexion = ConfigurationManager.ConnectionStrings["SQLConection"].ConnectionString;
        internal void CrearMunicipio(Municipios mun)
        {

            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Municipios_CRUD 1,'" + mun.id + "','" + mun.Nombre + "','" + mun.Departamento + "','" + mun.CodigoDANE + "','" + mun.DistritoCapital + "' ";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        internal List<Municipios> ObtenerMunicipios()
        {
            List<Municipios> ListaMun = new List<Municipios>();
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Municipios_CRUD 2,'','','','','' ";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    Municipios mun = new Municipios();
                    mun.id = rdr[0] == DBNull.Value ? 0 : rdr.GetInt32(0);
                    mun.Nombre = rdr[1] == DBNull.Value ? "" : rdr.GetString(1).Trim();
                    mun.Departamento = rdr[2] == DBNull.Value ? "" : rdr.GetString(2).Trim();
                    mun.CodigoDANE = rdr[3] == DBNull.Value ? "" : rdr.GetString(3).Trim();
                    mun.DistritoCapital = rdr[4] == DBNull.Value ? "" : rdr.GetString(4).Trim();
                    ListaMun.Add(mun);
                }
                return ListaMun;
            }
        }
        internal Municipios ConsultarMunicipio(int id)
        {
            Municipios mun = new Municipios();
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Municipios_CRUD 3,'"+id+"','','','','' ";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    mun.id = rdr[0] == DBNull.Value ? 0 : rdr.GetInt32(0);
                    mun.Nombre = rdr[1] == DBNull.Value ? "" : rdr.GetString(1).Trim();
                    mun.Departamento = rdr[2] == DBNull.Value ? "" : rdr.GetString(2).Trim();
                    mun.CodigoDANE = rdr[3] == DBNull.Value ? "" : rdr.GetString(3).Trim();
                    mun.DistritoCapital = rdr[4] == DBNull.Value ? "" : rdr.GetString(4).Trim();
                }
                return mun;
            }
        }
        internal void EditarMunicipio(Municipios mun)
        {

            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Municipios_CRUD 4,'" + mun.id + "','" + mun.Nombre + "','" + mun.Departamento + "','" + mun.CodigoDANE + "','" + mun.DistritoCapital + "' ";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        internal void EliminarMunicipio(int id)
        {

            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Municipios_CRUD 5,'" +id+"','','','','' ";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
