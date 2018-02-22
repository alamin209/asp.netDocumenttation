using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Bullate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {
            ListItem li = BulletedList1.Items[e.Index];
            {

                Response.Write("Text" + li.Text + "<br/>");
                Response.Write("value" + li.Value + "<br/>");
                Response.Write("Text" + e.Index.ToString() + "<br/>");


            }
        }
    }
}