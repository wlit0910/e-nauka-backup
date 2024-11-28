using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class Formularz_internetowy110 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wroc_teoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("DPart2.aspx");
        }

        protected void Sprawdz_kod_Click(object sender, EventArgs e)
        {
            //int czyDobrze = 0; // potem niech se to będzie wczytywane do BD jako status zadania, czy lekcji, a potem niech to będzie sczytywane czy 0 i 1 przy Przejdź dalej
            string zadanie1 = Task1.Text;
            string zadanie2 = Task2.Text;
            string zadanie3 = Task3.Text;
            string zadanie4 = Task4.Text;
            string zadanie5 = Task5.Text;
            string zadanie6 = Task6.Text;
            string zadanie7 = Task7.Text;

            if (zadanie1 == "#include" && zadanie2 == "string" && zadanie3 == "string" 
                && zadanie4 == "float" && zadanie5 == "const float" && zadanie6 == "cin" 
                && zadanie7 == "cin")
            {
                Output.Text = "Produkt: Kawa";
                Output.Visible = true;
                Output2.Text = "Cena: 25.99 zł";
                Output2.Visible = true;

                Label_Result.Visible = true;
                Label_Result.Text = "Świetnie! Udało Ci się rozwiązać zadanie. Możesz przejść dalej.";
                Label_Result.ForeColor = Color.ForestGreen;
                //czyDobrze = 1;
            }
            else
            {
                Output.Text = "Some error occured. Try again!";
                Output.Visible = true;
                Output2.Text = "";
                Output2.Visible = false;

                Label_Result.Visible = true;
                Label_Result.Text = "Coś jest nie tak. Spróbuj rozwiązać zadanie jeszcze raz.";
                Label_Result.ForeColor = Color.Red;
                //czyDobrze = 0;
            }
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            if (Output.Text == "Produkt: Kawa") // potem sprawdz z BD status zadania
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