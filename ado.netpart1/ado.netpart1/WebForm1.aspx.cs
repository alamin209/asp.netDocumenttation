﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ado.netpart1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=.;database=Employ; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand("Select * from Employ ",con);
            con.Open();
            
           SqlDataReader rdr=  cmd.ExecuteReader();
           GridView1.DataSource = rdr;
           GridView1.DataBind();
           con.Close();



        }
    }
}