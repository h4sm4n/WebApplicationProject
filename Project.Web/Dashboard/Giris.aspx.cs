using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.DataAccess;

namespace Project.Web.Dashboard
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {

                }

                else if (Session["role"].Equals(1) || Session["role"].Equals(2))
                {
                    Session.Abandon();
                    Session.Clear();
                    Response.Cookies.Clear();
                }
            }

            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('hata')", true);
            }
        }

        protected void btnlogin_OnClick(object sender, EventArgs e)
        {
            if (txtemail.Text == "" || txtsifre.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);
            }

            try
            {
                int role = Business.Giris.getSessionRole(txtemail.Text, txtsifre.Text);

                if (role == 00404)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kullanıcı adı ve/veya parola hatalı')", true);
                }

                else if (role == 1)
                {
                    List<Kullanicilar> Credentials = Business.Giris.getCredentials(txtemail.Text, txtsifre.Text);

                    Session["role"] = role;
                    Session["email"] = Credentials[0].KullaniciAdi;
                    Session["type"] = Credentials[0].KullaniciTip;
                    Session["pozid"] = Credentials[0].SessionRoleId;
                    Session["id"] = Credentials[0].Id;

                    Session["pozisyon"] = Business.Giris.getPozisyonAd(role);
                    //Response.AddHeader("REFRESH", "10;URL=default.aspx");
                    Response.Redirect("Anasayfa.aspx");
                }
                else if (role == 2)
                {
                    List<Kullanicilar> Credentials = Business.Giris.getCredentials(txtemail.Text, txtsifre.Text);

                    Session["role"] = role;
                    Session["email"] = Credentials[0].KullaniciAdi;
                    Session["type"] = Credentials[0].KullaniciTip;
                    Session["pozid"] = Credentials[0].SessionRoleId;
                    Session["id"] = Credentials[0].Id;

                    Session["pozisyon"] = Business.Giris.getPozisyonAd(role);
                    //Response.AddHeader("REFRESH", "10;URL=default.aspx");
                    Response.Redirect("~/User/Default.aspx");
                }
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('exception')", true);
            }
        }
    }
}