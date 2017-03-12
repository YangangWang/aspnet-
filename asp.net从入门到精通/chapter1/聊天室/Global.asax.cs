using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace chapter1
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["count"] = 0;
            Application["users"] = new List<string>();
            Application["charts"] = "";
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["count"] = (int)Application["count"] + 1;
            
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["count"] = (int)Application["count"] - 1;
            Application["users"] = ((List<string>)Application["users"]).Remove(Session["user"].ToString());
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            
        }
    }
}