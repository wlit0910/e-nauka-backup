using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace e_nauka
{
    public partial class Formularz_internetowy118 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Output.Visible = false;
            Param.Visible = false;
        }
        protected void Sprawdz_kod_Click(object sender, EventArgs e)
        {
   
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
            Response.Redirect("L03.aspx");
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            if (Label_Result.ForeColor == Color.ForestGreen) // potem sprawdz z BD status zadania
            {
                // ------------------------------------------------------------- wzór 

                    string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                    int lessonId = 3;                                // ------------------------------------------------------------- zmienić 

                    HttpCookie cookie2 = Request.Cookies["User"];
                    string userLogin = "";
                    int userID = 0;

                    if (cookie2 != null && cookie2["email"] != null)
                    {
                    userLogin = cookie2["email"];
                }
                    else
                    {
                        Response.Redirect("../Login.aspx");
                        return; 
                    }

                    // Pobieranie ID użytkownika
                    string selectQuery = "SELECT ID FROM USERS WHERE LOGIN = @UserLogin;";
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        using (SqlCommand cmd = new SqlCommand(selectQuery, conn))
                        {
                            cmd.Parameters.AddWithValue("@UserLogin", userLogin);
                            SqlDataReader userReader = cmd.ExecuteReader();

                            if (userReader.HasRows)
                            {
                                while (userReader.Read())
                                {
                                    userID = Convert.ToInt32(userReader["ID"]);
                                }
                            }
                        }
                    }

                    // Sprawdzenie i zaktualizowanie statusu lekcji
                    string checkQuery = "SELECT COUNT(*) FROM PROGRESS WHERE UID = @UserId AND LID = @LessonId;";
                    string insertOrUpdateQuery = "";

                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();

                        // Sprawdzenie, czy istnieje wpis w PROGRESS
                        using (SqlCommand checkCmd = new SqlCommand(checkQuery, conn))
                        {
                            checkCmd.Parameters.AddWithValue("@UserId", userID);
                            checkCmd.Parameters.AddWithValue("@LessonId", lessonId);
                            int recordExists = (int)checkCmd.ExecuteScalar();

                            if (recordExists > 0)
                            {
                                insertOrUpdateQuery = "UPDATE PROGRESS SET STATUS = 'COMPLETED' WHERE UID = @UserId AND LID = @LessonId;";
                            }
                            else
                            {
                                insertOrUpdateQuery = "INSERT INTO PROGRESS (UID, LID, STATUS) VALUES (@UserId, @LessonId, 'COMPLETED');";
                            }
                        }

                        using (SqlCommand cmd = new SqlCommand(insertOrUpdateQuery, conn))
                        {
                            cmd.Parameters.AddWithValue("@UserId", userID);
                            cmd.Parameters.AddWithValue("@LessonId", lessonId);

                            int rowsAffected = cmd.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                Response.Redirect("L04.aspx");  // ------------------------------------------------------------- zmienić 
                            }
                            else
                            {
                                Label_Result.Text = "Nie znaleziono lekcji o podanym ID.";
                            }
                        }
                    }
                }
                else
                {
                    Response.Redirect(Request.Url.ToString());
                }
            }    
    }
}