using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace hiddenfeild
{
    public partial class hidden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
            {
                gatemploy();
            
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           

        }

        private void gatemploy()

        {
            string CS = ConfigurationManager.ConnectionStrings["Employ"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {

                string sqlquery = "select Id,Name,Devepartment ,Gender from  Employ where id=2";
                SqlCommand cmd = new SqlCommand(sqlquery, con);
                con.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        textname.Text = rdr["Name"].ToString();
                        textdept.Text = rdr["Devepartment"].ToString();
                        textgender.Text = rdr["Gender"].ToString();
                        HiddenFeildId.Value = rdr["Id"].ToString();


                    }
                
                
                }

            

            
            }
        
        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
            {

                string CS = ConfigurationManager.ConnectionStrings["Employ"].ConnectionString;

                using (SqlConnection con = new SqlConnection(CS))
                {

                    string sqlquery = "Update Employ set Name=@Name,  Devepartment=@Devepartment,Gender=@Gender where Id=@Id ";
                    SqlCommand cmd = new SqlCommand(sqlquery, con);
                    cmd.Parameters.AddWithValue("@Name", textname.Text);
                    cmd.Parameters.AddWithValue("@Devepartment", textdept.Text);
                    cmd.Parameters.AddWithValue("@Gender", textgender.Text);
                    cmd.Parameters.AddWithValue("@Id", HiddenFeildId.Value);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    textname.Text = "";
                    textdept.Text = "";
                    textgender.Text = "";

                }


            }
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            //gatemploy();
        }
    }
}