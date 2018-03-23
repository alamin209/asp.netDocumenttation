using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Wizerdcontrol
{
    public partial class Wizerd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

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

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == 2)
            {
                Label1.Text = textfirstname.Text;
                Label2.Text = textlastname.Text;
                Label3.Text = add_Gender.Text;
                Label4.Text = textemail.Text;
                Label5.Text = textnumber.Text;
            }

        }
    }
}