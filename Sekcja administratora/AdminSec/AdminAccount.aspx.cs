using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.AdminSec
{
    public partial class Formularz_internetowy14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string adminLogin = "";
            HttpCookie cookie = Request.Cookies["Identity"];
            if (cookie != null)
            {
                Admin_param.Text = cookie["id"];
                adminLogin = cookie["id"];
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }

            Pole_Admin.Visible = false;
            Nowe_Admin.Visible = false;
            Send_Admin.Visible = false;

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string[] dane = new string[8];

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT AID,LOGIN,PASSWORD,TOKEN,NAME,SURNAME,EMAIL,PHONE FROM ADMINS WHERE LOGIN = @AdminLogin; ", conn);
                    cmd.Parameters.AddWithValue("@AdminLogin", adminLogin);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        dane[0] = reader["NAME"].ToString();
                        dane[1] = reader["SURNAME"].ToString();
                        dane[2] = reader["EMAIL"].ToString();
                        dane[3] = reader["PHONE"].ToString();
                        dane[4] = reader["AID"].ToString();
                        dane[5] = reader["LOGIN"].ToString();
                        dane[6] = reader["PASSWORD"].ToString();
                        dane[7] = reader["TOKEN"].ToString();
                        //string data = reader.ToString();
                        Username.Text = dane[0];
                        Surname.Text = dane[1];
                        Email.Text = dane[2];
                        Phone.Text = dane[3];

                        ID_Admin.Text = dane[4];
                        Login_Admin.Text = dane[5];
                        Haslo_Admin.Text = dane[6];
                        Token_Admin.Text = dane[7];
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Błąd: " + ex.Message);
                }
            }
        }

        protected void Edytuj_Admin_Click(object sender, EventArgs e)
        {
            Pole_Admin.Visible = true;
            Nowe_Admin.Visible = true;
            Send_Admin.Visible = true;
            Info_Label.Visible = true;
        }

        protected void Send_Admin_Click(object sender, EventArgs e)
        {
            try
            {
                string newValue = Nowe_Admin.Text.Trim();
                string selectedCategory = Pole_Admin.SelectedValue;
                string userLogin = Admin_param.Text;

                if (string.IsNullOrEmpty(newValue))
                {
                    ValidAdmin.Text = "Wartość nie może być pusta.";
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
                                updateQuery = "UPDATE ADMINS SET EMAIL = @NewValue WHERE LOGIN = @UserLogin";
                                break;
                            case "Telefon":
                                updateQuery = "UPDATE ADMINS SET PHONE = @NewValue WHERE LOGIN = @UserLogin";
                                break;
                            case "Login":
                                updateQuery = "UPDATE ADMINS SET LOGIN = @NewValue WHERE LOGIN = @UserLogin";
                                break;
                            case "Hasło":
                                updateQuery = "UPDATE ADMINS SET PASSWORD = @NewValue WHERE LOGIN = @UserLogin";
                                break;
                        }

                        using (SqlCommand cmd = new SqlCommand(updateQuery, conn))
                        {
                            cmd.Parameters.AddWithValue("@NewValue", newValue);
                            cmd.Parameters.AddWithValue("@UserLogin", userLogin);

                            int rowsAffected = cmd.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {

                                ValidAdmin.Text = "Dane zostały zaktualizowane pomyślnie.";
                                ValidAdmin.ForeColor = Color.Green;
                            }
                            else
                            {
                                ValidAdmin.Text = "Nie znaleziono administratora o podanym loginie.";
                                ValidAdmin.ForeColor = Color.Red;

                            }
                        }
                    }
                    catch (SqlException ex)
                    {
                        ValidAdmin.Text = "Błąd podczas aktualizacji danych: " + ex.Message;
                        ValidAdmin.ForeColor = Color.Red;
                    }
                }
            }
            catch
            {
                ValidAdmin.Text = "Wartość nie może być pusta.";
               
            }
        }
    }

}
