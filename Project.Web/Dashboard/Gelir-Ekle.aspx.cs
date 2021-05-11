using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Dashboard
{
    public partial class Gelir_Ekle : System.Web.UI.Page
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
            var business1 = new Project.Business.Business();
            string tip = txttip.Text;
            string faturano = txtfaturano.Text;
            string faturatarih = txtfaturatarih.Text;
            string muhasebeci = txtmuhasebeci.Text;

            if (txttip.Text.Length >= 1 || txttip.Text.Length >= 1 || txttip.Text.Length >= 1 || txttip.Text.Length >= 1)
            {
                business1.AddIncome(tip,faturano,faturatarih,muhasebeci);
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Kayıt ekleme başarılı, Gelirler sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "Dashboard/Gelir-Gor.aspx';",true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);
            }
        }
    }
}