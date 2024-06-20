using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _30DegreesToMars_v2
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public string Getreferencetable()
        {
            string htmlStr = "";
            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection2"].ConnectionString;
            SqlConnection thisConnection = new SqlConnection(connectionString);
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "select variable, daterecorded, average_measurement from vw_variable_check_tbl";
            thisConnection.Open();
            SqlDataReader reader = thisCommand.ExecuteReader();

            while (reader.Read())
            {
                string variable = reader.GetString(0);
                string date_recorded = reader.GetString(1);
                string average_measurement = reader.GetString(2);
                htmlStr += "<tr><td>" + variable + "</td><td>" + date_recorded + "</td><td>" + average_measurement + "</td></tr>";
            }

            thisConnection.Close();
            return htmlStr;
        }
    }
}