using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace sitem
{
    public partial class product : System.Web.UI.Page
    {
       
       sinif ds = new sinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int id = int.Parse(Request.QueryString["CatId"].ToString());
            Doldur(id);
        }
        private void Doldur(int ID)
        {
                SqlConnection db = ds.Connection();
                SqlCommand cmd = new SqlCommand("select * from Products Where CatId=@CatId", db);
                cmd.Parameters.AddWithValue("@CatId", ID);
                SqlDataReader dt = cmd.ExecuteReader();
                rpProduct.DataSource = dt;
                rpProduct.DataBind();
        }


    }
}