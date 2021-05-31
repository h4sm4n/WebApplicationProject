using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.User
{
    public partial class Bilgilerim_Duzenle : System.Web.UI.Page
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
            txtemail.ReadOnly = false;
            txttc.ReadOnly = true;
            txtad.ReadOnly = false;
            txtaddress.ReadOnly = false;
            txtkullaniciadi.ReadOnly = true;
            txtsehir.ReadOnly = true;
            txtsoyad.ReadOnly = false;
            txtilce.Enabled = true;
            txttel.ReadOnly = false;
            btnguncelle.Visible = true;
            btnduzenle.Visible = false;

            DataAccess.Model1 model = new DataAccess.Model1();
            using (model)
            {
                int id = Business.Business.GetCustomerIdByUserId(Convert.ToInt32(Session["id"]));
                var x = model.Musteriler.Find(id);

                int id3 = Business.Business.GetUserIdByCustomersTC(x.MusteriTc);
                var y = model.Kullanicilar.Find(id3);

                txttc.Text = x.MusteriTc;

                txtkullaniciadi.Text = y.KullaniciAdi;
            }
        }

        protected void btnduzenle_OnClick(object sender, EventArgs e)
        {
            txtemail.ReadOnly = false;
            txttc.ReadOnly = true;
            txtad.ReadOnly = false;
            txtaddress.ReadOnly = false;
            txtkullaniciadi.ReadOnly = true;
            txtsehir.ReadOnly = true;
            txtsoyad.ReadOnly = false;
            txtilce.Enabled = true;
            txttel.ReadOnly = false;
            btnguncelle.Visible = true;
            btnduzenle.Enabled = false;
        }

        protected void btnguncelle_OnClick(object sender, EventArgs e)
        {
            int id = Business.Business.GetCustomerIdByUserId(Convert.ToInt32(Session["id"]));
            int id2 = Business.Business.GetAdressIdByCustomers(txttc.Text);
            var business1 = new Business.Business();
            try
            {
                if (txttel.Text.Length >= 1 && txtad.Text.Length >= 1 && txtaddress.Text.Length >= 1 &&
                    txtsehir.Text.Length >= 1 && txtilce.Text.Length >= 1 && txtsoyad.Text.Length >= 1 &&
                    txtemail.Text.Length >= 1)
                {
                    business1.UpdateAdresses(id2,txtaddress.Text,txtsehir.Text,txtilce.Text);
                    business1.UpdateMusteriler(id,txttel.Text,txtad.Text,txtsoyad.Text,txtemail.Text);
                    ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                        "alert('Güncelleme işlemi başarılı. Bilgilerim sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                        Request.ApplicationPath + "User/Bilgilerim.aspx';",true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen boş alan bırakmayın.')", true);
                }
                
            }
            catch(Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bir hata oluştu.')", true);
            }
        }
    }
}