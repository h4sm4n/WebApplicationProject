using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Dashboard
{
    public partial class Is_Ekle : System.Web.UI.Page
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
            var business1 = new Business.Business();
            string tip = txtisturu.Text;
            string baslangic = txtbaslangic.Text;
            string bitis = txtbitis.Text;
            string fiyat = txtfiyat.Text;
            string odemeyontem = txtplan.Text;
            int musteriid = Business.Business.GetCustomerId(txtmusteritc.Text);
            int personelid = Business.Business.GetEmployeeId(txtpersoneltc.Text);
            int adresid = Business.Business.GetAdressId(drpadres.Text);

            if (txtbaslangic.Text.Length >= 1 && txtbitis.Text.Length >= 1 && txtfiyat.Text.Length >= 1 && txtisturu.Text.Length >= 1 && txtplan.Text.Length >= 1 && drpadres.Text.Length >= 1 && txtmusteritc.Text.Length >= 1 && txtpersoneltc.Text.Length >= 1)
            {
                business1.AddWork(tip,baslangic,bitis,personelid,musteriid,adresid,fiyat,odemeyontem);
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Kayıt ekleme başarılı, İşler sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "Dashboard/Isler.aspx';",true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);

            }
        }

        protected void txtmusteritc_OnTextChanged(object sender, EventArgs e)
        {
            drpadres.DataSource = Business.Business.GetAdressByCustomers(txtmusteritc.Text);
            drpadres.DataBind();
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            drpadres.DataSource = Business.Business.GetAdressByCustomers(txtmusteritc.Text);
            drpadres.DataBind();
        }
    }
}