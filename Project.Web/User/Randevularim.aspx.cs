using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.User
{
    public partial class Randevularim : System.Web.UI.Page
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
        public void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void datasource1_OnSelecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            int parameter = Business.Business.GetCustomerIdByUserId(Convert.ToInt32(Session["id"]));
            string cmd = "SELECT * FROM [Randevular] WHERE ([MusteriId] =" + parameter + ";";
            e.Command.Parameters[0].Value = parameter;
        }

        protected void gridbanka_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);
           
                // delete from tblcountry where countryid="+id+";
               
            }
        }
    }
}