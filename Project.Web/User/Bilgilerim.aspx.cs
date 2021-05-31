using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.User
{
    public partial class Bilgilerim : System.Web.UI.Page
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
            txtemail.ReadOnly = true;
            txttc.ReadOnly = true;
            txtad.ReadOnly = true;
            txtaddress.ReadOnly = true;
            txtkullaniciadi.ReadOnly = true;
            txtsehir.ReadOnly = true;
            txtsoyad.ReadOnly = true;
            txtilce.Enabled = false;
            txttel.ReadOnly = true;

            DataAccess.Model1 model = new DataAccess.Model1();
            using (model)
            {
                int id = Business.Business.GetCustomerIdByUserId(Convert.ToInt32(Session["id"]));
                var x = model.Musteriler.Find(id);

                int id2 = Business.Business.GetAdressIdByCustomers(x.MusteriTc);
                var a = model.Adresler.Find(id2);

                int id3 = Business.Business.GetUserIdByCustomersTC(x.MusteriTc);
                var y = model.Kullanicilar.Find(id3);

                txtemail.Text = x.MusteriMail;
                txttc.Text = x.MusteriTc;
                txtad.Text = x.MusteriAd;
                txtsoyad.Text = x.MusteriSoyad;
                txttel.Text = x.MusteriTelefon;

                txtaddress.Text = a.AdresDetay;
                txtilce.Text = a.Ilce;
                txtsehir.Text = a.Sehir;

                txtkullaniciadi.Text = y.KullaniciAdi;
            }
        }
    }
}