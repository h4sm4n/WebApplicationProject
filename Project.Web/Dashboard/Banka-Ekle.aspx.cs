using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Dashboard
{
    public partial class Banka_Ekle : System.Web.UI.Page
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
            //txtsube.Text = "";
            //txtad.Text = "";
            //txtiban.Text = "TR";
            //txtdetay.Text = "";
            //txthesapno.Text = "";
        }

        protected void btnekle_Click(object sender, EventArgs e)
        {
            var business1 = new Project.Business.Business();
            string bankname = txtad.Text;
            string bankdep = txtsube.Text;
            string hesapno = txthesapno.Text;
            string ibanno = txtiban.Text;
            string detay = txtdetay.Text;
            if (txtsube.Text.Length >=1 && txtad.Text.Length >=1 && txtiban.Text.Length >=1 && txtdetay.Text.Length >=1 && txthesapno.Text.Length >=1)
            {
                business1.AddBank(bankname, bankdep,hesapno,ibanno,detay);
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Kayıt ekleme başarılı, Bankalar sayfasına yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "Dashboard/Bankalar.aspx';",true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);
            }
            
        }
    }
}