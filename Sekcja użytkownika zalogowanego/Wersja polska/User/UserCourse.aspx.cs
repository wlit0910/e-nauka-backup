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
    
    public class Lesson
    {
        public string LessonName { get; set; }
        public string LessonUrl { get; set; }

    }

    public class LessonExt
    {
        public string LessonName { get; set; }
        public string LessonUrl { get; set; }
        public string LessonStatus { get; set; }

    }

    public class Module
    {
        public string ModuleName { get; set; }
        public List<Lesson> Lessons { get; set; }
    }

    public class ModuleExt
    {
        public string ModuleName { get; set; }
        public List<LessonExt> LessonsExt { get; set; }
    }

    public class Course
    {
        public string CourseName { get; set; }
        public List<Module> Modules { get; set; }
    }

    public class CourseExt
    {
        public string CourseName { get; set; }
        public List<ModuleExt> ModulesExt { get; set; }
    }

    public partial class Formularz_internetowy11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
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

        protected void lnkCourse_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            int index = Convert.ToInt32(btn.CommandArgument);
            Panel pnlModules = (Panel)rptCourses.Items[index].FindControl("pnlModules");

            pnlModules.Visible = !pnlModules.Visible;
        }
        // na sztywno
        protected void lnkCourse2_Click(object sender, EventArgs e)
        {
            
            Panel pnlModules = (Panel)this.Master.FindControl("MainContent").FindControl("pnlModules5");

             pnlModules.Visible = !pnlModules.Visible;
        }

        protected void lnkModule_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login.aspx");
        }

        private List<Course> GetCoursesDataFromDB()
        {
            List<Course> courses = new List<Course>();
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            // pobieranie kursów
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

                        // pobieranie modułów dla kursu
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


        // stara metoda statyczna
        private List<Course> GetCoursesData()
        {
            Course course = new Course
            {
                CourseName = "Kurs C++ - początkujący",
                Modules = new List<Module>

            {
            new Module
            {
                ModuleName = "Wprowadzenie do C++",
                Lessons = new List<Lesson>
                {
                    new Lesson { LessonName = "Lekcja 1: Podstawy C++",LessonUrl="../C01/L01.aspx" },
                    new Lesson { LessonName = "Lekcja 2: Zmienne, stałe. Typy danych",LessonUrl="www.facebook.com" },
                    new Lesson { LessonName = "Lekcja 3: Operatory. Instrukcje warunkowe",LessonUrl="www.youtube.com" },
                    new Lesson { LessonName = "Projekt końcowy nr 1",LessonUrl="www.youtube.com" }
                }
            }
            ,
            new Module
            {
                ModuleName = "Kontynuacja kursu C++",
                Lessons = new List<Lesson>
                {
                    new Lesson { LessonName = "Lekcja 1: Pętle. Tablice",LessonUrl="www.youtube.com" },
                    new Lesson { LessonName = "Lekcja 2: Funkcje",LessonUrl="www.youtube.com" },
                    new Lesson { LessonName = "Lekcja 3: Wskaźniki",LessonUrl="www.youtube.com" },
                    new Lesson { LessonName = "Projekt końcowy nr 2",LessonUrl="www.youtube.com" }
                }
            },
            new Module
            {
                ModuleName = "Zaawansowane tematy C++",
                    Lessons = new List<Lesson>
                    {
                    new Lesson { LessonName = "Lekcja 1: Struktury",LessonUrl="www.youtube.com" },
                    new Lesson { LessonName = "Lekcja 2: Klasy. Obiekty",LessonUrl="www.youtube.com" },
                    new Lesson { LessonName = "Lekcja 3: Polimorfizm. Dziedziczenie",LessonUrl="www.youtube.com" },
                    new Lesson { LessonName = "Projekt końcowy nr 3",LessonUrl="www.youtube.com" }
                    }
             }
                }
            };
            //,
            //   course1 = new Course
            //{
            //    CourseName = "Python - początkujacy",
            //    Modules = new List<Module>

            //{
            //new Module
            //{
            //    ModuleName = "Wprowadzenie do Python 3.2",
            //    Lessons = new List<Lesson>
            //    {
            //        new Lesson { LessonName = "Lekcja 1: Podstawy",LessonUrl="../Demo.aspx" },
            //        new Lesson { LessonName = "Lekcja 2: Zmienne",LessonUrl="www.facebook.com" },
            //        new Lesson { LessonName = "Lekcja 3: Instrukcje warunkowe",LessonUrl="www.youtube.com" },
            //        new Lesson { LessonName = "Lekcja 4: Pętle",LessonUrl="www.youtube.com" }
            //    }
            //},
            //new Module
            //{
            //    ModuleName = "Zaawansowane tematy C#",
            //    Lessons = new List<Lesson>
            //    {
            //        new Lesson { LessonName = "Lekcja 1: Klasy i obiekty",LessonUrl="www.youtube.com" },
            //        new Lesson { LessonName = "Lekcja 2: Dziedziczenie",LessonUrl="www.youtube.com" },
            //        new Lesson { LessonName = "Lekcja 3: Polimorfizm",LessonUrl="www.youtube.com" },
            //        new Lesson { LessonName = "Lekcja 4: Interfejsy",LessonUrl="www.youtube.com" }
            //    }
            //},
            //new Module
            //{
            //    ModuleName = "Biblioteka .NET",
            //        Lessons = new List<Lesson>
            //        {
            //        new Lesson { LessonName = "Lekcja 1: LINQ",LessonUrl="www.youtube.com" },
            //        new Lesson { LessonName = "Lekcja 2: Kolekcje",LessonUrl="www.youtube.com" },
            //        new Lesson { LessonName = "Lekcja 3: Wyjątki",LessonUrl="www.youtube.com" },
            //        new Lesson { LessonName = "Lekcja 4: Obsługa plików",LessonUrl="www.youtube.com" }
            //         }
            // }
            //    }



            //          };

            return new List<Course> { course };
        }
    }
}