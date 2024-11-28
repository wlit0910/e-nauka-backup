using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class Formularz_internetowy13 : System.Web.UI.Page
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
                        TytulLekcji_Demo.Text = "Podstawy C++";
                        Trudnosc_Demo.Text = "łatwy";
                        Modul_Demo.Text = "Wprowadzenie do C++";
                        break;

                    case 2:
                        TytulLekcji_Demo.Text = "Zmienne, stałe";
                        Trudnosc_Demo.Text = "średni";
                        Modul_Demo.Text = "Wprowadzenie do C++";
                        break;

                    case 3:
                        TytulLekcji_Demo.Text = "Operatory";
                        Trudnosc_Demo.Text = "trudny";
                        Modul_Demo.Text = "Wprowadzenie do C++";
                        break;

                    default:
                        Response.Redirect(Request.Url.ToString());
                        break;
                }
            }

        }

        protected void Wroc_demo_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Demo.aspx");
        }

        protected void Rozpocznij_Demo_Click(object sender, EventArgs e)
        {

            if (Session["Los"] != null)
            {
                int los = (int)Session["Los"]; // Odczytaj los z sesji

                switch (los)
                {
                    case 1:
                        Response.Redirect("DPartII.aspx"); // tutaj stronka do jakiejs teorii
                        break;

                    case 2:
                        Response.Redirect("DPart2.aspx");
                        break;

                    case 3:
                        Response.Redirect("DPart3.aspx");
                        break;

                    default:
                        Response.Redirect(Request.Url.ToString());
                        break;
                }
            }
        }
    }
 }
