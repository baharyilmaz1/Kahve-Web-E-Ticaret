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
    public partial class Details : System.Web.UI.Page
    {
       
        sinif ds = new sinif();
        string ProductId = "";
        static int mevcutStok = 0;
        static int mevcutAdet = 0;
        static string fiyat = "";
    
        protected void Page_Load(object sender, EventArgs e)
        {
           
            ProductId = Request.QueryString["ProductId"];
            getImageDetails();
            getreleated();
            getDetails();
        }


        //Resimdetay getir
        private void getImageDetails()
        {
            rpDetails.DataSource = ds.getDataTable("select * from Products Where ProductId=" + ProductId);
            rpDetails.DataBind();
        }
        //ilgili ürün getir
        private void getreleated()
        {
            rpProductRelated.DataSource = ds.getDataTable("select  top 3* from Products");
            rpProductRelated.DataBind();
        }
        //ürün Detaylarını getir
        private void getDetails()
        {
            rpdata.DataSource = ds.getDataTable("select * from  Products Where ProductId = " + ProductId);
            rpdata.DataBind();
        }

        protected void btnCardAdd_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            DropDownList adetliste = (DropDownList)btn.Parent.FindControl("ddlAdet");
            int adet = Convert.ToInt32(adetliste.SelectedItem.Text);
         
            if (Session["Kullanici"] != null)
            {
                SqlConnection db = ds.Connection();
                //seçilen urun id zaten sepette var ise
                if (Kontrol(ProductId, Session["Kullanici"].ToString()) == true)//ürün zaten ekli
                {
                    //Stok yeterli ise
                    if (StokKontrol(ProductId, adet) == true)
                    {
                        // sepet tablosundaki ürün adedini arttır
                        Arttir(ProductId, adet, mevcutAdet);
                        //ürünler tablosundaki ürünstoğu azalt
                        StokAzalt(ProductId, adet, mevcutStok);

                    }
                    else
                    {
                        Response.Write("<script>alert('Stok Yetersiz!..')</script>");
                    }
                }
                else//ürün sepette ekli değil ise
                {
                    if (StokKontrol(ProductId, adet) == true)
                    {
                        // sepet tablosuna secilen urun eklenecek
                        ekle(ProductId, Session["Kullanici"].ToString(), adet, fiyat);
                        //ürünler tablosundaki ürünstoğu azalt
                        StokAzalt(ProductId, adet, mevcutStok);

                    }
                    else
                    {
                        Response.Write("<script>alert('Stok Yetersiz!..')</script>");
                    }

                }
               

            }
            else
            {
                Response.Write("<script>alert('Önce giriş yapmalısınız!..')</script>");
                Response.Redirect("Giris.aspx");

            }


        }



        Boolean Kontrol(string id, string uyeid)//kendisine gönderilen id ye göre sepet tablosunu kontrol edecek
        {
            SqlConnection db = ds.Connection();
            SqlCommand komut = new SqlCommand("select * from Basket where ProductId=@id and UserId=@uid", db);
            komut.Parameters.AddWithValue("@id", id);
            komut.Parameters.AddWithValue("@uid", uyeid);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(dt);
            //eğer kayıt dönerse
            if (dt.Rows.Count > 0)
            {
                mevcutAdet = Convert.ToInt32(dt.Rows[0][3]);
                return true;

            }
            else
            {
                return false;
            }
        }


        Boolean StokKontrol(string id, int secilenadet)
        {
            SqlConnection db = ds.Connection();
            SqlCommand komut = new SqlCommand("select * from Products where ProductId=@id", db);
            komut.Parameters.AddWithValue("@id", id);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(dt);
            mevcutStok = Convert.ToInt32(dt.Rows[0][11]);
            fiyat = dt.Rows[0][3].ToString();
            if (secilenadet <= mevcutStok)
                return true;
            else
                return false;

        }
        void Arttir(string id, int secilenadet, int sepetAdet)
        {
            SqlConnection db = ds.Connection();
            SqlCommand komut = new SqlCommand("update Basket set Quantity=@adet where ProductId=@id", db);
            komut.Parameters.AddWithValue("@id", id);
            komut.Parameters.AddWithValue("@adet", secilenadet + sepetAdet);
            komut.ExecuteNonQuery();
        }
        void StokAzalt(string id, int secilenadet, int stok)
        {
            SqlConnection db = ds.Connection();

            SqlCommand komut = new SqlCommand("update Products set ProductStock=@stok where ProductId=@id", db);
            komut.Parameters.AddWithValue("@id", id);
            komut.Parameters.AddWithValue("@stok", stok - secilenadet);
            komut.ExecuteNonQuery();
        }
        void ekle(string ProductId, string UserId, int Quantity, string Price)
        {
            SqlConnection db = ds.Connection();
            SqlCommand komut = new SqlCommand("insert into Basket values(@UserId,@ProductId,@Quantity,@Price)", db);
            komut.Parameters.AddWithValue("@UserId", UserId);
            komut.Parameters.AddWithValue("@ProductId", ProductId);
            komut.Parameters.AddWithValue("@Quantity", Quantity);
            komut.Parameters.AddWithValue("@Price", Price);
            komut.ExecuteNonQuery();
            Response.Redirect("cart.aspx");

        }





    }
}