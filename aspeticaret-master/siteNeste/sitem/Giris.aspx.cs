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
    public partial class Giris : System.Web.UI.Page
    {
        sinif ds = new sinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Response.Cookies["UserName"] !=null  && Response.Cookies["Password"] !=null)
            {
                txtKad.Text = Response.Cookies["UserName"].Value;
                txtSifre.Text = Response.Cookies["Password"].Value;
            }
   

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlConnection db = ds.Connection();
            if (chkBeniHatirla.Checked)
            {
                Response.Cookies["UserName"].Value = txtKad.Text;
                Response.Cookies["Password"].Value = txtSifre.Text;
                Response.Cookies["UserName"].Expires = DateTime.Now.AddMonths(1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddMonths(1);
            }
           
            SqlCommand cmd = new SqlCommand("Select * from Users where UserName=@UName  and Password=@Password",db);
            cmd.Parameters.AddWithValue("@UName", txtKad.Text);
            cmd.Parameters.AddWithValue("@Password",txtSifre.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["UserName"] = dr[1];
                Session["Password"] = dr[4];
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Kullanıcı Adı ya da parola yanlış girildi')</script>");
            }

            
            
        }

        protected void lnkUyeOl_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }



    




    }
}