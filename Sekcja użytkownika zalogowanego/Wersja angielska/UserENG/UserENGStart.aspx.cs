using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace e_nauka.UserENG
{
    public partial class Formularz_internetowy1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["User"];
            if (cookie == null)
            {
                Response.Redirect("../GuestENG/LoginENG.aspx");
            }
            else
            {
                User_param.Text = cookie["email"];
            }
            if (!IsPostBack)

            {

                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Zapytanie SQL pobierające liczbę przerobionych lekcji dla każdego użytkownika
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
                    chartUserProgress.Series["UserProgress"].Font = new Font("Arial", 10, FontStyle.Bold); // Opcjonalnie ustawienie czcionki
                    chartUserProgress.ChartAreas[0].AxisX.Title = "User ID";
                    chartUserProgress.ChartAreas[0].AxisY.Title = "Total number of completed lessons";

                    chartUserProgress.ChartAreas[0].AxisX.TitleFont = new Font("Arial", 11, FontStyle.Bold);
                    chartUserProgress.ChartAreas[0].AxisY.TitleFont = new Font("Arial", 11, FontStyle.Bold);
                    chartUserProgress.Series[0]["PixelPointWidth"] = "15";



                    string colorcode7 = "#fffcb497";
                    int argb7 = Int32.Parse(colorcode7.Replace("#", ""), NumberStyles.HexNumber);



                    chartUserProgress.Series["UserProgress"].Color = Color.FromArgb(argb7);
                    chartUserProgress.Series["UserProgress"].BorderWidth = 2;
                    chartUserProgress.Series["UserProgress"].BorderColor = Color.Black;
                    chartUserProgress.Series["UserProgress"].BorderDashStyle = ChartDashStyle.Solid;

                    chartUserProgress.Titles.Add("User progress").Font = new Font("Arial", 12, FontStyle.Bold); // Chart Title

                    chartUserProgress.ChartAreas[0].AxisX.TitleAlignment = StringAlignment.Center; // Chart X axis Text Alignment 
                    chartUserProgress.ChartAreas[0].AxisY.TitleAlignment = StringAlignment.Center; // Chart X axis Text Alignment 

                    chartUserProgress.ChartAreas[0].AxisX.LineDashStyle = ChartDashStyle.Solid;
                    chartUserProgress.ChartAreas[0].AxisX.LineWidth = 2;
                    chartUserProgress.ChartAreas[0].AxisY.LineDashStyle = ChartDashStyle.Solid;
                    chartUserProgress.ChartAreas[0].AxisY.LineWidth = 2;


                    reader.Close();


                }
            }
        }
    }
}