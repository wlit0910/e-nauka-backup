using SendGrid.Helpers.Mail;
using SendGrid;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Net.Mail; // odwołanie do obsługi klienta poczty


namespace e_nauka
{
    public partial class Formularz_internetowy11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        //string[] dane = new string[6];


        // Wysyłanie e-maila za pomocą SendGrid
        private async Task<Response> SendRegistrationEmail(string email, string login, string password)
        {
            var apiKey = System.Configuration.ConfigurationManager.AppSettings["SendGridApiKey"];
            var client = new SendGridClient(apiKey);

            var from = new EmailAddress("xxxxxx@gmail.com", "Serwis e-nauka");
            var to = new EmailAddress(email);
            var subject = "Rejestracja - Twój login i hasło";
            var plainTextContent = $"Twój login: {login}\nTwoje hasło: {password}";
            var htmlContent = $"<strong>Twój login:</strong> {login}<br/><strong>Twoje hasło:</strong> {password}";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);

            var response = await client.SendEmailAsync(msg);
            return response;
        }


        // Funkcje generujące losowy ciąg znaków
        private string GenerateRandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        private string GenerateRandomString2(int length)
        {
            const string chars = "9876543210zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA;!@#$";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }


        protected async void Rejestracja_Click(object sender, EventArgs e)
        {       
                string imie = Imie_Rej.Text.ToString().Trim();
                string nazwisko = Nazwisko_Rej.Text.ToString().Trim();
                string wiekStr = Wiek_Rej.Text.ToString();
                string email = Email_Rej.Text.ToString();

                // Generowanie losowego loginu i hasła
                string login = GenerateRandomString(10);
                string password = GenerateRandomString2(10);

                int sel = Plec_Rej.SelectedIndex;
                string gen = "";

                int sel2 = Jezyk_Rej.SelectedIndex;
                string jez = "";

                switch (sel)
                {
                    case 0:
                        gen = "K";
                        break;
                    case 1:
                        gen = "M";
                        break;
                    case 2:
                        gen = "X";
                        break;
                    default:
                        gen = "X";
                        break;
                }

                switch (sel2)
                {
                    case 0:
                        jez = "POL";
                        break;
                    case 1:
                        jez = "ENG";
                        break;
                    default:
                        jez = "POL";
                        break;
                }

                // walidacja formularza (do ulepszenia)
                if (string.IsNullOrEmpty(imie) || string.IsNullOrEmpty(nazwisko) ||
                    string.IsNullOrEmpty(wiekStr) || string.IsNullOrEmpty(email) ||
                    string.IsNullOrEmpty(gen) || string.IsNullOrEmpty(jez))
                {
                    ValidUser.ForeColor = Color.Red;
                    ValidUser.Text = "Wszystkie pola muszą być wypełnione.";
                    Imie_Rej.Text = null;
                    Nazwisko_Rej.Text = null;
                    Wiek_Rej.Text = null;
                    Email_Rej.Text = null;
                    Plec_Rej.SelectedIndex = 0;
                    Jezyk_Rej.SelectedIndex = 0;
                    return;
                }

                if (!int.TryParse(wiekStr, out int wiek))
                {
                    ValidUser.ForeColor = Color.Red;
                    ValidUser.Text = "Wiek musi być liczbą.";
                    Imie_Rej.Text = null;
                    Nazwisko_Rej.Text = null;
                    Wiek_Rej.Text = null;
                    Email_Rej.Text = null;
                    Plec_Rej.SelectedIndex = 0;
                    Jezyk_Rej.SelectedIndex = 0;
                    return;
                }

                if (!email.Contains("@"))
                {
                    ValidUser.ForeColor = Color.Red;
                    ValidUser.Text = "Nieprawidłowy adres email.";
                    Imie_Rej.Text = null;
                    Nazwisko_Rej.Text = null;
                    Wiek_Rej.Text = null;
                    Email_Rej.Text = null;
                    Plec_Rej.SelectedIndex = 0;
                    Jezyk_Rej.SelectedIndex = 0;
                    return;
                }
                if (Consent.Checked == false)
                {
                    ValidUser.ForeColor = Color.Red;
                    ValidUser.Text = "Zaakceptuj Warunki Użytkowania";
                    Imie_Rej.Text = null;
                    Nazwisko_Rej.Text = null;
                    Wiek_Rej.Text = null;
                    Email_Rej.Text = null;
                    Plec_Rej.SelectedIndex = 0;
                    Jezyk_Rej.SelectedIndex = 0;
                    return;
                }

                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                string queryUsers = "INSERT INTO USERS (LOGIN, PASSWORD, NAME, SURNAME, GENDER, AGE, EMAIL, LANG) " +
                               "VALUES (@Login, @Password, @Name, @Surname, @Gender, @Age, @Email, @Lang)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(queryUsers, connection);
                    command.Parameters.AddWithValue("@Login", login);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Name", imie);
                    command.Parameters.AddWithValue("@Surname", nazwisko);
                    command.Parameters.AddWithValue("@Gender", gen);
                    command.Parameters.AddWithValue("@Age", wiek);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Lang", jez);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                // Wysłanie e-maila z loginem i hasłem
                var response = await SendRegistrationEmail(email, login, password);

                if (response.StatusCode == System.Net.HttpStatusCode.Accepted)
                {
                    ValidUser.Text = "Rejestracja zakończona pomyślnie. Sprawdź swoją skrzynkę e-mail!";
                    ValidUser.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    ValidUser.Text = $"Błąd podczas wysyłania wiadomości. Spróbuj ponownie. StatusCode: {response.StatusCode}, Body: {await response.Body.ReadAsStringAsync()}";
                    ValidUser.ForeColor = System.Drawing.Color.Red;
                }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO PENDING (NAME, SURNAME, GENDER, AGE, EMAIL, LANG) " +
                               "VALUES (@Imie, @Nazwisko, @Plec, @Wiek, @Email, @Jezyk)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Parametryzacja zapytania
                    cmd.Parameters.AddWithValue("@Imie", imie);
                    cmd.Parameters.AddWithValue("@Nazwisko", nazwisko);
                    cmd.Parameters.AddWithValue("@Plec", gen);
                    cmd.Parameters.AddWithValue("@Wiek", wiek);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Jezyk", jez);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        ValidUser.Visible = false;
                        Response.Redirect("RegisterSucces.aspx");
                    }
                    catch (SqlException ex)
                    {
                        // Obsługa błędów związanych z bazą danych
                        ValidUser.ForeColor = Color.Red;
                        ValidUser.Text = "Błąd podczas rejestracji: " + ex.Message;
                    }
                }
            }
        }
    }
}
