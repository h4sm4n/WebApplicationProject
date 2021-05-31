using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.User
{
    public partial class Randevu_Olustur : System.Web.UI.Page
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
            string tc = Business.Business.GetCustomerTcByCustomerId(Convert.ToInt32(Session["id"]));
            drpadres.DataSource = Business.Business.GetAdressByCustomers(tc);
            drpadres.DataBind();
        }

        protected void btnekle_OnClick(object sender, EventArgs e)
        {
            var business1 = new Business.Business();
            int id = Convert.ToInt32(Session["id"]);
            string adresim = drpadres.Text;
            string tarih = txttarih.Text;
            string saat = txtsaat.Text;
            string detay = txtdetay.Text;
            string tur = drpisturu.Text;

            if (drpadres.Text.Length >= 1 && drpisturu.Text.Length >= 1 && txtdetay.Text.Length >= 1 &&
                txtsaat.Text.Length >= 1 && txttarih.Text.Length >= 1)
            {
                business1.AddAppointment(id,adresim,tarih,saat,detay,tur);
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Randevu ekleme başarılı, Giderler sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "User/Randevularim.aspx';",true);
            }

            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);

            }
        }
    }
}