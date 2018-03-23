using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Multiview
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 1;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

            Label1.Text = textfirstname.Text;
            Label2.Text = textlastname.Text;
            Label3.Text=add_Gender.Text;
            Label4.Text =textemail.Text;
            Label5.Text = textnumber.Text;


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label1.Text = textfirstname.Text;
            Label2.Text = textlastname.Text;
            Label3.Text = add_Gender.Text;
            Label4.Text = textemail.Text;
            Label5.Text = textnumber.Text;

            string CS = ConfigurationManager.ConnectionStrings["Multiview"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {

                string sqlquery = "INSERT INTO Multiview(firstname, lastname, Gender, email,number) Values(@first, @lastname,@Gender, @email,@number)";
                using (SqlCommand cmd = new SqlCommand(sqlquery, con))
                {
                    cmd.Parameters.AddWithValue("@first", textfirstname.Text);
                    cmd.Parameters.AddWithValue("@lastname", textlastname.Text);
                    cmd.Parameters.AddWithValue("@Gender", add_Gender.Text);
                    cmd.Parameters.AddWithValue("@email", textemail.Text);
                    cmd.Parameters.AddWithValue("@number", textnumber.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("~/Succesful.aspx");
                }
            }



            
        }
    }
}