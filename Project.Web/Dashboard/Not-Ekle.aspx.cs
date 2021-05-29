using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Dashboard
{
    public partial class Not_Ekle : System.Web.UI.Page
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
            string notdetay = txtnot.Text;
            string alarmtarihi = txtalarm.Text;
            string tur = drptur.Text;
            if (txtalarm.Text.Length >= 1 && drptur.Text.Length >= 1 && txtnot.Text.Length >= 1)
            {
                business1.AddNote(notdetay,tur,alarmtarihi);
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Not ekleme başarılı, Notlar sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "Dashboard/Notlar.aspx';",true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);

            }
            
        }
    }
}