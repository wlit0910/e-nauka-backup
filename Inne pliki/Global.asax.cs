using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace e_nauka
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Kod uruchamiany podczas uruchamiania aplikacji
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            var context = HttpContext.Current;
            var exception = context.Server.GetLastError();
            if (exception is System.Web.HttpRequestValidationException)
            {
                context.Server.ClearError();    // Here is the new line.
                Response.Clear();
                Response.StatusCode = 200;
                Response.Write("Wpisano niedozwoloną wartość. Cofnij się do poprzedniej strony.");
                Response.End();
                return;
            }
        }
    }
}