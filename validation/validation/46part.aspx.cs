using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validation
{
    public partial class _46part : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.Text = "data save";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "data save";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}