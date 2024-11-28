﻿using System;
using System.Collections;
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
    public partial class Formularz_internetowy1 : System.Web.UI.Page
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
                        //Haslo_User.Text = cookie["pass"].ToString();
                        //Remember.Checked = true;

                        HttpCookie cookie2 = Request.Cookies["Identity"];
                        //cookie2["id"] = "id";
                    }

                    if (Request.QueryString["CheckCookie"] == null)
                    {
                        HttpCookie cookie = new HttpCookie("TestCookie", "1");
                        Response.Cookies.Add(cookie);
                        Response.Redirect("Login.aspx?CheckCookie=1");
                    }
                    else
                    {
                        HttpCookie cookie = Request.Cookies["TestCookie"];
                        if (cookie == null)
                        {
                            ValidUser.Text = "Wykryto, że masz wyłączone ciasteczka!";
                        }
                    }
                }
                else
                {
                    ValidUser.Text = "Twoja przeglądarka nie obsługuje ciasteczek!";
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

                if (string.IsNullOrEmpty(login) || string.IsNullOrEmpty(haslo))
                {
                    ValidUser.ForeColor = Color.Red;
                    ValidUser.Text = "Wszystkie pola muszą być wypełnione.";
                    Login_User.Text = null;
                    Haslo_User.Text = null;
                    Remember.Checked = false;
                    return;
                }

                // parametry - zabezpieczenie zapytania do bd
                string query = "SELECT * FROM USERS WHERE LOGIN = @login AND PASSWORD = @haslo;";
                SqlCommand cmd = new SqlCommand(query, conn1);

                cmd.Parameters.AddWithValue("@login", login);
                cmd.Parameters.AddWithValue("@haslo", haslo);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())              // if reader["LANG"] == "ENG" --> redirect to User-ENG/UserStart.aspx?Parameter
                {
                    if ((string)reader["LANG"] == "ENG")
                    {
                        if (Remember.Checked == true)
                        {
                            HttpCookie cookie = new HttpCookie("User");
                            cookie["email"] = Login_User.Text;
                            //cookie["pass"] = Haslo_User.Text;
                            cookie.Expires = DateTime.Now.AddHours(2);
                            Response.Cookies.Add(cookie);
                            Response.Redirect("UserENG/UserENGStart.aspx?Parameter=" + Login_User.Text); 
                        }
                        else
                        {
                            HttpCookie cookie = new HttpCookie("User");
                            cookie["email"] = Login_User.Text;
                            cookie.Expires = DateTime.Now.AddMinutes(30);
                            Response.Cookies.Add(cookie);
                            Response.Redirect("UserENG/UserENGStart.aspx?Parameter=" + Login_User.Text);
                        }

                        // Jeśli użytkownik został znaleziony
                        ValidUser.Visible = false;
                        Response.Redirect("UserENG/UserENGStart.aspx");                       
                    }
                    else
                    {

                        if (Remember.Checked == true)
                        {
                            HttpCookie cookie = new HttpCookie("User");
                            cookie["email"] = Login_User.Text;
                            //cookie["pass"] = Haslo_User.Text;
                            cookie.Expires = DateTime.Now.AddHours(2);
                            Response.Cookies.Add(cookie);
                            Response.Redirect("User/UserStart.aspx?Parameter=" + Login_User.Text); // mod Section-User
                        }
                        else
                        {
                            HttpCookie cookie = new HttpCookie("User");
                            cookie["email"] = Login_User.Text;
                            cookie.Expires = DateTime.Now.AddMinutes(30);
                            Response.Cookies.Add(cookie);
                            Response.Redirect("User/UserStart.aspx?Parameter=" + Login_User.Text);
                        }

                        // jeśli użytkownik został znaleziony
                        ValidUser.Visible = false;
                        Response.Redirect("User/UserStart.aspx");
                    }
                }
                else
                {
                    ValidUser.ForeColor = Color.Red;
                    ValidUser.Text = "Nieprawidłowe dane logowania.";
                    Login_User.Text = null;
                    Haslo_User.Text = null;
                    Remember.Checked = false;
                }

                conn1.Close();
            }
            catch (Exception ex)
            {
                ValidUser.ForeColor = Color.Red;
                ValidUser.Text = "Błąd: " + ex.Message;
            }
        }
    }
}