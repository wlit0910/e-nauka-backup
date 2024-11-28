using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using System.Globalization;


namespace e_nauka.AdminSec
{
    public partial class Formularz_internetowy1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Identity"];
            if (cookie != null)
            {
                User_param.Text = cookie["id"];
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }

            if (!IsPostBack)
            {
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Wykres Pending do Users
                    SqlCommand cmdPendingUsers = new SqlCommand("SELECT (SELECT COUNT(*) FROM PENDING) AS PendingCount, (SELECT COUNT(*) FROM USERS) AS UsersCount", conn);
                    SqlDataReader reader1 = cmdPendingUsers.ExecuteReader();
                    if (reader1.Read())
                    {
                        chartPendingUsers.Series["PendingToUsers"].Points.AddXY("Wnioski o rejestrację", reader1["PendingCount"]);
                        chartPendingUsers.Series["PendingToUsers"].Points.AddXY("Użytkownicy serwisu", reader1["UsersCount"]);
                        chartPendingUsers.Series["PendingToUsers"].Font = new Font("Arial", 10, FontStyle.Bold); // Ustawienie czcionki na 10 i bold

                        // Dodajemy etykiety z liczbami
                        chartPendingUsers.Series["PendingToUsers"].Label = "#VALX: #VAL";
                    }
                    reader1.Close();

                    string colorcode0 = "#fffac7b1";
                    int argb0 = Int32.Parse(colorcode0.Replace("#", ""), NumberStyles.HexNumber);

                    string registered = "#ffb1fab7";
                    int reg = Int32.Parse(registered.Replace("#", ""), NumberStyles.HexNumber);


                    foreach (Series charts in chartPendingUsers.Series)
                    {
                        foreach (DataPoint point in charts.Points)
                        {
                            switch (point.AxisLabel)
                            {
                                case "Wnioski o rejestrację":
                                    point.Color = Color.FromArgb(reg);
                                    break;
                                case "Użytkownicy serwisu":
                                    point.Color = Color.FromArgb(argb0);
                                    break;
                            }
                        }
                    }


                    // Wykres Lang Users
                    SqlCommand cmdLangUsers = new SqlCommand("SELECT COUNT(*) AS Count, LANG FROM USERS GROUP BY LANG", conn);
                    SqlDataReader reader2 = cmdLangUsers.ExecuteReader();
                    while (reader2.Read())
                    {
                        string langLabel = reader2["LANG"].ToString() == "POL" ? "Polscy użytkownicy" : "Zagraniczni użytkownicy";
                        chartLangUsers.Series["LangUsers"].Points.AddXY(langLabel, reader2["Count"]);
                    }
                    chartLangUsers.Series["LangUsers"].Label = "#VALX: #VAL"; // Dodanie liczników
                    chartLangUsers.Series["LangUsers"].Font = new Font("Arial", 10, FontStyle.Bold); 
                    reader2.Close();

                    string colorcode2 = "#ffd9dadb";
                    int argb2 = Int32.Parse(colorcode2.Replace("#", ""), NumberStyles.HexNumber);

                    string zagranica = "#ffc2c4ed";
                    int zagranica2 = Int32.Parse(zagranica.Replace("#", ""), NumberStyles.HexNumber);


                    foreach (Series charts in chartLangUsers.Series)
                    {
                        foreach (DataPoint point in charts.Points)
                        {
                            switch (point.AxisLabel)
                            {
                                case "Polscy użytkownicy":
                                    point.Color = Color.FromArgb(argb2);
                                    break;
                                case "Zagraniczni użytkownicy":
                                    point.Color = Color.FromArgb(zagranica2);
                                    break;
                            }
                        }
                    }


                    // Wykres sugestii
                    SqlCommand cmdSuggestions = new SqlCommand("SELECT COUNT(*) AS SuggestionsCount FROM CONTACT", conn);
                    int suggestionsCount = (int)cmdSuggestions.ExecuteScalar();
                    chartSuggestions.Series["Suggestions"].Points.AddXY("Przesłane sugestie", suggestionsCount);
                    chartSuggestions.Series["Suggestions"].Points.AddXY("Wdrożone sugestie", 20 - suggestionsCount); // Przykładowy inny segment
                    chartSuggestions.Series["Suggestions"].Label = "#VALX: #VAL"; // Dodanie liczników
                    chartSuggestions.Series["Suggestions"].Font = new Font("Arial", 10, FontStyle.Bold); 

                    string colorcode3 = "#ffebfab1";
                    int argb3 = Int32.Parse(colorcode3.Replace("#", ""), NumberStyles.HexNumber);

                    string suggests = "#ffff8f8f";
                    int sug = Int32.Parse(suggests.Replace("#", ""), NumberStyles.HexNumber);


                    foreach (Series charts in chartSuggestions.Series)
                    {
                        foreach (DataPoint point in charts.Points)
                        {
                            switch (point.AxisLabel)
                            {
                                case "Przesłane sugestie":
                                    point.Color = Color.FromArgb(sug);
                                    break;
                                case "Wdrożone sugestie":                                 
                                    point.Color = Color.FromArgb(argb3);
                                    break;
                            }
                        }
                    }



                    // Nowy wykres dla płci użytkowników
                    SqlCommand cmdGenderUsers = new SqlCommand("SELECT COUNT(*) AS Count, GENDER FROM USERS GROUP BY GENDER", conn);
                    SqlDataReader reader3 = cmdGenderUsers.ExecuteReader();
                    while (reader3.Read())
                    {
                        string genderLabel = (reader3["GENDER"].ToString() == "K") ? "Kobiety" : "Mężczyźni";
                        chartGenderUsers.Series["GenderUsers"].Points.AddXY(genderLabel, reader3["Count"]);

                    }
                    chartGenderUsers.Series["GenderUsers"].Label = "#VALX: #VAL"; // Dodanie liczników
                    chartGenderUsers.Series["GenderUsers"].Font = new Font("Arial", 10, FontStyle.Bold); 


                    string colorcode = "#ffb8d2e6";
                    int argb = Int32.Parse(colorcode.Replace("#", ""), NumberStyles.HexNumber);
                    string fem = "#ffe6b8d7";
                    int fem2 = Int32.Parse(fem.Replace("#", ""), NumberStyles.HexNumber);

                    foreach (Series charts in  chartGenderUsers.Series)
                    {
                        foreach (DataPoint point in charts.Points)
                        {
                            switch (point.AxisLabel)
                            {
                                case "Kobiety":point.Color = Color.FromArgb(fem2); 
                                    break;
                                case "Mężczyźni": point.Color = Color.FromArgb(argb);
                                    break;
                            }
                        }
                    }

                    reader3.Close();

                    // pobierz liczbę przerobionych lekcji dla każdego użytkownika
                    SqlCommand cmdUserProgress = new SqlCommand(@"
                SELECT U.LOGIN, COUNT(P.UID) AS CompletedLessons
                FROM USERS U
                INNER JOIN PROGRESS P ON U.ID = P.UID
                WHERE P.STATUS = 'COMPLETED'
                GROUP BY U.LOGIN
                ORDER BY CompletedLessons DESC", conn);

                    SqlDataReader reader = cmdUserProgress.ExecuteReader();
                    while (reader.Read())
                    {
                        string userLogin = reader["LOGIN"].ToString();
                        int completedLessons = Convert.ToInt32(reader["CompletedLessons"]);

                        // Dodawanie danych do wykresu
                        chartUserProgress.Series["UserProgress"].Points.AddXY(userLogin, completedLessons);
                    }

                    // Dodanie liczników do etykiet
                    chartUserProgress.Series["UserProgress"].Label = "#VALX: #VAL";
                    chartUserProgress.Series["UserProgress"].Font = new Font("Arial", 10, FontStyle.Bold);
                    chartUserProgress.ChartAreas[0].AxisX.Title = "Nazwa użytkownika";
                    chartUserProgress.ChartAreas[0].AxisY.Title = "Łączna liczba przerobionych lekcji";

                    chartUserProgress.ChartAreas[0].AxisX.TitleFont = new Font("Arial", 11, FontStyle.Bold);
                    chartUserProgress.ChartAreas[0].AxisY.TitleFont = new Font("Arial", 11, FontStyle.Bold);
                    chartUserProgress.Series[0]["PixelPointWidth"] = "15";


                    string colorcode7 = "#fffcb497";
                    int argb7 = Int32.Parse(colorcode7.Replace("#", ""), NumberStyles.HexNumber);

                    chartUserProgress.Series["UserProgress"].Color = Color.FromArgb(argb7);
                    chartUserProgress.Series["UserProgress"].BorderWidth = 2;
                    chartUserProgress.Series["UserProgress"].BorderColor = Color.Black;
                    chartUserProgress.Series["UserProgress"].BorderDashStyle = ChartDashStyle.Solid;

                    chartUserProgress.Titles.Add("Postęp użytkowników").Font = new Font("Arial", 12, FontStyle.Bold); // Chart Title
                    
                    chartUserProgress.ChartAreas[0].AxisX.TitleAlignment = StringAlignment.Center; // Chart X axis Text Alignment 
                    chartUserProgress.ChartAreas[0].AxisY.TitleAlignment = StringAlignment.Center; // Chart X axis Text Alignment 

                    chartUserProgress.ChartAreas[0].AxisX.LineDashStyle = ChartDashStyle.Solid;
                    chartUserProgress.ChartAreas[0].AxisX.LineWidth = 2;
                    chartUserProgress.ChartAreas[0].AxisY.LineDashStyle = ChartDashStyle.Solid;
                    chartUserProgress.ChartAreas[0].AxisY.LineWidth = 2;    


                    reader.Close();


// --------------------------------


                    //  pobierz nazwę kursu oraz liczbę lekcji
                    SqlCommand cmdCourseLessons = new SqlCommand(@"
                SELECT NAME, LESSONS
                FROM COURSE
                ORDER BY LESSONS DESC", conn);

                    SqlDataReader reader0 = cmdCourseLessons.ExecuteReader();
                    while (reader0.Read())
                    {
                        string courseName = reader0["NAME"].ToString();
                        int lessonCount = Convert.ToInt32(reader0["LESSONS"]);

                        // Dodawanie danych do wykresu
                        chartCourseLessons.Series["CourseLessons"].Points.AddXY(courseName, lessonCount);
                    }

                    // Dodanie liczników do etykiet
                    chartCourseLessons.Series["CourseLessons"].Label = "#VAL lekcji";
                    chartCourseLessons.Series["CourseLessons"].Font = new Font("Arial", 10, FontStyle.Bold); // Ustawienie czcionki
                    chartCourseLessons.Series[0]["PixelPointWidth"] = "15";
                    chartCourseLessons.ChartAreas[0].AxisX.Title = "Nazwa kursu";
                    chartCourseLessons.ChartAreas[0].AxisY.Title = "Liczba lekcji w kursie";
                    chartCourseLessons.ChartAreas[0].AxisX.TitleFont = new Font("Arial", 11, FontStyle.Bold);
                    chartCourseLessons.ChartAreas[0].AxisY.TitleFont = new Font("Arial", 11, FontStyle.Bold);
                    chartCourseLessons.Series["CourseLessons"].BorderWidth = 2;
                    chartCourseLessons.Series["CourseLessons"].BorderColor = Color.Black;
                    chartCourseLessons.Series["CourseLessons"].BorderDashStyle = ChartDashStyle.Solid;

                    chartCourseLessons.Titles.Add("Liczba lekcji w kursach").Font = new Font("Arial", 12, FontStyle.Bold); // Chart Title

                    chartCourseLessons.ChartAreas[0].AxisX.TitleAlignment = StringAlignment.Center; // Chart X axis Text Alignment 
                    chartCourseLessons.ChartAreas[0].AxisY.TitleAlignment = StringAlignment.Center; // Chart X axis Text Alignment 

                    chartCourseLessons.ChartAreas[0].AxisX.LineDashStyle = ChartDashStyle.Solid;
                    chartCourseLessons.ChartAreas[0].AxisX.LineWidth = 2;
                    chartCourseLessons.ChartAreas[0].AxisY.LineDashStyle = ChartDashStyle.Solid;
                    chartCourseLessons.ChartAreas[0].AxisY.LineWidth = 2;

                    chartCourseLessons.Series["CourseLessons"].Color = Color.LightBlue;


                    reader.Close();
                }

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    //pobierz liczbe kursów
                    SqlCommand cmdCourses = new SqlCommand("SELECT COUNT(*) AS CourseCount FROM COURSE", conn);
                    int totalCourses = (int)cmdCourses.ExecuteScalar();

                    // pobierz liczbe lekcji
                    SqlCommand cmdLessons = new SqlCommand("SELECT COUNT(*) AS LessonCount FROM LESSONS", conn);
                    int totalLessons = (int)cmdLessons.ExecuteScalar();

                    // Wykres kursów do lekcji
                    chartCoursesLessons.Series["CoursesToLessons"].Points.AddXY("Kursy", totalCourses);
                    chartCoursesLessons.Series["CoursesToLessons"].Points.AddXY("Lekcje", totalLessons);

                    // Dodanie liczników
                    chartCoursesLessons.Series["CoursesToLessons"].Label = "#VALX: #VAL";

                    string colorcode3 = "#ffa5fc97";
                    int argb3 = Int32.Parse(colorcode3.Replace("#", ""), NumberStyles.HexNumber);

                    string suggests = "#ff979bfc";
                    int sug = Int32.Parse(suggests.Replace("#", ""), NumberStyles.HexNumber);


                    // Opcjonalnie ustawienie kolorów 
                    chartCoursesLessons.Series["CoursesToLessons"].Points[0].Color = System.Drawing.Color.FromArgb(argb3);
                    chartCoursesLessons.Series["CoursesToLessons"].Points[1].Color = System.Drawing.Color.FromArgb(sug);
                    chartCoursesLessons.Series["CoursesToLessons"].Font = new Font("Arial", 10, FontStyle.Bold);
                }

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // pobierz liczby użytkowników w grupach wiekowych
                    SqlCommand cmdAgeGroups = new SqlCommand(@"
                SELECT 
                    SUM(CASE WHEN AGE BETWEEN 1 AND 20 THEN 1 ELSE 0 END) AS AgeGroup1,
                    SUM(CASE WHEN AGE BETWEEN 21 AND 40 THEN 1 ELSE 0 END) AS AgeGroup2,
                    SUM(CASE WHEN AGE BETWEEN 41 AND 100 THEN 1 ELSE 0 END) AS AgeGroup3
                FROM USERS", conn);

                    SqlDataReader reader = cmdAgeGroups.ExecuteReader();
                    if (reader.Read())
                    {
                        int ageGroup1 = (int)reader["AgeGroup1"];
                        int ageGroup2 = (int)reader["AgeGroup2"];
                        int ageGroup3 = (int)reader["AgeGroup3"];

                        // Dodaj dane do wykresu kołowego
                        chartAgeGroups.Series["AgeGroups"].Points.AddXY("1-20 lat", ageGroup1);
                        chartAgeGroups.Series["AgeGroups"].Points.AddXY("21-40 lat", ageGroup2);
                        chartAgeGroups.Series["AgeGroups"].Points.AddXY("41-100 lat", ageGroup3);

                        // Dodaj etykiety z liczbami
                        chartAgeGroups.Series["AgeGroups"].Label = "#VALX: #VAL";

                        string color1 = "#fffcfc97";
                        int argb1 = Int32.Parse(color1.Replace("#", ""), NumberStyles.HexNumber);

                        string color2 = "#ffff9e6e";
                        int argb2 = Int32.Parse(color2.Replace("#", ""), NumberStyles.HexNumber);

                        string color3 = "#ff6eb4ff";
                        int argb3 = Int32.Parse(color3.Replace("#", ""), NumberStyles.HexNumber);


                        // Opcjonalnie ustawienie kolorów 
                        chartAgeGroups.Series["AgeGroups"].Points[0].Color = System.Drawing.Color.FromArgb(argb1);
                        chartAgeGroups.Series["AgeGroups"].Points[1].Color = System.Drawing.Color.FromArgb(argb2);
                        chartAgeGroups.Series["AgeGroups"].Points[2].Color = System.Drawing.Color.FromArgb(argb3);
                        chartAgeGroups.Series["AgeGroups"].Font = new Font("Arial", 10, FontStyle.Bold);
                    }
                    reader.Close();
                }
            }
        }
    }
}
