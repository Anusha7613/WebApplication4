using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication4
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }
        protected void Application_End(object sender, EventArgs e)
        {
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["UserId"] = null;
            //Session["On"] = null;
            Session["UserName"] = null;
            //Session["On"] = null;     
        }
        protected void Session_End(object sender, EventArgs e)
        {
            Session["UserId"] = null;
            //Session["On"] = null;
            Session["UserName"] = null;
           // Session["On"] = null;
        }
    }
}