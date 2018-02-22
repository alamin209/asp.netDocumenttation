using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllControlDRopdoenCheckTogather
{
    public partial class ALlINOne : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateItem(DropDownList1);
                populateItem(CheckBoxList1);
                populateItem(RadioButtonList1);
                populateItem(BulletedList1);

            }

        }


        private void populateItem(ListControl li)//inhertitance best exaple that i sow so far 
        {

            //ListItem continant = new ListItem("Select the Continant", "-1");

            //ContinantList.Items.Insert(0, continant);


            ListItem li0 = new ListItem("PLease select the on", "-1");
            ListItem li1 = new ListItem("alamin", "1");
            ListItem li2 = new ListItem("Aklima", "2");
            ListItem li3 = new ListItem("JAhangir", "3");
            ListItem li4 = new ListItem("Aesha", "4");
            li.Items.Insert(0, li0);
            li.Items.Add(li1);
            li.Items.Add(li2);
            li.Items.Add(li3);
            li.Items.Add(li4);

        }


        private void  getlistitemmultipule(ListControl List)
        {

            foreach (ListItem li in List.Items)
            { 
            
                if(li.Selected)
                {
                    Response.Write("Text" + li.Text + ", Value=" + li.Value + ",inedx=" + List.Items.IndexOf(li).ToString());
                
                }
            
            }
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getlistitemmultipule(CheckBoxList1);
            getlistitemmultipule(BulletedList1);
            singleselction(DropDownList1);
            singleselction(RadioButtonList1);
        }
        private void  singleselction( ListControl list)
        {
        
        if(list.SelectedIndex!=-1)
        {

            Response.Write("Text=" + list.SelectedItem.Text+ "<br/>");
            Response.Write("Value=" + list.SelectedItem.Value + "<br/>");
            Response.Write("SELCTION Indexs=" + list.SelectedIndex.ToString() + "<br/>");
        }
        
        
        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)//if i use link thatn it will work 
        {

            ListItem li = BulletedList1.Items[e.Index];
            Response.Write("text" + li.Text + "</br>");

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



        }

 
    }
}