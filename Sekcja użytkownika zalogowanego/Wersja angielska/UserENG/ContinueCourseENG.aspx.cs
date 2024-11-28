using e_nauka.User;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.UserENG
{
    public partial class Formularz_internetowy12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Załaduj dane kursu
                List<CourseExt> courses = GetCoursesDataFromDB();
                rptCourses.DataSource = courses;
                rptCourses.DataBind();
            }
            HttpCookie cookie2 = Request.Cookies["User"];
            if (cookie2 != null)
            {
                //userLogin = cookie2["id"];
            }
            else
            {
                Response.Redirect("../GuestENG/LoginENG.aspx");
            }


        }

        protected void lnkCourse_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            int index = Convert.ToInt32(btn.CommandArgument);
            Panel pnlModules = (Panel)rptCourses.Items[index].FindControl("pnlModules");

            pnlModules.Visible = !pnlModules.Visible;
        }

        private List<CourseExt> GetCoursesDataFromDB()
        {
            string pol = "";
            List<CourseExt> courses = new List<CourseExt>();
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            HttpCookie cookie2 = Request.Cookies["User"];
            string userLogin = "";
            // Sprawdzamy, czy ciasteczko istnieje
            if (cookie2 != null)
            {
                // Sprawdzamy, czy ciasteczko zawiera wartość o nazwie "id"
                if (cookie2["email"] != null)
                {
                    // Odczytanie loginu użytkownika z ciasteczka
                    userLogin = cookie2["email"];
                }
                else
                {
                    Response.Redirect("../GuestENG/LoginENG.aspx");
                }
            }
            else
            {
                Response.Redirect("../GuestENG/LoginENG.aspx");
            }



            // Pobieranie kursów
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string courseQuery = "SELECT KID, ENNAME FROM COURSE";
                using (SqlCommand courseCmd = new SqlCommand(courseQuery, conn))
                {
                    SqlDataReader courseReader = courseCmd.ExecuteReader();

                    while (courseReader.Read())
                    {
                        CourseExt course = new CourseExt
                        {
                            CourseName = courseReader["ENNAME"].ToString(),
                            ModulesExt = new List<ModuleExt>()
                        };

                        Last_course.Text = courseReader["ENNAME"].ToString();
                        // Pobieranie modułów dla kursu
                        using (SqlConnection connModule = new SqlConnection(connectionString))
                        {
                            connModule.Open();
                            string moduleQuery = "SELECT mID, ENNAME FROM MODULE WHERE KID = @CourseId";
                            using (SqlCommand moduleCmd = new SqlCommand(moduleQuery, connModule))
                            {
                                moduleCmd.Parameters.AddWithValue("@CourseId", courseReader["KID"]);
                                SqlDataReader moduleReader = moduleCmd.ExecuteReader();

                                while (moduleReader.Read())
                                {
                                    ModuleExt module = new ModuleExt
                                    {
                                        ModuleName = moduleReader["ENNAME"].ToString(),
                                        LessonsExt = new List<LessonExt>()
                                    };

                                    // Pobieranie lekcji dla modułu
                                    using (SqlConnection connLesson = new SqlConnection(connectionString))
                                    {
                                        connLesson.Open();


                                        string lessonQuery = @"
                                SELECT l.ENNAME, l.ENLINK, 
                                       COALESCE(p.STATUS, 'NOT COMPLETED') AS Status
                                FROM LESSONS l
                                LEFT JOIN PROGRESS p ON l.LID = p.LID 
                                                     AND p.UID = (SELECT u.ID FROM USERS u WHERE u.LOGIN = @UserLogin)
                                WHERE l.mID = @ModuleId";




                                        using (SqlCommand lessonCmd = new SqlCommand(lessonQuery, connLesson))
                                        {
                                            lessonCmd.Parameters.AddWithValue("@ModuleId", moduleReader["mID"]);
                                            lessonCmd.Parameters.AddWithValue("@UserLogin", userLogin);  // dodanie loginu użytkownika do zapytania
                                            SqlDataReader lessonReader = lessonCmd.ExecuteReader();

                                            while (lessonReader.Read())
                                            {
                                                if (lessonReader["STATUS"].ToString() == "COMPLETED")
                                                {
                                                    pol = "COMPLETED";
                                                }
                                                else
                                                {
                                                    pol = "NOT COMPLETED";
                                                }

                                                LessonExt lesson = new LessonExt
                                                {
                                                    LessonName = lessonReader["ENNAME"].ToString(),
                                                    LessonUrl = lessonReader["ENLINK"].ToString(),
                                                    LessonStatus = pol
                                                };

                                                module.LessonsExt.Add(lesson);
                                            }
                                            lessonReader.Close();
                                        }
                                    }

                                    course.ModulesExt.Add(module);
                                }
                                moduleReader.Close();
                            }
                        }

                        courses.Add(course);
                    }
                    courseReader.Close();
                }
            }

            return courses;
        }
    }
}