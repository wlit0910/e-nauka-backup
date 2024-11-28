using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class Formularz_internetowy19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Wroc_demo_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Demo.aspx");
        }

        protected void Zadanie_demo_Click(object sender, EventArgs e)
        {
            Response.Redirect("DFTask2.aspx");
        }
    }
}