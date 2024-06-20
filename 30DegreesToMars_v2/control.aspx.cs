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
using System.Drawing;

namespace _30DegreesToMars_v2
{
    public partial class control : System.Web.UI.Page
    {

        protected int[] date { get; set; }

        protected int[] values { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            String myConnection = ConfigurationManager.ConnectionStrings["dbconnection2"].ToString();
            SqlConnection con = new SqlConnection(myConnection);
            String sql = "Select day_cnt From [project_MIS332].[dbo].[vw_overall_health]";
            using (var command = new SqlCommand(sql, con))
            {
                con.Open();
                using (var reader = command.ExecuteReader())
                {
                    List<int> list = new List<int>();
                    while (reader.Read())
                        list.Add(reader.GetInt32(0));
                    date = list.ToArray();
                }
            }
            con.Close();

            String sql2 = "Select overall_health From [project_MIS332].[dbo].[vw_overall_health]";
            using (var command = new SqlCommand(sql2, con))
            {
                con.Open();
                using (var reader2 = command.ExecuteReader())
                {
                    List<int> list2 = new List<int>();
                    while (reader2.Read())
                        list2.Add(reader2.GetInt32(0));
                    values = list2.ToArray();
                }
            }

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