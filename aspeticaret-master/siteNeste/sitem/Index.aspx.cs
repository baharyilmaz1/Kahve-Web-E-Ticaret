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
    public partial class Index : System.Web.UI.Page
    {
        sinif ds = new sinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            GetProduct();
            rpProductLast.DataSource = ds.getDataTable("Select * from Products");
            rpProductLast.DataBind();
        }

        private void GetProduct()
        {
            rpProduct.DataSource = ds.getDataTable("Select * from Products");
            rpProduct.DataBind();


        }
    }
}