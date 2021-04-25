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
                ClientScript.RegisterStartupScript(this.GetType(), "fnCall", "<script language='javascript'>alert('Kayıt başarılı!');</script>");
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kayıt ekleme başarılı.')", true);
                Response.Redirect("Anasayfa.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);
            }
            
        }
    }
}