using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace checkboxlistRealtimeexample
{
    public partial class checkboxlistandlistboxrealtimeexample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            ListBox1.Items.Clear();//it will help to remove the lastinserty+prevoius items insertion 

            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)

                {

                    //ListBox1.Items.Add(li);//it wil sect all items with setction sign
                    ListBox1.Items.Add(li.Text);//it willl print only the value
                }
            
            }


            if (CheckBoxList1.SelectedIndex == -1)
            {

                Label1.ForeColor = System.Drawing.Color.Red;

            }

            else
            {

                Label1.ForeColor = System.Drawing.Color.Black;

            }

            Label1.Text = ListBox1.Items.Count.ToString() + "items(s) selected";


        }


        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}