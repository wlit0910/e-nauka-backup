using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.User
{
    public partial class Formularz_internetowy13 : System.Web.UI.Page
    {

        public class Lesson
        {
            public string LessonName { get; set; }
            public string LessonUrl { get; set; }

        }


        public class Module
        {
            public string ModuleName { get; set; }
            public List<Lesson> Lessons { get; set; }
        }


        public class Course
        {
            public string CourseName { get; set; }
            public List<Module> Modules { get; set; }
        }



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
               // lnkCourse5.Attributes.Add("href", "#");
                // załaduj dane kursu
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
                Response.Redirect("../Login.aspx");
            }

        }

        //protected void lnkCourse_Click(object sender, EventArgs e)
        //{
        //    //   LinkButton btn = (LinkButton)sender;
        //    //   int index = Convert.ToInt32(btn.CommandArgument);
        //    //  Panel pnlModules = (Panel)rptCourses.Items[index].FindControl("pnlModules");

        //    //  pnlModules.Visible = !pnlModules.Visible;
        //}

        private List<Course> GetCoursesDataFromDB()
        {
            List<Course> courses = new List<Course>();
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            // Pobieranie kursów
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string courseQuery = "SELECT KID, NAME FROM COURSE";
                using (SqlCommand courseCmd = new SqlCommand(courseQuery, conn))
                {
                    SqlDataReader courseReader = courseCmd.ExecuteReader();

                    while (courseReader.Read())
                    {
                        Course course = new Course
                        {
                            CourseName = courseReader["NAME"].ToString(),
                            Modules = new List<Module>()
                        };

                        // Pobieranie modułów dla kursu
                        using (SqlConnection connModule = new SqlConnection(connectionString))
                        {
                            connModule.Open();
                            string moduleQuery = "SELECT mID, NAME FROM MODULE WHERE KID = @CourseId";
                            using (SqlCommand moduleCmd = new SqlCommand(moduleQuery, connModule))
                            {
                                moduleCmd.Parameters.AddWithValue("@CourseId", courseReader["KID"]);
                                SqlDataReader moduleReader = moduleCmd.ExecuteReader();

                                while (moduleReader.Read())
                                {
                                    Module module = new Module
                                    {
                                        ModuleName = moduleReader["NAME"].ToString(),
                                        Lessons = new List<Lesson>()
                                    };

                                    // pobieranie lekcji dla modułu
                                    using (SqlConnection connLesson = new SqlConnection(connectionString))
                                    {
                                        connLesson.Open();
                                        string lessonQuery = "SELECT NAME, LINK FROM LESSONS WHERE mID = @ModuleId";
                                        using (SqlCommand lessonCmd = new SqlCommand(lessonQuery, connLesson))
                                        {
                                            lessonCmd.Parameters.AddWithValue("@ModuleId", moduleReader["mID"]);
                                            SqlDataReader lessonReader = lessonCmd.ExecuteReader();

                                            while (lessonReader.Read())
                                            {
                                                Lesson lesson = new Lesson
                                                {
                                                    LessonName = lessonReader["NAME"].ToString(),
                                                    LessonUrl = lessonReader["LINK"].ToString()
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