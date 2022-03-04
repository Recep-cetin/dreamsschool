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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["uye_id"].ToString().Trim() != "")
                {
                    Label1.Text = Session["uye_id"].ToString();                    
                }
                else { Response.Redirect("giris.aspx"); }

                if (Label1.Text != "") { veri(); }          
            }

            catch { }     

            if (Lblkarakter.Text.Trim() == "10") { panel1.Visible = true;  panel2.Visible = true; }
            if (Lblkarakter.Text.Trim() == "20") { panel3.Visible = true;  panel4.Visible = true; }
            if (Lblkarakter.Text.Trim() == "30") { panel5.Visible = true;  panel6.Visible = true; }


            if (Lblsclmslk.Text != "")
            {
                lblMesaj.Text = "Daha önce meslek seçimi yaptığınız için ,seçim yapamıyorsunuz UPSS:)";
                panel1.Visible = false;
                panel2.Visible = false;
                panel3.Visible = false;
                panel4.Visible = false;
                panel5.Visible = false;
                panel6.Visible = false;
            }
        }




        void veri()
        {

            SqlConnection baglama = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);
            SqlDataAdapter dap = new SqlDataAdapter("SELECT Meslek.uye_id, karakter.uye_id, karakter.karakter, Meslek.meslek FROM karakter FULL OUTER JOIN Meslek ON Meslek.uye_id = karakter.uye_id WHERE (karakter.uye_id = @uye_id)", baglama);
            dap.SelectCommand.Parameters.AddWithValue("@uye_id", Label1.Text.Trim());
            DataTable karakter = new DataTable();
            DataTable Meslek = new DataTable();
            try
            {
                baglama.Open();
                dap.Fill(karakter);
                dap.Fill(Meslek);
                baglama.Close();
            }
            catch
            {

                Lblkarakter.Text = "Bir hata oluştu ";
            }

            if (karakter.Rows.Count > 0)//eger bır verı gırışı olmuşsa
            {
                Lblkarakter.Text = karakter.Rows[0]["karakter"].ToString();
                Lblsclmslk.Text = Meslek.Rows[0]["meslek"].ToString();
            }
            
    
        }
        void meslek()
        {
            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);//burada baglantı connectınstrıngımı zı tanıtıyoruz
            SqlDataAdapter dap = new SqlDataAdapter("SELECT Meslek.uye_id, karakter.uye_id, karakter.karakter, Meslek.meslek FROM karakter FULL OUTER JOIN Meslek ON Meslek.uye_id = karakter.uye_id WHERE (karakter.uye_id = @uye_id) ", baglanti);//burada gelecek verılerı fılıtrelıyoruz
            dap.SelectCommand.Parameters.AddWithValue("@uye_id", Label1.Text.Trim());//burada eposta bılgısıni (valuesını) nerden alacagımı belırtıyort
            DataTable uyeler = new DataTable();//burada datasenın hangı tablosunu kulanacagını belırtıyorsun
            try
            {
                baglanti.Open();
                dap.Fill(uyeler);
                baglanti.Close();
            }
            catch
            { }

            if (SqlDataSource1.Insert() > 0)
            {
                lblMesaj.Text = "Sayfa Eklendi";

            }
            else { lblMesaj.Text = "Sayfa işlenirken hata oluştu"; }
        }


        //meslekler'i veri tabanın'a kaydederken sayı kulandım , sayı kulanmamın sebebı veri tabanını gereksiz yere şişirmemek
        //    1=yazılım muhendisligi ,2 = yapay zeka muhendisligi , 3= makina muhendisligi

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            
            try
            {
                LblMeslek.Text = "1";
                if (LblMeslek.Text != "") { meslek(); }
                Response.Redirect("sınavssf/sınav4.aspx");
            }
            catch
            {
                lblMesaj.Text = "Sayfa işlenirken hata oluştu";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                LblMeslek.Text = "2";
                if (LblMeslek.Text != "") { meslek(); }
                Response.Redirect("sınavssf/sınav4.aspx");
            }
            catch
            {
                lblMesaj.Text = "Sayfa işlenirken hata oluştu";
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            try
            {
                LblMeslek.Text = "3";
                if (LblMeslek.Text != "") { meslek(); }
                Response.Redirect("sınavssf/sınav4.aspx");
            }
            catch
            {
                lblMesaj.Text = "Sayfa işlenirken hata oluştu";
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            try
            {
                LblMeslek.Text = "4";
                if (LblMeslek.Text != "") { meslek(); }
                Response.Redirect("sınavssf/sınav4.aspx");
            }
            catch
            {
                lblMesaj.Text = "Sayfa işlenirken hata oluştu";
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            try
            {
                LblMeslek.Text = "5";
                if (LblMeslek.Text != "") { meslek(); }
                Response.Redirect("sınavssf/sınav4.aspx");
            }
            catch
            {
                lblMesaj.Text = "Sayfa işlenirken hata oluştu";
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            try
            {
                LblMeslek.Text = "6";
                if (LblMeslek.Text != "") { meslek(); }
                Response.Redirect("sınavssf/sınav4.aspx");
            }
            catch
            {
                lblMesaj.Text = "Sayfa işlenirken hata oluştu";
            }
        }
    }

}