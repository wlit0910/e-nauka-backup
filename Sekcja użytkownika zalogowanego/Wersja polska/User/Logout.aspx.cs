using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.User
{
    public partial class Formularz_internetowy1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie2 = Request.Cookies["User"];
            if (cookie2 != null)
            {
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }
        }

        protected void Logout_user_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["User"] != null)
            {
                Response.Cookies["User"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["TestCookie"].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Redirect("../Login.aspx");
        }
    }
}