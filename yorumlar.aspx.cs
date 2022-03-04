using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hayalerim
{
    public partial class deneme : System.Web.UI.Page
    {
       


        protected void Page_Load(object sender, EventArgs e)
        {
            IPLB.Text = HttpContext.Current.Request.UserHostAddress;//ip adresini almak için
            try
            {
                if (Session["uye_id"].ToString().Trim() != "")
                {
                    Lblid.Text = Session["uye_id"].ToString();
                    degerler();
                    Panel4.Visible=true;
                }
            }
            catch
            {            
                Response.Redirect("giris.aspx");
            }
        }
        
          
        void degerler()
        {

            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);
            SqlDataAdapter dap = new SqlDataAdapter("SELECT * FROM [yorumlar] ORDER BY [yorum_tarihi]", baglanti);
            dap.SelectCommand.Parameters.AddWithValue("@uye_id", Lblid.Text.Trim());//burada eposta bılgısıni (valuesını) nerden alacagımı belırtıyort
            DataTable yorumlar = new DataTable();//burada datasenın hangı tablosunu kulanacagını belırtıyorsun        
          
            try
            {
                baglanti.Open();
                dap.Fill(yorumlar);                
                baglanti.Close();
            }
            catch
            {
            
            }
            //if (yorumlar.Rows.Count > 0)//eger bır verı gırışı olmuşsa
            //{
            //    Lbluyeadi.Text = uyeler.Rows[0]["uye_adi"].ToString();
            //    Lbluyesoyd.Text = uyeler.Rows[0]["uye_soyadi"].ToString();

            //}

        }

        protected void Btngndr_Click(object sender, EventArgs e)
        {
            if (SqlDataSource1.Insert() > 0)
            {
                Llhata.Text = "yorum kaydedildi incelendikten sonra yayınlanacaktır";
                Panel4.Visible = false;
            }
            else { Llhata.Text = "Sayfa işlenirken hata oluştu"; }
        }
    }
}