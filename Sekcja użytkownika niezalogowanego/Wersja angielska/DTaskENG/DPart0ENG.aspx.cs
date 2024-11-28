using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.DTaskENG
{
    public partial class Formularz_internetowy1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Random rand = new Random();
                int los = rand.Next(1, 4); // losuj 1 do 3
                Session["Los"] = los; // Zapisz wartość los do sesji

                System.Diagnostics.Debug.WriteLine(los);

                switch (los)
                {
                    case 1:
                        TytulLekcji_Demo.Text = "C++ Basics";
                        Trudnosc_Demo.Text = "beginner";
                        Modul_Demo.Text = "Introduction to C++";
                        break;

                    case 2:
                        TytulLekcji_Demo.Text = "Variables, constants";
                        Trudnosc_Demo.Text = "intermediate";
                        Modul_Demo.Text = "Introduction to C++";
                        break;

                    case 3:
                        TytulLekcji_Demo.Text = "Operators";
                        Trudnosc_Demo.Text = "expert";
                        Modul_Demo.Text = "Introduction to C++";
                        break;

                    default:
                        Response.Redirect(Request.Url.ToString());
                        break;
                }
            }

        }

        protected void Wroc_demo_Click(object sender, EventArgs e)
        {
            Response.Redirect("../GuestENG/DemoENG.aspx");
        }

        protected void Rozpocznij_Demo_Click(object sender, EventArgs e)
        {

            if (Session["Los"] != null)
            {
                int los = (int)Session["Los"]; // Odczytaj los z sesji

                switch (los)
                {
                    case 1:
                        Response.Redirect("DPart1ENG.aspx"); 
                        break;

                    case 2:
                        Response.Redirect("DPart2ENG.aspx");
                        break;

                    case 3:
                        Response.Redirect("DPart3ENG.aspx");
                        break;

                    default:
                        Response.Redirect(Request.Url.ToString());
                        break;
                }
            }
        }
    }
}