using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void transfeerd_Info_Click1(object sender, EventArgs e)
    {
        Server.Transfer("~/Form2.aspx");
    }

    //Server,transfeerd can not work extrenal url
}