using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.AdminSec
{
    public partial class Formularz_internetowy17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Identity"];
            if (cookie != null)
            {             
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void Logout_Admin_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["Identity"] != null)
            {
                Response.Cookies["Identity"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["TestCookie"].Expires = DateTime.Now.AddDays(-1);
            }

            Response.Redirect("../Default.aspx");
        }
    }
}