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
    public partial class Register : System.Web.UI.Page
    {
        sinif ds = new sinif();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (IsPostBack) return;

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            SqlConnection db = ds.Connection();
            SqlCommand cmd = new SqlCommand("INSERT INTO Users(UserName,Name,Surname,Password,Mail,Phone,Birthday) Values(@UName,@Name,@SName,@Pass,@Mail,@Phone,@Birthday)",db);
            cmd.Parameters.AddWithValue("@UName", txtUserName.Text);
            cmd.Parameters.AddWithValue("@Name",txtName.Text);
            cmd.Parameters.AddWithValue("@SName", txtSurName.Text);
            cmd.Parameters.AddWithValue("@Pass", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Mail", txtMail.Text);
            cmd.Parameters.AddWithValue("@Phone", txtTelefon.Text);
            cmd.Parameters.AddWithValue("@Birthday", txtBirthDay.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Kaydınız Başarıyla alınmıştır.')</script>");
            Response.Redirect("Giris.aspx");

        }
    }
}