using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.User
{
    public partial class Sifre_Degistir : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            this.MasterPageFile = "~/User/User.Master";

            if (Session["role"] == null)
            {
                this.MasterPageFile = "Unauthorizedd.Master";
            }

            else if (Session["role"].Equals(1))
            {
                this.MasterPageFile = "Unauthorizedd.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnyolla_OnClick(object sender, EventArgs e)
        {
            var business1 = new Business.Business();
            string sifre = Business.Business.GetUserPasswordByUserId(Convert.ToInt32(Session["id"]));
            if (txtsifre.Text != sifre || txtsifre.Text == null || txtsifre.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Hatalı Giriş')", true);
            }
            else
            {
                if (txtyeni.Text != txtyeni2.Text || txtyeni.Text == "" || txtyeni2.Text == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Hatalı Giriş')", true);
                }
                else
                {
                    business1.UpdateCustomers(Convert.ToInt32(Session["id"]), txtyeni.Text);
                    ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                        "alert('Şifre değiştirme işlemi başarılı, Giriş sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                        Request.ApplicationPath + "Dashboard/Giris.aspx';",true);
                }
            }
        }
    }
}