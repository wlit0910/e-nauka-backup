using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.GuestENG
{
    public partial class Formularz_internetowy11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Lekcja_demo_Click(object sender, EventArgs e)
        {
            Response.Redirect("../DTaskENG/DPart0ENG.aspx");
        }
    }
}