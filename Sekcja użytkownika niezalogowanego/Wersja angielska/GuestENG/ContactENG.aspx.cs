using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.GuestENG
{
    public partial class Formularz_internetowy13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Wyslij_Kontakt_Click(object sender, EventArgs e)
        {
            try
            {
                string imie = Imie_Kontakt.Text.Trim();
                string email = Email_Kontakt.Text.Trim();
                string message = Request.Form["Text_Kontakt"];

                // Sprawdzenie, czy pole tekstowe nie jest puste
                if (string.IsNullOrEmpty(imie) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(message))
                {
                    Response.Redirect(Request.Url.ToString());
                    return;
                }

                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

                try
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        string insertQuery = "INSERT INTO CONTACT VALUES(@Imie,@Email,@Message)";
                        using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                        {
                            cmd.Parameters.AddWithValue("@Imie", imie);
                            cmd.Parameters.AddWithValue("@Email", email);
                            cmd.Parameters.AddWithValue("@Message", message);

                            int rowsAffected = cmd.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                ValidMessage.Text = "Your message was sent successfully.";
                                ValidMessage.ForeColor = Color.Green;

                                Imie_Kontakt.Text = "";
                                Email_Kontakt.Text = "";
                                Request.Form["Text_Kontakt"] = string.Empty;

                                //     conn.Close();
                            }
                            else
                            {
                                ValidMessage.Text = "Invalid data. Please try again.";

                                Imie_Kontakt.Text = "";
                                Email_Kontakt.Text = "";
                                Request.Form["Text_Kontakt"] = string.Empty;
                            }
                        }
                    }
                }
                catch (SqlException ex)
                {
                    ValidMessage.Text = "Error while updating data: " + ex.Message;

                    Imie_Kontakt.Text = "";
                    Email_Kontakt.Text = "";
                    Request.Form["Text_Kontakt"] = string.Empty;
                }
            }
            catch
            {
                //Response.Write("Coś nie tak");
                //Valid1.Text = "Pola nie mogą być puste.";
            }
        }
    }
}