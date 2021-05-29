using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.DataAccess;

namespace Project.Web.Dashboard
{
    public partial class Sifremi_Unuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void GetNewPassword()
        {
            string randstr;
            Random Rnd= new Random();
            StringBuilder StrBuild = new StringBuilder();
            for (int i = 0; i < 8; i++)
            {
                int ASCII= Rnd.Next(32, 127);
                char Karakter = Convert.ToChar(ASCII);
                StrBuild.Append(Karakter);
            }

            randstr = StrBuild.ToString();

            var business1 = new Project.Business.Business();
            int id = Business.Business.GetUserIdByCustomersMail(txtmail.Text);
            business1.UpdateCustomers(id,randstr);

            MailMessage msg = new MailMessage();
            msg.Subject = "Şifre Değişikliği";
            msg.From = new MailAddress("insaatpamuk@gmail.com", "Pamuk İnşaat");
            msg.To.Add(new MailAddress(txtmail.Text));
            msg.Body = "Geçici Şifreniz:" +  "" + "" + randstr;
            msg.IsBodyHtml = true;
            msg.Priority = MailPriority.High;
            // Host ve Port Gereklidir!
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            // Güvenli bağlantı gerektiğinden kullanıcı adı ve şifrenizi giriniz.
            NetworkCredential AccountInfo = new NetworkCredential("insaatpamuk@gmail.com", "Pamuk.123");
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = AccountInfo;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            try
            {
                smtp.Send(msg);
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Şifre değişikliği bilgileriniz mail adresinize gönderildi, Girişe yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "Dashboard/Giris.aspx';",true);
            }
            catch(Exception r)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Hata oluştu.')"+ r.Message, true);
            }
        }

        protected void btnyolla_OnClick(object sender, EventArgs e)
        {
            if (txtmail.Text == txtmail2.Text)
            {
                GetNewPassword();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen mail adresinizin tekrarını doğru girin')", true);
            }
        }
    }
}