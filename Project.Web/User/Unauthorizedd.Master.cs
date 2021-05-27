using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.User
{
    public partial class Unauthorizedd : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divUnauthorized.Visible = false;
            divGuestUyari.Visible = false;
            divAdminUyari.Visible = false;
            divContentGoster1.Visible = false;
            divContentGoster2.Visible = false;

            try
            {
                if (Session["role"] == null)
                {
                    divGuestUyari.Visible = true;
                }
                else if (Session["role"].Equals(1))
                {
                    divAdminUyari.Visible = true;
                }
                else if (Session["role"].Equals(2))
                {
                    divUnauthorized.Visible = true;
                }
            }

            catch(Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('hata')", true);
            }
        }
    }
}