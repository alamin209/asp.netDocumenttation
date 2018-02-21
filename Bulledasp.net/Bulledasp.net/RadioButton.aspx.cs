using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bulledasp.net
{
    public partial class RadioButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
  
            if (RadioButtonList1.SelectedItem != null)
            {
                Response.Write("Text " + RadioButtonList1.SelectedItem.Text+"</br>");
                Response.Write("Value" + RadioButtonList1.SelectedItem.Value+ "</br>" );
                Response.Write("Text" + RadioButtonList1.SelectedIndex.ToString());
            }

            else
            {
                Response.Write("Please Selected first");
            
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            RadioButtonList1.SelectedIndex = -1;//best one 


            //foreach (ListItem li in RadioButtonList1.Items)
            //{

            //    if (li.Selected)
            //    {

            //        li.Selected = false;
                
            //    }
          
            
            //}

        }
    }
}