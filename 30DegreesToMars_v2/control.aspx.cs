using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace _30DegreesToMars_v2
{
    public partial class control : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insert_new_params(object sender, EventArgs e)
        {

            string ParameterChange = param.Text;
            string inputparam = inputvariable.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["30DegreesToMars"].ConnectionString;



            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("insert_control_data_to_database", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@adminid", SqlDbType.VarChar).Value = "";
                        cmd.Parameters.Add("@control_name", SqlDbType.VarChar).Value = ParameterChange;
                        cmd.Parameters.Add("@set_value", SqlDbType.VarChar).Value = inputparam;
                        con.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                        }


                        cmd.Dispose();
                        con.Close();
                        //Response.Redirect("~/successfully_signedup.aspx");

                    }
                }
            }
            catch (Exception exception)
            {
                Debug.WriteLine(exception.ToString());
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}