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
    public partial class hesabım : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                if (Session["uye_id"].ToString().Trim() != "")

                { lblkncid.Text = Session["uye_id"].ToString(); Panel1.Visible = true; }

               
            }
            catch { LblHata.Text = "Bir hata oluştu "; }

            if (lblkncid.Text != "") { veri(); }


        }

        void veri() {
            SqlConnection baglama = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);
            SqlDataAdapter dap = new SqlDataAdapter("SELECT * FROM [uyeler] WHERE ([uye_id] = @uye_id)", baglama);
            dap.SelectCommand.Parameters.AddWithValue("@uye_id", lblkncid.Text.Trim());
            DataTable uyeler = new DataTable();

            try
            {
                baglama.Open();
                dap.Fill(uyeler);
                baglama.Close();
            }
            catch
            {

                LblHata.Text = "Bir hata oluştu ";
            }
            if (uyeler.Rows.Count > 0)//eger bır verı gırışı olmuşsa
            {
                Lbluyeadi.Text = uyeler.Rows[0]["uye_adi"].ToString();
                Lbluyesoyd.Text = uyeler.Rows[0]["uye_soyadi"].ToString();
                lblsnf.Text = uyeler.Rows[0]["uye_sınıf"].ToString();
                lblEpost.Text = uyeler.Rows[0]["uye_ePost"].ToString();
                lblcnsyet.Text = uyeler.Rows[0]["uye_cnsyt"].ToString();
                lblİl.Text = uyeler.Rows[0]["uye_il"].ToString();
              
                LblldgmTrh.Text = Convert.ToDateTime(uyeler.Rows[0]["uye_dogum_trh"].ToString()).ToShortDateString();
                lblyet.Text = uyeler.Rows[0]["yetki"].ToString();
                //burada 
                if (lblcnsyet.Text == "ERKEK") { pnlerkek.Visible = true; }
                if (lblcnsyet.Text.Trim() == "KADIN") { pnlkadın.Visible = true; }
                if (lblcnsyet.Text.Trim() == "EŞCİNSEL") { pnlbelirsiz.Visible = true; }

            }
        }
    }
}