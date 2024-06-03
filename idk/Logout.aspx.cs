using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idk
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            if (Application["OnlineUsers"] != null)
            {
                Application["OnlineUsers"] = (int)Application["OnlineUsers"] - 1;
            }
            Response.Redirect("Login.aspx");
        }
    }
}