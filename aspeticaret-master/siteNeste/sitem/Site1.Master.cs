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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        sinif ds = new sinif();

        protected void Page_Load(object sender, EventArgs e)
        {

            rpMenu.DataSource = ds.getDataTable("Select * from Categories");
            rpMenu.DataBind();
        }

        protected void rpMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Repeater rp = (Repeater)e.Item.FindControl("rpAltKategori"); //İç tarafdaki rpAltKategori kontrolüne erişiyoruz ve rp değişkenine atıyoruz
            SqlConnection baglanti = ds.Connection();
            SqlCommand cmdAltKat = new SqlCommand("Select * from ChildCategories where CategoryId=" + Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "CatId").ToString()), baglanti);
            rp.DataSource = cmdAltKat.ExecuteReader();
            rp.DataBind();
            cmdAltKat.Dispose();
            baglanti.Close();
        }

        protected void lnkCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}