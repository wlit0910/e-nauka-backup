﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail; // odwołanie do obsługi klienta poczty
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SendGrid;
using SendGrid.Helpers.Mail;
using System.Threading.Tasks;


namespace e_nauka
{
    public partial class Formularz_internetowy122 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected async void Loguj_User_Click(object sender, EventArgs e)
        {
            try
            {
                string email = Email_User.Text;

                // sprawdzenie, czy podany adres e-mail istnieje w bazie danych
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                string query = "SELECT LOGIN, PASSWORD FROM USERS WHERE EMAIL = @Email";
                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@Email", email);

                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            // Pobrano dane użytkownika
                            string login = reader["LOGIN"].ToString();
                            string password = reader["PASSWORD"].ToString();

                            // Wysłanie e-maila POPRZEZ PAPUERCUT - srodowisko testowe localhost

                            //SendRecoveryEmail(email, login, password);
                            //ValidMessage.Text = "Dane logowania zostały wysłane na Twój adres e-mail.";
                            //ValidMessage.ForeColor = System.Drawing.Color.Green;

                            // SENDGRID ----------------------------------------------------------------------------------------

                            var response = await SendRecoveryEmail2(email, login, password);

                            if (response.StatusCode == System.Net.HttpStatusCode.Accepted)
                            {
                                ValidMessage.Text = "Wiadomość została wysłana na Twój adres e-mail!";
                                ValidMessage.ForeColor = System.Drawing.Color.Green;
                            }
                            else
                            {
                                ValidMessage.Text = $"Błąd podczas wysyłania wiadomości. Spróbuj ponownie. StatusCode: {response.StatusCode}, Body: {await response.Body.ReadAsStringAsync()}";
                                ValidMessage.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                        else
                        {
                            ValidMessage.Text = "Podany adres e-mail nie istnieje w bazie danych.";
                            ValidMessage.ForeColor = System.Drawing.Color.Red;
                        }

                        reader.Close();
                    }
                }
                catch (SqlException ex)
                {
                    ValidMessage.Text = ex.Message.ToString();
                }
            }
            catch (Exception ex)
            {
                ValidMessage.Text = ex.Message.ToString();
            }
        }
        private async Task<Response> SendRecoveryEmail2(string email, string login, string password)
        {
            var apiKey = System.Configuration.ConfigurationManager.AppSettings["SendGridApiKey"];
            var client = new SendGridClient(apiKey);

            var from = new EmailAddress("xxxxx@gmail.com", "Serwis e-nauka");
            var to = new EmailAddress(email);
            var subject = "Odzyskiwanie loginu i hasła";
            var plainTextContent = $"Twój login: {login}\nTwoje hasło: {password}";
            var htmlContent = $"<strong>Twój login:</strong> {login}<br/><strong>Twoje hasło:</strong> {password}";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);

            var response = await client.SendEmailAsync(msg);
            return response;
        }


        // Środowisko testowe - Papercut
        // https://github.com/ChangemakerStudios/Papercut-SMTP
        private void SendRecoveryEmail(string email, string login, string password)
        {
            // Konfiguracja wiadomości e-mail
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("xxxxx@gmail.com");
            mail.To.Add(email);
            mail.Subject = "Odzyskiwanie loginu i hasła";
            mail.Body = $"Twój login: {login}\nTwoje hasło: {password}";


            SmtpClient smtp = new SmtpClient("localhost", 25); // Port 25 to domyślny port SMTP


            // Wysłanie wiadomości
            smtp.Send(mail);
        }
    }
}
