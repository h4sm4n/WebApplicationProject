using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Dashboard
{
    public partial class Gider_Ekle : System.Web.UI.Page
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
            string ay = txtay.Text;
            int yil = Convert.ToInt32(txtyil.Text);
            decimal elektrik = Convert.ToDecimal(txtelektrik.Text);
            decimal su = Convert.ToDecimal(txtsu.Text);
            decimal gaz = Convert.ToDecimal(txtdogalgaz.Text);
            decimal internet = Convert.ToDecimal(txtinternet.Text);
            decimal maas = Convert.ToDecimal(txtmaas.Text);
            decimal malzeme = Convert.ToDecimal(txtmalzeme.Text);
            decimal ofis = Convert.ToDecimal(txtofis.Text);
            decimal diger = Convert.ToDecimal(txtdiger.Text);

            if (txtay.Text.Length >= 1 || txtyil.Text.Length >= 1 || txtelektrik.Text.Length >= 1 || txtsu.Text.Length >= 1 || txtdogalgaz.Text.Length >= 1 || txtinternet.Text.Length >= 1 || txtmaas.Text.Length >= 1 || txtmalzeme.Text.Length >= 1 || txtofis.Text.Length >= 1 || txtdiger.Text.Length >= 1 )
            {
                business1.AddOutcome(ay,yil,elektrik,su,gaz,internet,maas,malzeme,ofis,diger);
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Kayıt ekleme başarılı, Giderler sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "Dashboard/Gider-Gor.aspx';",true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);
            }

        }
    }
}