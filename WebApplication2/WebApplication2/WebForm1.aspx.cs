using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ContinantList.DataSource = GetData("Getcontinant", null);
              ContinantList.DataBind();

              ListItem continant = new ListItem("Select the Continant", "-1");

              ContinantList.Items.Insert(0, continant);
              ListItem country = new ListItem("Select the Country", "-1");

              CountryList.Items.Insert(0, country);

              CountryList.Enabled = false;

              ListItem City = new ListItem("Select the City", "-1");

              CityList.Items.Insert(0, City);
              CityList.Enabled = false;

            }


        }


        private DataSet GetData(string Spname,SqlParameter spParameter)

        {
            string cs = ConfigurationManager.ConnectionStrings["Cascad"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter(Spname, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            if (spParameter != null)
            {
                da.SelectCommand.Parameters.Add(spParameter);
            
            }
            DataSet ds= new DataSet();
            da.Fill(ds);

            return ds;
        }

        protected void ContinantList_SelectedIndexChanged(object sender, EventArgs e)
        {


            if (ContinantList.SelectedIndex == 0)
            {
                CountryList.SelectedIndex = 0;
                CountryList.Enabled = false;

                CityList.SelectedIndex = 0;
                CityList.Enabled = false;

            }

            else
            {

                CountryList.Enabled = true;
                SqlParameter parameter = new SqlParameter("@countryId", ContinantList.SelectedValue);
                DataSet ds = GetData("GetCountry", parameter);
                CountryList.DataSource = ds;
                CountryList.DataBind();
                ListItem country = new ListItem("Select the Country", "-1");
                CountryList.Items.Insert(0, country);
                CityList.SelectedIndex = 0;
                CityList.Enabled = false;

            }


        }

        protected void CountryList_SelectedIndexChanged(object sender, EventArgs e)
        {


            if (CountryList.SelectedIndex == 0)
            {
                CityList.SelectedIndex = 0;
                CityList.Enabled = false;

            }

            else
            {

                CityList.Enabled = true;
                SqlParameter parameter = new SqlParameter("@cityId", CountryList.SelectedValue);
                DataSet ds = GetData("Getcity ", parameter);
                CityList.DataSource = ds;
                CityList.DataBind();
                ListItem City = new ListItem("Select the City", "-1");
                CityList.Items.Insert(0, City);
            }


        }
    }
}