using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class Formularz_internetowy15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
        }

        protected void Login_task_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login.aspx");
        }

        protected void Losuj_demo_Click(object sender, EventArgs e)
        {
            Response.Redirect("DPartI.aspx");
        }
    }
}