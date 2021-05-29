using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Dashboard
{
    public partial class Personel_Ekle : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            this.MasterPageFile = "~/Dashboard/Main.Master";

            if (Session["role"] == null)
            {
                this.MasterPageFile = "~/Unauthorized.Master";
            }

            else if (Session["role"].Equals(2))
            {
                this.MasterPageFile = "~/Unauthorized.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnekle_OnClick(object sender, EventArgs e)
        {
            int depid= 1;
            if (drpdepartman.Text == "Ofis")
            {
                depid = 1;
            }
            else if (drpdepartman.Text == "Saha")
            {
                depid = 2;
            }
            else if (drpdepartman.Text == "Muhasebe")
            {
                depid = 3;
            }

            var business1 = new Business.Business();
            string ad = txtad.Text;
            string soyad = txtsoyad.Text;
            string tcno = txtPersoneltc.Text;
            string mail = txtemail.Text;
            string maas = txtmaas.Text;
            string telefon = txttel.Text;

            if (txtad.Text.Length >= 1 && txtsoyad.Text.Length >= 1 && txttel.Text.Length >= 1 &&
                txtPersoneltc.Text.Length >= 1 && txtmaas.Text.Length >= 1 && txtemail.Text.Length >= 1 &&
                drpdepartman.Text.Length >= 1)
            {
                business1.AddEmployee(ad,soyad,depid,tcno,mail,maas,telefon);
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Kayıt başarılı, Personeller sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "Dashboard/Personeller.aspx';",true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);
            }

        }
    }
}