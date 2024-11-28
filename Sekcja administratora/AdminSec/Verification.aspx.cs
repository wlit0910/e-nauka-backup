using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka.AdminSec
{
    public partial class Formularz_internetowy15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Identity"];
            if (cookie != null)
            {
                LoginAdm.Text = cookie["id"];
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void Verify_Admin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString());

                conn.Open();
                string query = "SELECT * FROM ADMINS WHERE LOGIN = @name AND TOKEN = @token;";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", LoginAdm.Text);
                cmd.Parameters.AddWithValue("@token", Token.Text);

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    HttpCookie cookie = new HttpCookie("Identity");
                    cookie["id"] = LoginAdm.Text;
                    cookie.Expires = DateTime.Now.AddMinutes(30);
                    Response.Cookies.Add(cookie);
                    Response.Redirect("AdminStart.aspx?Parameter=" + LoginAdm.Text); 
                }
                else
                {
                    AdminIsValid.ForeColor = System.Drawing.Color.Red;
                    AdminIsValid.Text = "Niepoprawny token.";
                    Token.Text = null;
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                string info = ex.Message;
                AdminIsValid.Text = info;
            }           
        }
    }
}