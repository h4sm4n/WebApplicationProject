using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Dashboard
{
    public partial class Gider_Gor : System.Web.UI.Page
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

        protected void gridgider_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);
           
                // delete from tblcountry where countryid="+id+";
               
            }
        }
    }
}