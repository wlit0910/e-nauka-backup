using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_nauka.User;

namespace e_nauka.UserENG
{
    public partial class Formularz_internetowy13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // lnkCourse5.Attributes.Add("href", "#");
                // Załaduj dane kursu
                List<Course> courses = GetCoursesDataFromDB();
                rptCourses.DataSource = courses;
                rptCourses.DataBind();
            }
            HttpCookie cookie2 = Request.Cookies["User"];
            if (cookie2 != null)
            {
                User_param.Text = cookie2["email"];
            }
            else
            {
                Response.Redirect("../GuestENG/LoginENG.aspx");
            }
        }
        private List<Course> GetCoursesDataFromDB()
        {
            List<Course> courses = new List<Course>();
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

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
                        Course course = new Course
                        {
                            CourseName = courseReader["ENNAME"].ToString(),
                            Modules = new List<Module>()
                        };

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
                                    Module module = new Module
                                    {
                                        ModuleName = moduleReader["ENNAME"].ToString(),
                                        Lessons = new List<Lesson>()
                                    };

                                    // Pobieranie lekcji dla modułu
                                    using (SqlConnection connLesson = new SqlConnection(connectionString))
                                    {
                                        connLesson.Open();
                                        string lessonQuery = "SELECT ENNAME, ENLINK FROM LESSONS WHERE mID = @ModuleId";
                                        using (SqlCommand lessonCmd = new SqlCommand(lessonQuery, connLesson))
                                        {
                                            lessonCmd.Parameters.AddWithValue("@ModuleId", moduleReader["mID"]);
                                            SqlDataReader lessonReader = lessonCmd.ExecuteReader();

                                            while (lessonReader.Read())
                                            {
                                                Lesson lesson = new Lesson
                                                {
                                                    LessonName = lessonReader["ENNAME"].ToString(),
                                                    LessonUrl = lessonReader["ENLINK"].ToString()
                                                };

                                                module.Lessons.Add(lesson);
                                            }
                                            lessonReader.Close();
                                        }
                                    }

                                    course.Modules.Add(module);
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