using System;
using System.Web;
using System.Web.Security;

namespace idk
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["loggedVisitors"] = 0;
            Application["currentvisitors"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["firstname"] = "visitor";
            Session["IsAdmin"] = false;
            Session["Login"] = false;
            Application["currentUsers"] = Convert.ToInt16(Application["currentUsers"]) + 1;
            Session.Timeout = 1;
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            string requestUrl = HttpContext.Current.Request.Url.AbsolutePath;

            if (requestUrl.EndsWith("/Unauthorized.aspx", StringComparison.OrdinalIgnoreCase)
                || requestUrl.EndsWith("/Login.aspx", StringComparison.OrdinalIgnoreCase)
                || requestUrl.EndsWith("/Register.aspx", StringComparison.OrdinalIgnoreCase))
            {
                return;
            }

            bool? isAuthenticated = HttpContext.Current.User?.Identity?.IsAuthenticated;
            if (isAuthenticated == null || isAuthenticated == false)
            {
                Response.Redirect("Unauthorized.aspx");
            }
        }


        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            if (Application["OnlineUsers"] != null)
            {
                Application["OnlineUsers"] = (int)Application["OnlineUsers"] - 1;
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}