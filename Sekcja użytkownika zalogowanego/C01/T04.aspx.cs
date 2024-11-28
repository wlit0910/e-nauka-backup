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
    public partial class Formularz_internetowy119 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Output.Visible = false;
                Param2.Visible = false;
                Param3.Visible = false;
                Param4.Visible = false;
                Param5.Visible = false;
                Output2.Visible = false;
                Output3.Visible = false;
                Output4.Visible = false;
                Output5.Visible = false;
                Output6.Visible = false;
                Label_Result.Visible = true;
            };
        }

        protected void Sprawdz_kod_Click(object sender, EventArgs e)
        {
            string zadanie1 = Task1.Text;
            string zadanie2 = Task2.Text;
            string zadanie3 = Task3.Text;
            string zadanie4 = Task4.Text;
            string zadanie5 = Task5.Text;
            string zadanie6 = Task6.Text;

            if (zadanie1 == "for" && zadanie2 == "i++" && zadanie3 == "[i]" &&
                zadanie4 == "for" && zadanie5 == "i--" && zadanie6 == "[i]")
            {
                Output.Visible = true;
                Param.Visible = true;

                if (int.TryParse(Param.Text, out int liczba1) && liczba1 >= 0)
                {
                    Param2.Visible = true;
                    Output2.Visible = true;

                    if (int.TryParse(Param2.Text, out int liczba2) && liczba2 >= 0)
                    {
                        Param3.Visible = true;
                        Output3.Visible = true;

                        if (int.TryParse(Param3.Text, out int liczba3) && liczba3 >= 0)
                        {
                            Param4.Visible = true;
                            Output4.Visible = true;

                            if (int.TryParse(Param4.Text, out int liczba4) && liczba4 >= 0 )
                            {
                                Param5.Visible = true;
                                Output5.Visible = true;

                                if (int.TryParse(Param5.Text, out int liczba5) && liczba5 >= 0)
                                {
                                    // Jeśli wszystkie liczby są poprawne, odwracamy tablicę i wyświetlamy
                                    int[] liczby = new int[] { liczba1, liczba2, liczba3, liczba4, liczba5 };
                                    string lan = "";

                                    for (int i = 4; i >= 0; i--)
                                    {
                                        lan += liczby[i].ToString() + "  ";
                                    }

                                    Output6.Visible = true;
                                    Output6.Text = lan;

                                    Label_Result.Visible = true;
                                    Label_Result.Text = "Świetnie! Udało Ci się rozwiązać zadanie. Możesz przejść dalej.";
                                    Label_Result.ForeColor = Color.ForestGreen;
                                }
                            }
                        }
                    }
                }
                else
                {
                    //Output2.Text = "Podaj liczbę:";
                    //Output2.Visible = true;
                }
            }
            else
            {
                Output.Text = "Some error occurred. Try again!";
                Label_Result.Visible = true;
                Label_Result.Text = "Coś jest nie tak. Spróbuj rozwiązać zadanie jeszcze raz.";
                Label_Result.ForeColor = Color.Red;
            } 
        }
  
        protected void Wroc_teoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("L04.aspx");
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            if (Label_Result.ForeColor == Color.ForestGreen) // potem sprawdz z BD status zadania
            {
                // ------------------------------------------------------------- wzór 

                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                int lessonId = 4;                                // ------------------------------------------------------------- zmienić 

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
                            Response.Redirect("L05.aspx");  // ------------------------------------------------------------- zmienić 
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
