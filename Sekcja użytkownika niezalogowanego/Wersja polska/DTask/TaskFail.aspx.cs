using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class Formularz_internetowy16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Demo_no_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Demo.aspx");
        }

        protected void Demo_yes_Click(object sender, EventArgs e)
        {
            Response.Redirect("DPartII.aspx");
        }
    }
}