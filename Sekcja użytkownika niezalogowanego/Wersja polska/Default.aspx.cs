using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_nauka
{
    public partial class _Default : Page
    {
        protected void ChangeLanguage(string lang)
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(lang);
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(lang);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["lang"] != null)
            {
                string lang = Request.QueryString["lang"];
                ChangeLanguage(lang);
            }
        }
    }
}