using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.GuestENG
{
    public partial class Formularz_internetowy17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Wroc_Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginENG.aspx");
        }
    }
}