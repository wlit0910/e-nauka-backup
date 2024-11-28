using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace e_nauka.User
{
    public partial class Formularz_internetowy19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie2 = Request.Cookies["User"];
            if (cookie2 != null)
            {
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT NAME FROM MODULE WHERE mID = 1", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Project_module.Text = reader["NAME"].ToString();

                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Błąd: " + ex.Message);
            }

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT NAME FROM LESSONS WHERE mID = 1", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    // Zmienna do śledzenia numeru lekcji
                    int lessonCounter = 1;

                    while (reader.Read())
                    {
                        string lessonName = reader[0].ToString();

                        if (lessonCounter == 1)
                            Lesson_1.Text = lessonName;
                        else if (lessonCounter == 2)
                            Lesson_2.Text = lessonName;
                        else if (lessonCounter == 3)
                            Lesson_3.Text = lessonName;

                        lessonCounter++;
                    }

                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Błąd: " + ex.Message);
            }
        }

        protected void Pobierz_plik1_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("../Resources/C01M01.cpp");
            string fileName = "C01M01.cpp";

            if (System.IO.File.Exists(filePath))
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";  // Typ MIME dla plików binarnych
                Response.AddHeader("Content-Disposition", "attachment; filename=" + fileName);
                Response.WriteFile(filePath);
                Response.End();
            }
            else
            {
                Response.Write("Plik nie istnieje.");
            }
        }

        protected void Przeslij_projekt_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();

                    if (fileExtension == ".txt" || fileExtension == ".cpp")
                    {
                        try
                        {
                            string filePath = Server.MapPath("../Received/") + FileUpload1.FileName;
                            FileUpload1.SaveAs(filePath);

                            ValidFile.Text = "Plik został przesłany pomyślnie!";
                            ValidFile.ForeColor = Color.Green;
                        }
                        catch (Exception ex)
                        {
                            ValidFile.Text = "Błąd podczas przesyłania pliku: " + ex.Message;
                            ValidFile.ForeColor = Color.Red;
                        }
                    }
                    else
                    {
                        ValidFile.Text = "Dozwolone są tylko pliki w formacie .txt lub .cpp.";
                        ValidFile.ForeColor = Color.Red;
                    }
                }
                else
                {
                    ValidFile.Text = "Wybierz plik do przesłania.";
                    ValidFile.ForeColor = Color.Red;
                }
            }
            catch (Exception ex)
            {
                ValidFile.Text = "Błąd: " + ex.Message;
            }
        }          
    }
}