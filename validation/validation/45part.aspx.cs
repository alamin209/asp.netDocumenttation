using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validation
{
    public partial class _45part : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "data save succesfully ";
            }
            else
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "data was not  save succesfully ";
            }
        }
    }
}