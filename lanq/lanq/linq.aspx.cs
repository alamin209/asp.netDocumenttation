using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace lanq
{
    public partial class linq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             int [] num ={1,2,45,78};
             GridView1.DataSource = from number in num
                                    where ((number % 2) == 0)
                                   select number;
            //in memory object  example 

            //DataClasses1DataContext datacontext= new DataClasses1DataContext();
            //GridView1.DataSource = from Employ in datacontext.Employs
            //                       where Employ.Gender=="male"
            //                     select Employ;transate data source
            GridView1.DataBind();

        }
    }
}
//advantage of linq  it can retive dat from sql ,xml ,dataobject,
//it can give compiler time error but mysql give run time error