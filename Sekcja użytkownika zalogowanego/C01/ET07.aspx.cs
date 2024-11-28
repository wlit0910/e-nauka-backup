﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class Formularz_internetowy7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Output.Visible = false;
        }

        protected void Sprawdz_kod_Click(object sender, EventArgs e)
        {
            string zadanie1 = Task1.Text;
            string zadanie2 = Task2.Text;
            string zadanie3 = Task3.Text;
            string zadanie4 = Task4.Text;
            string zadanie5 = Task5.Text;
            string zadanie6 = Task6.Text;

            if (zadanie1 == "struct" && zadanie2 == "Samochod" && zadanie3 == "s1.marka"
                    && zadanie4 == "s2.model" && zadanie5 == "s3.marka" && zadanie6 == "s3.cena")
            {
                Output.Visible = true;
                Output.Text = "Samochod 1: Mitsubishi";
                Output2.Visible = true;
                Output2.Text = "Samochod 2: Clio";
                Output3.Visible = true;
                Output3.Text = "Samochod 3: Audi 85000 zl";

                Label_Result.Visible = true;
                Label_Result.Text = "Great! You've solved the task. You can move on.";
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
                Label_Result.Text = "Something is wrong. Try solving the task again.";
                Label_Result.ForeColor = Color.Red;
                //czyDobrze = 0;

                Task1.Text = "";
                Task2.Text = "";
                Task3.Text = "";
                Task4.Text = "";
                Task5.Text = "";
                Task6.Text = "";
            }
        }

        protected void Wroc_teoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("EL07.aspx");
        }


        protected void Next_Click(object sender, EventArgs e)
        {
            if (Output.Text == "Samochod 1: Mitsubishi") // potem sprawdz z BD status zadania
            {
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                int lessonId = 7;                                // ------------------------------------------------------------- zmienić 

                HttpCookie cookie2 = Request.Cookies["User"];
                string userLogin = "";
                int userID = 0;

                if (cookie2 != null && cookie2["email"] != null)
                {
                    userLogin = cookie2["email"];
                }
                else
                {
                    Response.Redirect("../GuestENG/LoginENG.aspx");
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
                            Response.Redirect("EL08.aspx");  // ------------------------------------------------------------- zmienić 
                        }
                        else
                        {
                            Label_Result.Text = "No lesson with the specified ID was found.";
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