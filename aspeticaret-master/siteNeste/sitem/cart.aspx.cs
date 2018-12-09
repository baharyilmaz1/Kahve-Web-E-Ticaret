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
    public partial class cart : System.Web.UI.Page
    {
        sinif ds = new sinif();
        string ProductId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //ProductId = Request.QueryString["ProductId"];
            //rpCartDetails.DataSource("p.Picture,b.Price,b.Quantity,b.TotalPrice from Basket  b INNER JOIN Products p ON b.ProductId=p.ProductId Where ProductId=" + ProductId);
            //rpCartDetails.DataBind();
        }
    }
}