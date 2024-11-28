using iTextSharp.text.pdf;
using iTextSharp.text;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace e_nauka.AdminSec
{
    public partial class Formularz_internetowy12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                Add_login.Visible = false;
                Add_pass.Visible = false;
                Add_name.Visible = false;
                Add_surname.Visible = false;
                Add_gender.Visible = false;
                Add_age.Visible = false;
                Add_email.Visible = false;
                Add_lang.Visible = false;
                Send_Add.Visible = false;


                Pole_Admin.Visible = false;
                Nowe_Admin.Visible = false;
                Send_Edit.Visible = false;
                ID_do_zmiany.Visible = false;

                Label2.Visible = false;
                Pole_usun.Visible = false;
                Send_delete.Visible = false;
            }
        }

        protected void Dodaj_Admin_Click(object sender, EventArgs e)
        {
            Add_login.Visible = true;
            Add_pass.Visible = true;
            Add_name.Visible = true;
            Add_surname.Visible = true;
            Add_gender.Visible = true;
            Add_age.Visible = true;
            Add_email.Visible = true;
            Add_lang.Visible = true;
            Send_Add.Visible = true;
        }

        protected void Send_Add_Click(object sender, EventArgs e)
        {
            try
            {
                string newLogin = Add_login.Text.Trim();
                string newPass = Add_pass.Text.Trim();
                string newName = Add_name.Text.Trim();
                string newSurname = Add_surname.Text.Trim();
                string newGender = Add_gender.Text.Trim();
                int newAge = Convert.ToInt32(Add_age.Text.Trim());
                string newEmail = Add_email.Text.Trim();
                string newLang = Add_lang.Text.Trim();


            // walidacja pol formularza zmiany danych
#pragma warning disable CS0472 // Wynik wyrażenia jest zawsze taki sam, ponieważ wartość tego typu nigdy nie jest równa wartości „null”
            if (string.IsNullOrEmpty(newLogin)|| string.IsNullOrEmpty(newPass) || string.IsNullOrEmpty(newName)
                || string.IsNullOrEmpty(newSurname) || string.IsNullOrEmpty(newGender) || newAge == null
                || string.IsNullOrEmpty(newEmail) || string.IsNullOrEmpty(newLang))
            {
                Valid1.Text = "Pola nie mogą być puste.";
                return;
            }
#pragma warning restore CS0472 // Wynik wyrażenia jest zawsze taki sam, ponieważ wartość tego typu nigdy nie jest równa wartości „null”

          // Połączenie do bazy danych
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    string insertQuery = "INSERT INTO USERS VALUES(@NewLogin,@NewPass,@NewName,@NewSurname,@NewGender,@NewAge,@NewEmail,@NewLang);";

                    using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@NewLogin", newLogin);
                        cmd.Parameters.AddWithValue("@NewPass", newPass);
                        cmd.Parameters.AddWithValue("@NewName", newName);
                        cmd.Parameters.AddWithValue("@NewSurname", newSurname);
                        cmd.Parameters.AddWithValue("@NewGender", newGender);
                        cmd.Parameters.AddWithValue("@NewAge", newAge);
                        cmd.Parameters.AddWithValue("@NewEmail", newEmail);
                        cmd.Parameters.AddWithValue("@NewLang", newLang);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            Valid1.Text = "Rekord został dodany pomyślnie.";
                            Valid1.ForeColor = Color.Green;
                            GridView1.DataBind();

                            Add_login.Text = "";
                            Add_pass.Text = "";
                            Add_name.Text = "";
                            Add_surname.Text = "";
                            Add_gender.Text = "";
                            Add_age.Text = "";
                            Add_email.Text = ""; 
                            Add_lang.Text = "";
                           //     conn.Close();
                        }
                        else
                        {                           
                            Valid1.Text = "Nieprawidłowe dane. Spróbuj ponownie.";
                            Valid1.ForeColor = Color.Red;

                            Add_login.Text = ""; 
                            Add_pass.Text = "";
                            Add_name.Text = "";
                            Add_surname.Text = "";
                            Add_gender.Text = "";
                            Add_age.Text = "";
                            Add_email.Text = "";
                            Add_lang.Text = "";
                        }
                    }
                }
                catch (SqlException ex)
                {                  
                    Valid1.Text = "Błąd podczas aktualizacji danych: " + ex.Message;
                    Valid1.ForeColor = Color.Red;

                    Add_login.Text = "";
                    Add_pass.Text = "";
                    Add_name.Text = "";
                    Add_surname.Text = "";
                    Add_gender.Text = "";
                    Add_age.Text = "";
                    Add_email.Text = "";
                    Add_lang.Text = "";
                }
                }
            }
            catch
            {
                Valid1.Text = "Pola nie mogą być puste.";
            }
        }

        protected void Edytuj_Admin_Click(object sender, EventArgs e)
        {
            Pole_Admin.Visible = true;
            Nowe_Admin.Visible = true;
            Send_Edit.Visible = true;
            ID_do_zmiany.Visible = true;
        }

        protected void Send_Edit_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(ID_do_zmiany.Text.Trim());
                string selectedCategory = Pole_Admin.SelectedValue;
                string newValue = Nowe_Admin.Text;

                if (string.IsNullOrEmpty(newValue))
                {
                    Valid2.Text = "Wartość nie może być pusta.";
                    return;
                }

                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    try
                    {
                        conn.Open();

                        string updateQuery = string.Empty;

                        switch (selectedCategory)
                        {
                            case "LOGIN":
                                updateQuery = "UPDATE USERS SET LOGIN = @NewValue WHERE ID = @UserId";
                                break;
                            case "PASSWORD":
                                updateQuery = "UPDATE USERS SET PASSWORD = @NewValue WHERE ID = @UserId";
                                break;
                            case "NAME":
                                updateQuery = "UPDATE USERS SET NAME = @NewValue WHERE ID = @UserId";
                                break;
                            case "SURNAME":
                                updateQuery = "UPDATE USERS SET SURNAME = @NewValue WHERE ID = @UserId";
                                break;
                            case "GENDER":
                                updateQuery = "UPDATE USERS SET GENDER = @NewValue WHERE ID = @UserId";
                                break;
                            case "EMAIL":
                                updateQuery = "UPDATE USERS SET EMAIL = @NewValue WHERE ID = @UserId";
                                break;
                            case "LANG":
                                updateQuery = "UPDATE USERS SET LANG = @NewValue WHERE ID = @UserId";
                                break;
                        }

                        using (SqlCommand cmd = new SqlCommand(updateQuery, conn))
                        {
                            cmd.Parameters.AddWithValue("@NewValue", newValue);
                            cmd.Parameters.AddWithValue("@UserId", id);

                            int rowsAffected = cmd.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                Valid2.Text = "Dane zostały zaktualizowane pomyślnie.";
                                Valid2.ForeColor = Color.Green;
                                GridView1.DataBind();

                                Nowe_Admin.Text = string.Empty;
                                ID_do_zmiany.Text = string.Empty;
                            }
                            else
                            {
                                Valid2.Text = "Nie znaleziono użytkownika o podanym ID.";
                                Valid2.ForeColor = Color.Red;
                                Nowe_Admin.Text = string.Empty;
                                ID_do_zmiany.Text = string.Empty;
                            }
                        }
                    }
                    catch (SqlException ex)
                    {
                        Valid2.Text = "Błąd podczas aktualizacji danych: " + ex.Message;
                        Valid2.ForeColor = Color.Red;
                        Nowe_Admin.Text = string.Empty;
                        ID_do_zmiany.Text = string.Empty;
                    }
                }
            }
            catch
            {
                Valid2.Text = "Wartość nie może być pusta.";
                Valid2.ForeColor = Color.Red;
                Nowe_Admin.Text = string.Empty;
                ID_do_zmiany.Text = string.Empty;

                return;
            }
        }

        protected void Delete_Admin_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Pole_usun.Visible = true;
            Send_delete.Visible = true;
        }

        protected void Send_delete_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(Pole_usun.Text.Trim());

                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    string deleteQuery = "DELETE FROM USERS WHERE ID = @UserId";

                    using (SqlCommand cmd = new SqlCommand(deleteQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@UserId", id);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            Valid3.Text = "Rekord został usunięty pomyślnie.";
                            Valid3.ForeColor = Color.Green;
                            GridView1.DataBind();

                            Pole_usun.Text = string.Empty;
                        }
                        else
                        {
                            Valid3.Text = "Nie znaleziono użytkownika o podanym ID.";
                            Valid3.ForeColor = Color.Red;
                            Pole_usun.Text = string.Empty;
                        }
                    }
                }
            }
            catch
            {
                Valid3.Text = "Wartość nie może być pusta.";
                Valid3.ForeColor = Color.Red;
                Pole_usun.Text = string.Empty;
            }
        }

        protected void Pobierz_Admin_Click(object sender, EventArgs e)
        {
            string format = Typ_pliku.SelectedValue;

            switch (format)
            {
                case "JSON":
                    ExportToJSON();
                    break;
                case "CSV":
                    ExportToCSV();
                    break;
                case "XML":
                    ExportToXML();
                    break;
                case "PDF":
                    ExportToPDF();
                    break;
            }
        }

        protected void ExportToJSON()
        {
            var dataTable = GetDataTableFromGridView(GridView1);
            string json = Newtonsoft.Json.JsonConvert.SerializeObject(dataTable);
            dataTable.TableName = "Users";

            Response.Clear();
            Response.ContentType = "application/json";
            Response.AddHeader("content-disposition", "attachment;filename=USERS.json");
            Response.Write(json);
            Response.End();
        }


        protected void ExportToXML()
        {
            var dataTable = GetDataTableFromGridView(GridView1);
            dataTable.TableName = "Users"; 

            Response.Clear();
            Response.ContentType = "text/xml";
            Response.AddHeader("content-disposition", "attachment;filename=USERS.xml");

            dataTable.WriteXml(Response.OutputStream);
            Response.End();
        }

        protected void ExportToCSV()
        {
            var dataTable = GetDataTableFromGridView(GridView1);
            StringWriter sw = new StringWriter();
            dataTable.TableName = "Users";

            for (int i = 0; i < dataTable.Columns.Count; i++)
            {
                sw.Write(dataTable.Columns[i]);
                if (i < dataTable.Columns.Count - 1)
                {
                    sw.Write(",");
                }
            }
            sw.Write(sw.NewLine);

            foreach (DataRow row in dataTable.Rows)
            {
                for (int i = 0; i < dataTable.Columns.Count; i++)
                {
                    sw.Write(row[i].ToString());
                    if (i < dataTable.Columns.Count - 1)
                    {
                        sw.Write(",");
                    }
                }
                sw.Write(sw.NewLine);
            }

            Response.Clear();
            Response.ContentType = "text/csv";
            Response.AddHeader("content-disposition", "attachment;filename=USERS.csv");
            Response.Write(sw.ToString());
            Response.End();
        }

        protected void ExportToPDF()
        {
            PdfPTable pdf = new PdfPTable(GridView1.Columns.Count); // headerrow.cells.count

            foreach (TableCell headercell in GridView1.HeaderRow.Cells)
            {
                iTextSharp.text.Font font = new iTextSharp.text.Font();
                font.Color = new BaseColor(GridView1.HeaderStyle.ForeColor);

                PdfPCell pdc = new PdfPCell(new Phrase(headercell.Text, font));
                pdc.BackgroundColor = new BaseColor(GridView1.HeaderStyle.BackColor);
                pdf.AddCell(pdc);
            }

            foreach (GridViewRow gr in GridView1.Rows)
            {
                foreach (TableCell cell in gr.Cells)
                {
                    iTextSharp.text.Font font = new iTextSharp.text.Font();
                    font.Color = new BaseColor(GridView1.RowStyle.ForeColor);
                    PdfPCell pdc = new PdfPCell(new Phrase(cell.Text));
                    pdc.BackgroundColor = new BaseColor(GridView1.RowStyle.BackColor);
                    pdf.AddCell(pdc);
                }
            }

            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            pdfDoc.Add(pdf);
            pdfDoc.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=USERS.pdf");
            Response.Write(pdfDoc);
            Response.Flush();
            Response.End();
        }


        private DataTable GetDataTableFromGridView(GridView gridView)
        {
            DataTable dt = new DataTable();

            foreach (TableCell cell in gridView.HeaderRow.Cells)
            {
                dt.Columns.Add(cell.Text);
            }

            foreach (GridViewRow row in gridView.Rows)
            {
                DataRow dr = dt.NewRow();
                for (int i = 0; i < row.Cells.Count; i++)
                {
                    dr[i] = row.Cells[i].Text;
                }
                dt.Rows.Add(dr);
            }

            return dt;
        }

        protected string MaskEmail(string email)
        {
            int atIndex = email.IndexOf('@');
            if (atIndex > 0)
            {
                // Szyfrowanie znaków przed znakiem @
                string maskedPart = new string('*', atIndex);
                return maskedPart + email.Substring(atIndex);
            }
            return email; 
        }
    }
}