using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Web.HttpException; 
//using System.Web.HttpException;
namespace validation
{
    public partial class _44part : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ValidationSettings.UnobtrusiveValitionMode = UnobtrusiveValidationMode.None; also can solve it by config appp i solve it

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "data save succesfully ";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "data was not  save succesfully ";
            }
        }
    }
}