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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            try
            {
                if (Session["uye_id"].ToString().Trim() != "")
                {
                    Lblid.Text = Session["uye_id"].ToString();
                }
                
            }

            catch 
            {
               Response.Redirect("giris.aspx"); 
            }

            if (Lblid.Text != "") { veri(); /*deger();*/ }

            if (Lbltop.Text != "") 
            {
                int toplam;
                String str;
                str = Convert.ToString(Lbltop.Text);
                toplam = Int32.Parse(str);

                if (toplam == 0) { SozelProgram(); }
                else if (toplam == 1) { SozelProgram(); }
                else if (toplam == 2) { SozelProgram(); }
                else if (toplam == 3) { EsitProgram(); }
                else if (toplam == 4) { EsitProgram(); }
                else if (toplam == 5) { EsitProgram(); }
                else if (toplam == 6) { SayısalProgram(); }
                else if (toplam == 7) { SayısalProgram(); }
                else { SayısalProgram(); }
            }
           else { Panel4.Visible = false; Lblhata.Text = "ders programının yüklenememesi'nin sebebi  hala gerekli testlere katılmamanızdır :)"; }
            
        }


        void veri()
        {
            SqlConnection baglama = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);
            SqlDataAdapter dap = new SqlDataAdapter("SELECT uyeler.uye_adi, uyeler.uye_soyadi, uye_sınav.toplam, uye_sınav.uye_id, uyeler.uye_id AS Expr1 FROM uyeler FULL OUTER JOIN uye_sınav ON uyeler.uye_id = uye_sınav.uye_id WHERE (uyeler.uye_id = @uye_id)", baglama);
            dap.SelectCommand.Parameters.AddWithValue("@uye_id", Lblid.Text.Trim());
            DataTable uye_sınav = new DataTable();
            DataTable uyeler = new DataTable();
            try
            {
                baglama.Open();
                dap.Fill(uye_sınav);
                dap.Fill(uyeler);
                baglama.Close();             
            }
            catch
            {
                Lblhata.Text = "Bir hata oluştu";
            }
            if (uye_sınav.Rows.Count > 0)//eger bır verı gırışı olmuşsa
            {                
                Lbltop.Text = uye_sınav.Rows[0]["toplam"].ToString();
                LblAdi.Text = uyeler.Rows[0]["uye_adi"].ToString();
                LblSoayadi.Text = uyeler.Rows[0]["uye_soyadi"].ToString();
            }

        }

        void SozelProgram()
        {
            Label1.Text = "Dil ve Anlatım";
            Label2.Text = "Edebiyat";
            Label3.Text = "Sosyoloji";
            Label4.Text = "Tarih";
            Label5.Text = "Edebiyat";
            Label6.Text = "Dil ve Anlatım";
            Label7.Text = "İnkılap Tarihi";
            Label8.Text = "Coğrafya";
            Label9.Text = "Edebiyat";
            Label10.Text = "Dil ve Anlatım";
            Label11.Text = "Din Kültürü";
            Label12.Text = "İnkılap Tarihi";
            Label13.Text = "Sosyoloji";
            Label14.Text = "Edebiyat";
            Label15.Text = "Dil ve Anlatım";
            Label16.Text = "Tarih";
            Label17.Text = "Sosyoloji";
            Label18.Text = "Edebiyat";
            Label19.Text = "Dil ve Anlatım";
            Label20.Text = "İnkılap Tarihi";
            Label21.Text = "Edebiyat";
            Label22.Text = "Din Kültürü";
            Label23.Text = "Coğrafya";
            Label24.Text = "Tarih";
            Label25.Text = "Edebiyat";
            Label26.Text = "Dil ve Anlatım";
            Label27.Text = "Felsefe";
            Label28.Text = "İnkılap Tarihi";
            Label29.Text = "Edebiyat";
            Label30.Text = "Sosyoloji";
            Label31.Text = "Tarih";

        }
        void EsitProgram()
        {
            Label1.Text = "Matematik";
            Label2.Text = " Edebiyat";
            Label3.Text = "Dil ve anlatım";
            Label4.Text = "Geometri";
            Label5.Text = "Tarih";
            Label6.Text = "Edebiyat";
            Label7.Text = "Coğrafya";
            Label8.Text = "Felsefe";
            Label9.Text = "Matematik";
            Label10.Text = "Tarih";
            Label11.Text = " Edebiyat";
            Label12.Text = "Geometri";
            Label13.Text = "Dil ve anlatım";
            Label14.Text = "İngilizce";
            Label15.Text = "Coğrafya";
            Label16.Text = "Tarih";
            Label17.Text = "Geometri";
            Label18.Text = " Edebiyat";
            Label19.Text = "Tarih";
            Label20.Text = "Tarih";
            Label21.Text = "Matematik";
            Label22.Text = "Coğrafya";
            Label23.Text = "Dil ve anlatım";
            Label24.Text = "Tarih";
            Label25.Text = " Edebiyat";
            Label26.Text = "Coğrafya";
            Label27.Text = "Felsefe";
            Label28.Text = "Geometri";
            Label29.Text = "Tarih";
            Label30.Text = "Matematik";
            Label31.Text = " Edebiyat";



        }
        void SayısalProgram()
        {
            Label1.Text = "matamatik";
            Label2.Text = "turkce";
            Label3.Text = "fizik";
            Label4.Text = "Biyoloji";
            Label5.Text = "Matematik";
            Label6.Text = "Kimya";
            Label7.Text = "Fizik";
            Label8.Text = "Astronomi";
            Label9.Text = "Matematik Tarihi";
            Label10.Text = "Matematik";
            Label11.Text = "Kimya";
            Label12.Text = "Fizik";
            Label13.Text = "Biyoloji";
            Label14.Text = "Fen Tarihi ";
            Label15.Text = "Kimya";
            Label16.Text = "Matematik";
            Label17.Text = "Kimya";
            Label18.Text = "Biyoloji";
            Label19.Text = "Fizik";
            Label20.Text = "Matematik Tarihi";
            Label21.Text = "Matematik";
            Label22.Text = "Kimya";
            Label23.Text = "Astronomi";
            Label24.Text = "Biyoloji";
            Label25.Text = "Fizik";
            Label26.Text = "Kimya";
            Label27.Text = "Matematik";
            Label28.Text = "Biyoloji";
            Label29.Text = "Fen Tarihi ";
            Label30.Text = "Kimya";
            Label31.Text = "Matematik";
        }









    }
}