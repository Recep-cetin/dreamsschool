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
    public partial class kisilik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["uye_id"].ToString().Trim() != "")
                {
                    Lblklncadi.Text = Session["uye_id"].ToString();
                    degerler();
                }

                if (lblkarakteragrvrs.Text != "") { lblMesaj.Text = "Daha önce kişilik testi yaptığınız için ,bu sayfa görüntelenemiyor :)"; }
                else { Panel2.Visible = true; }
            }
            catch
            {
               
                Lblklncadi.Text = "hata catch ";
                Response.Redirect("giris.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Label1.Visible = false;
            Panel1.Visible = true;
         
        }
        int puan = 0,deger=0;
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                //herzaman
                if (RadioButton1.Checked) { puan += 1; }
                if (RadioButton4.Checked) { puan += 3; }
                if (RadioButton7.Checked) { puan += 3; }
                if (RadioButton10.Checked) { puan += 2; }
                if (RadioButton13.Checked) { puan += 2; }
                if (RadioButton16.Checked) { puan += 2; }
                if (RadioButton19.Checked) { puan += 1; }
                if (RadioButton22.Checked) { puan += 3; }
                if (RadioButton25.Checked) { puan += 4; }
                

                //arasıra
                if (RadioButton2.Checked) { puan += 2; }
                if (RadioButton5.Checked) { puan += 2; }
                if (RadioButton8.Checked) { puan += 2; }
                if (RadioButton11.Checked) { puan += 2; }
                if (RadioButton14.Checked) { puan += 3; }
                if (RadioButton17.Checked) { puan += 3; }
                if (RadioButton20.Checked) { puan += 2; }
                if (RadioButton23.Checked) { puan += 2; }
                if (RadioButton26.Checked) { puan += 3; }
             

                //never
                if (RadioButton3.Checked) { puan += 3; }
                if (RadioButton6.Checked) { puan += 1; }
                if (RadioButton9.Checked) { puan += 1; }
                if (RadioButton12.Checked) { puan += 2; }
                if (RadioButton15.Checked) { puan += 2; }
                if (RadioButton18.Checked) { puan += 0; }
                if (RadioButton21.Checked) { puan += 3; }
                if (RadioButton24.Checked) { puan += 1; }
                if (RadioButton27.Checked) { puan += 1; }
             

                if (10 < puan && puan < 35)
                {
                    if (9 < puan && puan <= 15) { deger = deger + 10; }//sözel
                    if (16 < puan && puan <= 20) { deger = deger + 20; }//eşit agırlık
                    if (20 < puan && puan <= 34) { deger = deger + 30; }//sayısal

                    lblkarakter.Text = (deger).ToString().Trim();
                }

              

                else if (0 < puan && puan < 9) { hatamesaj.Text = "lutfen tüm soruları cevaplayın"; }

                else { hatamesaj.Text = "lutfen tekrar deneyın bılın medık hatayla kasılastık"; }
               

                
            }
            else { hatamesaj.Text = "Lütfe sınavı onaylayın"; }

            if (SqlDataSource1.Insert() > 0)
            {
                lblMesaj.Text = "Sayfa Eklendi";
                Response.Redirect("mesleksecimi.aspx");
            }

        }

        void degerler()
        {

            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);//burada baglantı connectınstrıngımı zı tanıtıyoruz
            SqlDataAdapter dap = new SqlDataAdapter("SELECT uyeler.uye_adi, uyeler.uye_soyadi, karakter.karakter, karakter.uye_id, uyeler.uye_id AS Expr1 FROM uyeler FULL OUTER JOIN karakter ON uyeler.uye_id = karakter.uye_id WHERE (uyeler.uye_id = @uye_id)", baglanti);//burada gelecek verılerı fılıtrelıyoruz
            dap.SelectCommand.Parameters.AddWithValue("@uye_id", Lblklncadi.Text.Trim());//burada eposta bılgısıni (valuesını) nerden alacagımı belırtıyort
            DataTable uyeler = new DataTable();//burada datasenın hangı tablosunu kulanacagını belırtıyorsun        
            DataTable karakter = new DataTable();
            try
            {
                baglanti.Open();
                dap.Fill(uyeler);
                dap.Fill(karakter);
                baglanti.Close();
            }
            catch
            { }

          
            if (karakter.Rows.Count > 0)//eger bır verı gırışı olmuşsa
            {
                lblkarakteragrvrs.Text = karakter.Rows[0]["karakter"].ToString();
                lblkulanıcıadı.Text = uyeler.Rows[0]["uye_adi"].ToString();
            }
            else { lblMesaj.Text = "Sayfa işlenirken hata oluştu"; }


        }






        protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton14_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton18_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton20_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton21_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton29_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton30_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e){}

    }
}