using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.DataAccess;

namespace Project.Web.Dashboard
{
    public partial class Mail_Send : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                success_message.Visible = false;
                error_message.Visible = false;
            }
        }

        protected void btnsorgula_OnClick(object sender, EventArgs e)
        {
            Model1 model = new Model1();
            if (tcno.Value == "")
            {
                emailto.Value = null;
            }
            else
            {
                var value = Business.Business.GetCustomerId(tcno.Value);
                using (model)
                {
                    var sorgu = (from a in model.Musteriler
                            where a.Id == value
                            select a.MusteriMail).FirstOrDefault();
                    emailto.Value = sorgu;
                }
                
            }
        }

        protected void btngonder_OnClick(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.Subject = konu.Value;
            msg.From = new MailAddress(email.Value, name.Value);
            msg.To.Add(new MailAddress(emailto.Value));
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