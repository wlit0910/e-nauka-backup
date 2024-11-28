using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.AdminSec
{
    public partial class Formularz_internetowy16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Browser.Cookies)
                {
                    if (Request.Cookies["User"] != null)
                    {
                        HttpCookie cookie = Request.Cookies["User"];
                        Login_User.Text = cookie["email"].ToString();

                        HttpCookie cookie2 = Request.Cookies["Identity"];
                        //cookie2["id"] = "id";
                    }

                    if (Request.QueryString["CheckCookie"] == null)
                    {
                        HttpCookie cookie = new HttpCookie("TestCookie", "1");
                        Response.Cookies.Add(cookie);
                        Response.Redirect( "AdminLogin.aspx?CheckCookie=1");
                    }
                    else
                    {
                        HttpCookie cookie = Request.Cookies["TestCookie"];
                        if (cookie == null)
                        {
                            ValidAdmin.Text = "Wykryto, że masz wyłączone ciasteczka!";
                        }
                    }
                }
                else
                {
                    ValidAdmin.Text = "Twoja przeglądarka nie obsługuje ciasteczek!";
                }
            }
        }

        protected void Loguj_User_Click(object sender, EventArgs e)
        {
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString());
            try
            {
                conn1.Open();
                string login = Login_User.Text.ToString().Trim();
                string haslo = Haslo_User.Text.ToString().Trim();
                string id = ID_Admin.Text.ToString().Trim();

                if (string.IsNullOrEmpty(login) || string.IsNullOrEmpty(haslo) || string.IsNullOrEmpty(id))
                {
                    ValidAdmin.ForeColor = Color.Red;
                    ValidAdmin.Text = "Wszystkie pola muszą być wypełnione.";
                    Login_User.Text = null;
                    Haslo_User.Text = null;
                    return;
                }

                string query = "SELECT * FROM ADMINS WHERE LOGIN = @login AND PASSWORD = @haslo;";
                SqlCommand cmd = new SqlCommand(query, conn1);

                cmd.Parameters.AddWithValue("@login", login);
                cmd.Parameters.AddWithValue("@haslo", haslo);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {                 
                        HttpCookie cookie2 = new HttpCookie("Identity");
                        cookie2["id"] = Login_User.Text;
                        cookie2.Expires = DateTime.Now.AddMinutes(2);
                        Response.Cookies.Add(cookie2);
                        Response.Redirect("Verification.aspx?Parameter=" + Login_User.Text); 
                }
                else
                {
                    ValidAdmin.ForeColor = Color.Red;
                    ValidAdmin.Text = "Nieprawidłowe dane logowania.";
                    Login_User.Text = null;
                    Haslo_User.Text = null;
                }

                conn1.Close();
            }
            catch (Exception ex)
            {
                ValidAdmin.ForeColor = Color.Red;
                ValidAdmin.Text = "Błąd: " + ex.Message;
            }         
        }
    }
}