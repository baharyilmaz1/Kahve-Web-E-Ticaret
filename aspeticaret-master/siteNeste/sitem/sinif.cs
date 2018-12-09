using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace sitem
{
    public class sinif
    {
        public SqlConnection Connection()
        {
            SqlConnection Connect = new SqlConnection(@"Server =DEVELOPER; Database = eticaretDB; Trusted_Connection = True;");
            Connect.Open();
            return (Connect);
        }
        public int cmd(string sqlCumle)
        {
            SqlConnection Connect = this.Connection();
            SqlCommand cmd = new SqlCommand(sqlCumle, Connect);
            int sonuc = 0;
            try
            {
                sonuc = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message + "(" + sqlCumle + ")");
            }
            cmd.Dispose();
            Connect.Close();
            Connect.Dispose();
            return (sonuc);
        }
        public DataTable getDataTable(string sqlCumle)
        {
            SqlConnection Connect = this.Connection();
            SqlDataAdapter dta = new SqlDataAdapter(sqlCumle, Connect);
            DataTable dt = new DataTable();
            try
            {
                dta.Fill(dt);
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message + "(" + sqlCumle + ")");
            }
            dta.Dispose();
            Connect.Close();
            Connect.Dispose();
            return (dt);
        }
        public DataRow getDataRow(string sqlCumle)
        {
            DataTable dt = getDataTable(sqlCumle);
            if (dt.Rows.Count == 0)
            {
                return null;
            }
            else
            {
                return dt.Rows[0];
            }
        }
        public string getDataCell(string sqlCumle)
        {
            DataTable dt = getDataTable(sqlCumle);
            if (dt.Rows.Count == 0)
            {
                return null;
            }
            else
            {
                return dt.Rows[0][0].ToString();
            }
        }
    }
}