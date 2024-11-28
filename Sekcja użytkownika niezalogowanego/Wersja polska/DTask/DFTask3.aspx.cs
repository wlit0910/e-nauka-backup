using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class Formularz_internetowy112 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Output.Visible = false;
            Param.Visible = false;
        }

        protected void Sprawdz_kod_Click(object sender, EventArgs e)
        {
            //int czyDobrze = 0; // potem niech to będzie wczytywane do BD jako status zadania, czy lekcji, a potem niech to będzie sczytywane czy 0 i 1 przy Przejdź dalej
            string zadanie1 = Task1.Text;
            string zadanie2 = Task2.Text;
            string zadanie3 = Task3.Text;
            string zadanie4 = Task4.Text;
            string zadanie5 = Task5.Text;

            if (zadanie1 == "if" && zadanie2 == "&&" && zadanie3 == "else if"
                    && zadanie4 == "else if" && zadanie5 == "else")
            {
                Output.Visible = true;
                Param.Visible = true;

                if (Param.Text.Length > 0)
                {
                    try
                    {
                        int userInput = Convert.ToInt32(Param.Text);

                        if (userInput % 3 == 0 && userInput % 5 == 0)
                        {
                            Output2.Visible = true;
                            Output2.Text = "FizzBuz";
                        }
                        else if (userInput % 3 == 0)
                        {
                            Output2.Visible = true;
                            Output2.Text = "Fizz";
                        }
                        else if (userInput % 5 == 0)
                        {
                            Output2.Visible = true;
                            Output2.Text = "Buzz";
                        }
                        else
                        {
                            Output2.Visible = true;
                            Output2.Text = "Liczba nie spełnia warunków.";
                        }
                    }
                    catch (Exception ex)
                    {
                        Output2.Visible = true;
                        Output2.Text = "Błąd! " + ex.Message;
                    }
                }
                else
                {
                    Output.Text = "Podaj liczbę od 1 do 100: ";
                    //Output2.Visible= true;
                    //Output2.Text = "Błąd! Nie wpisano wartości.";
                }

                Label_Result.Visible = true;
                Label_Result.Text = "Świetnie! Udało Ci się rozwiązać zadanie. Możesz przejść dalej.";
                Label_Result.ForeColor = Color.ForestGreen;
                //czyDobrze = 1;
            }
            else
            {
                if (Param.Visible == true)
                {
                    Output.Text = "Podaj liczbę od 1 do 100:";
                }
                else
                {

                    Param.Visible = false;

                    Output.Text = "Some error occured. Try again!";
                    Output.Visible = true;
                    Output2.Text = "";
                    Output2.Visible = false;

                    Label_Result.Visible = true;
                    Label_Result.Text = "Coś jest nie tak. Spróbuj rozwiązać zadanie jeszcze raz.";
                    Label_Result.ForeColor = Color.Red;
                    //czyDobrze = 0;

                    Task1.Text = "";
                    Task2.Text = "";
                    Task3.Text = "";
                    Task4.Text = "";
                    Task5.Text = "";
                }
            }
        }

        protected void Wroc_teoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("DPart3.aspx");
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            if (Label_Result.ForeColor == Color.ForestGreen) // potem sprawdz z BD status zadania
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