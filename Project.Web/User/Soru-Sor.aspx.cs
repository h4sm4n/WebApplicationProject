using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.User
{
    public partial class Soru_Sor : System.Web.UI.Page
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
            success_message.Visible = false;
            error_message.Visible = false;
        }

        protected void btngonder_OnClick(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.Subject = konu.Value;
            msg.From = new MailAddress("insaatpamuk@gmail.com", "Pamuk inşaat soru sor.");
            msg.To.Add(new MailAddress("insaatpamuk@gmail.com"));
            msg.Body = message.Value;
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
                success_message.Visible = true;
                ScriptManager.RegisterStartupScript(this,this.GetType(),"redirect",
                    "alert('Eylem başarılı, Anasayfaya yönlendiriliyorsunuz.'); window.location='" + 
                    Request.ApplicationPath + "Dashboard/Anasayfa.aspx';",true);
            }
            catch
            {
                error_message.Visible = true;
            }
        }
    }
}