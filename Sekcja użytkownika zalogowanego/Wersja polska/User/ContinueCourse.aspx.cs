using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.User
{
    public partial class Formularz_internetowy12 : System.Web.UI.Page
    {
        public int test = 0;
        //public string userLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // załaduj dane kursu
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
                Response.Redirect("../Login.aspx");
            }
        }

        // na sztywno
        //protected void lnkCourse2_Click(object sender, EventArgs e)
        //{

        //    Panel pnlModules = (Panel)this.Master.FindControl("MainContent").FindControl("pnlModules5");

        //    pnlModules.Visible = !pnlModules.Visible;
        //}

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

            if (cookie2 != null)
            {
                if (cookie2["email"] != null)
                {
                    userLogin = cookie2["email"];
                }
                else
                {
                    Response.Redirect("../Login.aspx");
                }
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }



            // pobieranie danych o kursach z bd
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string courseQuery = "SELECT KID, NAME FROM COURSE";
                using (SqlCommand courseCmd = new SqlCommand(courseQuery, conn))
                {
                    SqlDataReader courseReader = courseCmd.ExecuteReader();

                    while (courseReader.Read())
                    {
                        CourseExt course = new CourseExt
                        {
                            CourseName = courseReader["NAME"].ToString(),
                            ModulesExt = new List<ModuleExt>()
                        };

                        Last_course.Text = courseReader["NAME"].ToString();
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
                                    ModuleExt module = new ModuleExt
                                    {
                                        ModuleName = moduleReader["NAME"].ToString(),
                                        LessonsExt = new List<LessonExt>()
                                    };

                                    // pobieranie lekcji dla modułu
                                    using (SqlConnection connLesson = new SqlConnection(connectionString))
                                    {
                                        connLesson.Open();


                                        string lessonQuery = @"
                                SELECT l.NAME, l.LINK, 
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
                                                if (lessonReader["STATUS"].ToString() == "NOT COMPLETED") 
                                                {
                                                    pol = "NIE UKOŃCZONO";
                                                }
                                                else if (lessonReader["STATUS"].ToString() == "COMPLETED")
                                                {
                                                    pol = "UKOŃCZONO";
                                                }
                                                else
                                                {
                                                    pol = "NIE UKOŃCZONO";
                                                }

                                                LessonExt lesson = new LessonExt
                                                {
                                                    LessonName = lessonReader["NAME"].ToString(),
                                                    LessonUrl = lessonReader["LINK"].ToString(),
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