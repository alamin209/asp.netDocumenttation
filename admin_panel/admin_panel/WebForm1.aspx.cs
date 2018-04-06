using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin_panel
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //now i will add best way


                adminpanel.Visible = false;
                nonadminpanel.Visible = false;

                //////////////////// not a best way ////////////////
                //hideadmin();
                //hidenoneadmin ();

            }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList2.SelectedValue=="-1")
            {

                //hideadmin();
                //hidenoneadmin();
                adminpanel.Visible = false;
                nonadminpanel.Visible = false;


                

            }

           else if (DropDownList2.SelectedValue == "admin")
            {

                //showadmin();
                //hidenoneadmin();

                //Label1.Visible = false;
                //Label4.Visible = false;
                //TextBox5.Visible = false;
                //Label5.Visible = false;
                //Label6.Visible = false;
                //TextBox6.Visible = false;
                //TextBox7.Visible = false;
                //Label7.Visible = false;
                //TextBox8.Visible = false;


                adminpanel.Visible = true;
                nonadminpanel.Visible = false;
            
            }
            else if (DropDownList2.SelectedValue == "nonadmin")
            {
                //admin.Visible = false;
                //TextBox1.Visible = false;
                //user.Visible = false;
                //TextBox2.Visible = false;
                //Label3.Visible = false;
                //MyRow1.Visible = false;

                //TextBox3.Visible = false;

                //shownonadmin();
                //hideadmin();
                adminpanel.Visible = false;
                nonadminpanel.Visible = true;
               


            }

           
        }

        private void showadmin()
        {
            admin.Visible = true;
            TextBox1.Visible = true;
            user.Visible = true;
            TextBox2.Visible = true;
            Label3.Visible = true;
            MyRow1.Visible = true;
            TextBox3.Visible = true;
        }
        private void shownonadmin()
        {
            Label1.Visible = true;
            Label4.Visible = true;
            TextBox5.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            Label7.Visible = true;
            TextBox8.Visible = true;
        }
        private void hideadmin()
        {
            admin.Visible = false;
            TextBox1.Visible = false;
            user.Visible = false;
            TextBox2.Visible = false;
            Label3.Visible = false;
        }
        private void hidenoneadmin()
        {
            TextBox3.Visible = false;
            Label1.Visible = false;
            Label4.Visible = false;
            TextBox5.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            Label7.Visible = false;
            TextBox8.Visible = false;
            MyRow1.Visible = false;

        }




    }
}