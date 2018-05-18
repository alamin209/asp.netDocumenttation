using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validation
{
    public partial class customvalidation48 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


        }




        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            if (args.Value == "")
            {

                args.IsValid = false;
            }
            else
            {
                int numeber;
                bool isnumber = int.TryParse(args.Value, out numeber);
                if (isnumber && numeber >= 0 && numeber % 2 == 0)
                {

                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;

                }
            }


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                Label1.Text = "Data Saved";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Data  was not  Saved";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}