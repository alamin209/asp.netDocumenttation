using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ////System.Collections.Specialized.NameObjectCollectionBase PreviousFormCollcetion = Request.Form;
        ////Label1.Text= PreviousFormCollcetion["txtName"];
        ////Label2.Text= PreviousFormCollcetion["txtEmail"];
        /// i am realy sorry about that the programm was not workin g correctly
        /// i am realy fail to do it with thse riight way
        Page previousPage = Page.PreviousPage;
        if (previousPage != null)
        {
           Label2.Text= ((TextBox)previousPage.FindControl("txtName")).Text;
          Label1.Text = ((TextBox)previousPage.FindControl("txtEmail")).Text;


        }

        


    }
}