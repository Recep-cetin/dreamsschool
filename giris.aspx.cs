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
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlCikis.Visible = false;
            try
            {
                if (Session["uye_id"].ToString().Trim() != "")
                {//üye girişi yapılmış
                    pnlGiris.Visible = false;
                    pnlCikis.Visible = true;
                    PnlYon.Visible = false;
                    //lblUyeAdi.Text = Session["uye_adi"].ToString();/*buradakı sessıon ıle gelecek adı kulanmak ıcındır nutma*/
                }
            }
            catch
            {
                
            }
        }
        private string sifrele(string sifrelenecekMetin)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            //Parametre olarak gelen veriyi byte dizisine dönüştürdük.
            byte[] dizi = Encoding.UTF8.GetBytes(sifrelenecekMetin);
            //dizinin hash'ini hesaplattık.
            dizi = md5.ComputeHash(dizi);
            //Hashlenmiş verileri depolamak için StringBuilder nesnesi oluşturduk.
            StringBuilder sb = new StringBuilder();
            //Her byte'i dizi içerisinden alarak string türüne dönüştürdük.

            foreach (byte ba in dizi)
            {
                sb.Append(ba.ToString("x2").ToLower());
            }

            //hexadecimal(onaltılık) stringi geri döndürdük.
            return sb.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           

            


        }

        protected void Btngiris_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);
            SqlDataAdapter dap = new SqlDataAdapter("select * from uyeler where uye_ePost=@uye_ePost and parola=@parola and silindi=0 and aktif=1", baglanti);
            dap.SelectCommand.Parameters.AddWithValue("@uye_ePost", Txtklnadi.Text.Trim());
            dap.SelectCommand.Parameters.AddWithValue("@parola", Txtparola.Text.Trim() /*sifrele(Txtparola.Text.Trim())*/);
            DataTable uyeler = new DataTable();
            try
            {
                baglanti.Open();
                dap.Fill(uyeler);
                baglanti.Close();
            }
            catch
            {
                

            }

            if (uyeler.Rows.Count > 0)
            {
                pnlCikis.Visible = true;
                Session["uye_id"] = uyeler.Rows[0]["uye_id"].ToString();
                Response.Redirect("welcome.aspx");
            }
            else
            {
                lblMesaj.Text = "Üye bulunamadı";
                Txtklnadi.Text = "";
                Txtparola.Text = "";
                return;
            }
        }
        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect(Request.RawUrl);
            Txtklnadi.Text = "";
            Txtparola.Text = "";
            pnlGiris.Visible = true;
            pnlCikis.Visible = false;
           
        }
        protected void Button2_Click(object sender, EventArgs e)
        {           
            if (CheckBox1.Checked)
            {
                if (txtAdi.Text.Trim() == "")
                {
                    Label2.Text = "*Lüften adınızı giriniz!";
                    return;
                }
                if (txtSoyadi.Text.Trim() == "")
                {
                    Label2.Text = "*Lüften soyadınızı giriniz!";
                    return;
                }

                if (txtEposta.Text.Trim() == "")
                {
                    lblMesaj.Text = "*Lüften eposta giriniz!";
                    return;
                }

                if (txtEposta.Text.IndexOf('@') < 0)
                {
                    Label2.Text = "*Lüften geçerli bir eposta giriniz!";
                    return;
                }
                if (txtEposta.Text.IndexOf('.') < 0)
                {
                    Label2.Text = "*Lüften geçerli bir eposta giriniz!";
                    return;
                }

                if (txtDogTar.Text.Trim() == "")
                {
                    Label2.Text = "*Lüften doğum tarihinizi giriniz!";
                    return;
                }
                if (txtDogTar.Text.Trim() == "")
                {
                    Label2.Text = "*Lüften doğum tarihinizi giriniz!";
                    return;
                }
                if (TextBox1.Text == "")
                {
                    Label2.Text = "*Lüften parolanızı  giriniz!";
                    return;
                }
                if (DropDownList2.SelectedValue == "0")

                {
                    Label2.Text = "*Lüften şehir seçiniz!";
                    return;
                }
                if (DropDownList1.SelectedValue == "0")
                {
                    Label2.Text = "*Lüften eğitim durumunuzu seçiniz seçiniz!";
                    return;
                }
                if (DropDownList3.SelectedValue == "0")
                {
                    Label2.Text = "*Lüften cinsiyet durumunuzu seçiniz seçiniz!";
                    return;
                }
                if (SqlDataSource2.Insert() > 0)
                {
                    pnlUye.Visible = false;
                    PnlVer.Visible = false;
                    PnlAl.Visible = true;
                    panel1.Visible = true;
                    Label2.Text = "Sayfa Eklendi";

                }

                else
                {
                    Label2.Text = "Ekleme başarısız";
                }
                bosalt();

            }

            else
            {
                Label2.Text = "*Lüften bilgilerin doğruluğunu onaylayın!";
                RadioButton1.Checked = true;
                return;
            }

        }

        private void bosalt()
        {
            txtAdi.Text = "";
            txtSoyadi.Text = "";
            txtEposta.Text = "";
            txtDogTar.Text = "";
            DropDownList1.SelectedValue = "0";
            DropDownList3.SelectedValue = "0";
            CheckBox1.Checked = false;
        }
        //pnlUye ,panel1 Button3
     

        protected void Button3_Click1(object sender, EventArgs e)
        {
            pnlUye.Visible = true;
            panel1.Visible = false;
            PnlAl.Visible = false;
            PnlVer.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            pnlUye.Visible = false;
            PnlVer.Visible = false;
            PnlAl.Visible = true;
            panel1.Visible = true;
        }
    }
}