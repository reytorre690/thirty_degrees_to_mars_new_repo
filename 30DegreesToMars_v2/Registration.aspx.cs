using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _30DegreesToMars_v2
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void button_pressed(object sender , EventArgs e)
        {

            /// Get Variables

            string fname = TextBox1.Text;
            string lname = TextBox2.Text;
            string userid = TextBox3.Text;
            string password = TextBox4.Text;
            string confirm_password = TextBox5.Text;
            string date_of_birth = Calendar1.SelectedDate.ToString();

            Response.Write("<script>alert('"+date_of_birth+ "');</script>");

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection2"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("exec project_MIS332.dbo.sp_validate_registration_details @fname, @lname, @userid, @password, @confirm_password, @date_of_birth", con);

            cmd.Parameters.AddWithValue("@fname", fname);
            cmd.Parameters.AddWithValue("@lname", lname);
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@confirm_password", confirm_password);
            cmd.Parameters.AddWithValue("@date_of_birth", date_of_birth);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Contains("Success"))
            {
                Response.Redirect("~/successfully_signedup.aspx");
            }
            else
            {

                Response.Redirect("~/unsuccessful_signedup.aspx");
            }

        }


    }
}