using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing; 

namespace e_nauka.User
{
    public partial class Formularz_internetowy14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userLogin = "";
            Course2.Text = "Kurs Java - początkujący";

            HttpCookie cookie2 = Request.Cookies["User"];
            if (cookie2 != null)
            {
                User_param.Text = cookie2["email"];
                userLogin = cookie2["email"];
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string[] dane = new string[5];

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    // Wykonywanie zapytań SQL
                    SqlCommand cmd = new SqlCommand("SELECT NAME,SURNAME,GENDER,AGE,EMAIL FROM USERS WHERE LOGIN = @UserLogin; ", conn);
                    cmd.Parameters.AddWithValue("@UserLogin", userLogin);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        // Odczyt danych
                        dane[0] = reader["NAME"].ToString();
                        dane[1] = reader["SURNAME"].ToString();
                        dane[2] = reader["GENDER"].ToString();
                        dane[3] = reader["AGE"].ToString();
                        dane[4] = reader["EMAIL"].ToString();
                        //string data = reader.ToString();
                        Username.Text = dane[0];
                        Surname.Text = dane[1];

                        if (dane[2].StartsWith("K")) {
                            Gender.Text = "Kobieta";
                        } else  {
                            Gender.Text = "Mężczyzna";
                        }
                     
                        Age.Text = dane[3];
                        Email.Text = dane[4];
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Obsługa błędów
                    Response.Write("Błąd: " + ex.Message);
                }
            }

            try
            {          
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT NAME FROM COURSE WHERE KID = 1 ", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Course.Text = reader["NAME"].ToString();
                    }
                    reader.Close();
                }
            }catch(Exception ex)
            {
                // Obsługa błędów
                Response.Write("Błąd: " + ex.Message);
            }
        }

        protected void Edytuj_User_Click(object sender, EventArgs e)
        {
            Pole_User.Visible = true;
            Nowe_User.Visible=true;
            Send_User.Visible = true;
            ValidUser.Visible = true;
            Info_Label.Visible = false;
        }

        protected void Send_User_Click(object sender, EventArgs e)
        {
            string newValue = Nowe_User.Text.Trim();
            string selectedCategory = Pole_User.SelectedValue;
            string userLogin = User_param.Text;

            if (string.IsNullOrEmpty(newValue))
            {
                ValidUser.Text = "Wartość nie może być pusta.";
                return;
            }

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    string updateQuery = string.Empty;

                    switch (selectedCategory)
                    {
                        case "Email":
                            updateQuery = "UPDATE USERS SET EMAIL = @NewValue WHERE LOGIN = @UserLogin";
                            break;
                        case "Login":
                            updateQuery = "UPDATE USERS SET LOGIN = @NewValue WHERE LOGIN = @UserLogin";
                            break;
                        case "Hasło":
                            updateQuery = "UPDATE USERS SET PASSWORD = @NewValue WHERE LOGIN = @UserLogin";
                            break;
                    }

                    using (SqlCommand cmd = new SqlCommand(updateQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@NewValue", newValue);
                        cmd.Parameters.AddWithValue("@UserLogin", userLogin);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            ValidUser.Text = "Dane zostały zaktualizowane pomyślnie.";
                            ValidUser.ForeColor = Color.Green;
                        }
                        else
                        {
                            ValidUser.Text = "Nie znaleziono użytkownika o podanym loginie.";
                            ValidUser.ForeColor = Color.Red;
                        }
                    }
                }
                catch (SqlException ex)
                {
                    ValidUser.Text = "Błąd podczas aktualizacji danych: " + ex.Message;
                    ValidUser.ForeColor = Color.Red;
                }
            }
        }
    }
}
