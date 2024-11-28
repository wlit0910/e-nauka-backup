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
    public partial class Formularz_internetowy13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Delete_name.Visible = false;
            Send_delete.Visible = false;
        }

        protected void Delete_Admin_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Delete_name.Visible = true;
            Send_delete.Visible = true;
        }

        protected void Send_delete_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(Delete_name.Text.Trim());

                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string deleteQuery = "DELETE FROM CONTACT WHERE ID = @UserId";


                    using (SqlCommand cmd = new SqlCommand(deleteQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@UserId", id);

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            Valid3.Text = "Rekord został usunięty pomyślnie.";
                            Valid3.ForeColor = Color.Green;
                            GridView1.DataBind();

                            Delete_name.Text = string.Empty;
                        }
                        else
                        {
                            Valid3.Text = "Nie znaleziono wpisu o podanym ID.";
                            Valid3.ForeColor = Color.Red;
                            Delete_name.Text = string.Empty;
                        }
                    }
                }
            }
            catch
            {
                Valid3.Text = "Wartość nie może być pusta.";
                Valid3.ForeColor = Color.Red;
                Delete_name.Text = string.Empty;
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
            Response.AddHeader("content-disposition", "attachment;filename=CONTACT.json");
            Response.Write(json);
            Response.End();
        }

        protected void ExportToXML()
        {
            var dataTable = GetDataTableFromGridView(GridView1);
            dataTable.TableName = "Users";

            Response.Clear();
            Response.ContentType = "text/xml";
            Response.AddHeader("content-disposition", "attachment;filename=CONTACT.xml");

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
            Response.AddHeader("content-disposition", "attachment;filename=CONTACT.csv");
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
            Response.AppendHeader("content-disposition", "attachment;filename=CONTACT.pdf");
            Response.Write(pdfDoc);
            Response.Flush();
            Response.End();
        }


        private DataTable GetDataTableFromGridView(GridView gridView)
        {
            DataTable dt = new DataTable();

            // Dodaj kolumny
            foreach (TableCell cell in gridView.HeaderRow.Cells)
            {
                dt.Columns.Add(cell.Text);
            }

            // Dodaj wiersze
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
    }
}