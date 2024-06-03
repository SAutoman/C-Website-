using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idk
{
    public partial class LoginCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string admin = Application["Admin"].ToString();
            string reg1 = Application["Registered1"].ToString();
            string reg2 = Application["Registered2"].ToString();
            string reg3 = Application["Registered3"].ToString();

            Session["Login"] = true;
            Session["Admin"] = false;

            if (Request.Form["email"] == admin && Request.Form["password"] == "123asd")
            {
                Session["userName"] = "m";
                Session["Admin"] = true;
            }
            else if (Request.Form["email"] == reg1 && Request.Form["password"] == "123asd")
            {
                Session["userName"] = "a";
            }
            else if (Request.Form["email"] == reg2 && Request.Form["password"] == "123asd")
            {
                Session["userName"] = "b";
            }
            else if (Request.Form["email"] == reg3 && Request.Form["password"] == "123asd")
            {
                Session["userName"] = "c";
            }
            else
            {
                Session["userName"] = "Visitor";
                Session["Login"] = false;
            }

            if (Session["Login"].Equals(true))
            {
                Application["Logins"] = (int)Application["Logins"] + 1;
                Application["OnlineUsers"] = (int)Application["OnlineUsers"] + 1;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx?error");
            }
        }
    }
}