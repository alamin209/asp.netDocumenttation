using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckControl
{
    public partial class Check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckBoxList1.SelectedIndex = 1;
            }
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            foreach (ListItem li in CheckBoxList1.Items)
            {

                if (li.Selected)
                {

                    Response.Write(li.Text + "<br/>");
                    Response.Write(li.Value + "<br/>");

                
                }

             

            
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             foreach (ListItem li in CheckBoxList1.Items)
                {

                    li.Selected = true;
                
                
                }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
             foreach (ListItem li in CheckBoxList1.Items)
                {

                    li.Selected = false;
                
                
                }
        }




    }
}