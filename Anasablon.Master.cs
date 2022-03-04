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
    public partial class Anasablon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                if (Session["uye_id"].ToString().Trim() != "")
                {
                    lblklncid.Text = Session["uye_id"].ToString();
                    pnlCikis.Visible = true;
                    pnlUyeGiri.Visible = false;
                    Panel1.Visible = true;
                    uyeler.Visible = false;
                    SINAV.Visible = true;
                    SqlConnection baglama = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);
                    SqlDataAdapter dap = new SqlDataAdapter("SELECT * FROM [karakter] WHERE ([uye_id] = @uye_id)", baglama);
                    dap.SelectCommand.Parameters.AddWithValue("@uye_id", lblklncid.Text.Trim());
                    DataTable karakter = new DataTable();

                    try
                    {
                        baglama.Open();
                        dap.Fill(karakter);
                        baglama.Close();
                    }
                    catch
                    {

                        Lblkarakter.Text = "Bir hata oluştu ";
                    }

                    if (karakter.Rows.Count > 0)//eger bır verı gırışı olmuşsa
                    {
                        Lblkarakter.Text = karakter.Rows[0]["karakter"].ToString();

                    }

                }

                else { Response.Redirect("giris.aspx"); }
            }

            catch { }

            //if (lblklncid.Text != "") { veri(); }
            //if (Lblkarakter.Text.Trim() != "") { pnlkisilik.Visible = false; Panel3.Visible = true; }//site ye giriş yapılmadan kişiligin acılmasının sebebı giriş yapmadan labeli boş kalıyor

            //void veri() {

            //    SqlConnection baglama = new SqlConnection(WebConfigurationManager.ConnectionStrings["hayalerimConnectionString3"].ConnectionString);
            //    SqlDataAdapter dap = new SqlDataAdapter("SELECT * FROM [karakter] WHERE ([uye_id] = @uye_id)", baglama);
            //    dap.SelectCommand.Parameters.AddWithValue("@uye_id", lblklncid.Text.Trim());
            //    DataTable karakter = new DataTable();

            //    try
            //    {
            //        baglama.Open();
            //        dap.Fill(karakter);
            //        baglama.Close();
            //    }
            //    catch
            //    {

            //        Lblkarakter.Text = "Bir hata oluştu ";
            //    }

            //    if (karakter.Rows.Count > 0)//eger bır verı gırışı olmuşsa
            //    {
            //        Lblkarakter.Text = karakter.Rows[0]["karakter"].ToString();
            //    }
           //     }



        }
    }
}