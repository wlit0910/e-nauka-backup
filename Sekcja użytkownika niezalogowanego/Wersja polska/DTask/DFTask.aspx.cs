using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class Formularz_internetowy18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Wroc_teoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("DPartII.aspx");
        }

        protected void Sprawdz_kod_Click(object sender, EventArgs e)
        {

            //string user = ((TextBox)this.Master.FindControl("TaskContent").FindControl("Task1")).Text;

            //int czyDobrze = 0; // potem niech to będzie wczytywane do BD jako status zadania, czy lekcji, a potem niech to będzie sczytywane czy 0 i 1 przy Przejdź dalej
            string zadanie1 = Task1.Text;
            string zadanie2 = Task2.Text;

            if(zadanie1 == "#include" && zadanie2 == "cout")
            {
                Output.Text = "Hello, World!";
                Output.Visible = true;

                Label_Result.Visible = true;
                Label_Result.Text = "Świetnie! Udało Ci się rozwiązać zadanie. Możesz przejść dalej.";
                Label_Result.ForeColor = Color.ForestGreen;
                //czyDobrze = 1;
            }
            else
            {
                Output.Text = "Some error occured. Try again!";
                Output.Visible = true;

                Label_Result.Visible = true;
                Label_Result.Text = "Coś jest nie tak. Spróbuj rozwiązać zadanie jeszcze raz.";
                Label_Result.ForeColor = Color.Red;
                //czyDobrze = 0;
            }
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            if(Output.Text == "Hello, World!") // potem sprawdz z BD status zadania
            {
                Response.Redirect("TaskSuccess.aspx");
            }
            else
            {
                Response.Redirect(Request.Url.ToString());
            }
        }
    }
}