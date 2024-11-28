using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.UserENG
{
    public partial class Formularz_internetowy31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie2 = Request.Cookies["User"];
            if (cookie2 != null)
            {
            }
            else
            {
                Response.Redirect("../GuestENG/LoginENG.aspx");
            }

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT ENNAME FROM MODULE WHERE mID = 3", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Project2_module.Text = reader["ENNAME"].ToString();

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
                    SqlCommand cmd = new SqlCommand("SELECT ENNAME FROM LESSONS WHERE mID = 3", conn);
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
                Response.Write("Error: " + ex.Message);
            }
        }
        protected void Pobierz_plik1_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("../Resources/C01M03.cpp");
            string fileName = "C01M03.cpp";

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
                Response.Write("The file does not exist.");
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

                            ValidFile.Text = "File uploaded successfully!";
                            ValidFile.ForeColor = Color.Green;
                        }
                        catch (Exception ex)
                        {
                            ValidFile.Text = "Error while uploading file: " + ex.Message;
                            ValidFile.ForeColor = Color.Red;
                        }
                    }
                    else
                    {
                        ValidFile.Text = "Only files in .txt or .cpp format are allowed.";
                        ValidFile.ForeColor = Color.Red;
                    }
                }
                else
                {
                    ValidFile.Text = "Select a file to upload.";
                    ValidFile.ForeColor = Color.Red;
                }
            }
            catch (Exception ex)
            {
                ValidFile.Text = "Error: " + ex.Message;
            }
        }
    }
}