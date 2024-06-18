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

namespace _30DegreesToMars_v2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        public void SignUp(object sender, EventArgs e)
        {

            RequiredFieldValidator1.Enabled = true;
            RequiredFieldValidator2.Enabled = true;
            RequiredFieldValidator3.Enabled = true;
            RequiredFieldValidator4.Enabled = true;
            RequiredFieldValidator5.Enabled = true;
            RequiredFieldValidator6.Enabled = true;
            RequiredFieldValidator7.Enabled = false;
            RequiredFieldValidator8.Enabled = false;

            if (!Page.IsValid)
            {
                return;
            }
            string userSUid = userSU.Text;
            string finame = fname.Text;
            string laname = lname.Text;
            string dateob = dob.Text;
            string pwd = passSU.Text;
            string rpwd = rpassSU.Text;

            bool does_userid_exist = Check_If_UserID_Exist(userSUid);

            if (does_userid_exist)
            {

                Label2.Visible = false;
                ClientScript.RegisterStartupScript(this.GetType(), "does_userid_exist", "alert('Invalid username. Please use a different one.');", true);
            }

            else
            {
                Insert(finame, laname, dateob, userSUid, pwd, rpwd);
                Response.Redirect("~/SignUpSuccessful.aspx");
            }
        }

        public bool Check_If_UserID_Exist(string userSUid)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["30DegreesToMars"].ConnectionString;
            bool does_userid_exist = false;
            int count = 0;
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandText =
                            "SELECT COUNT (*) AS count " +
                            "FROM [30DegreesToMars].[dbo].[SignUp] " +
                            "WHERE [User_Name_SU] = @User_Name_SUparameter";

                        cmd.Parameters.AddWithValue("@User_Name_SUparameter", userSUid);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                count = reader.GetInt32(0);
                            }
                        }
                        cmd.Dispose();
                        con.Close();
                    }
                }
            }
            catch (Exception exception)
            {
                Debug.WriteLine(exception.ToString());
            }
            if (count > 0)
            {
                does_userid_exist = true;
            }
            else
            {
                does_userid_exist = false;
            }
            return does_userid_exist;
        }

        protected void Insert(string finame, string laname, string dateob, string userSUid, string pwd, string rpwd)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["30DegreesToMars"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandText =
                            "INSERT INTO[30DegreesToMars].[dbo].[SignUp] ([First_Name], [Last_Name], [Date_of_Birth], [User_Name_SU], [Password_SU],[Repeat_Password], [Registered_Date])" +
                            "VALUES " +
                            "(@First_Name, @Last_Name, @Date_of_Birth, @User_Name_SU, @Password_SU,@Repeat_Password, GETDATE())";

                        cmd.Parameters.AddWithValue("@First_Name", finame);
                        cmd.Parameters.AddWithValue("@Last_Name", laname);
                        cmd.Parameters.AddWithValue("@Date_of_Birth", dateob);
                        cmd.Parameters.AddWithValue("@User_Name_SU", userSUid);
                        cmd.Parameters.AddWithValue("@Password_SU", pwd);
                        cmd.Parameters.AddWithValue("@Repeat_Password", rpwd);
                        cmd.ExecuteNonQuery();
                        cmd.Dispose();
                        con.Close();
                    }
                }
            }
            catch (Exception exception)
            {
                Debug.WriteLine(exception.ToString());
            }
        }
        public void SignIn(object sender, EventArgs e)
        {

            RequiredFieldValidator1.Enabled = false; // Change the IDs as per your actual control IDs
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
            RequiredFieldValidator4.Enabled = false;
            RequiredFieldValidator5.Enabled = false;
            RequiredFieldValidator6.Enabled = false;
            RequiredFieldValidator7.Enabled = true;
            RequiredFieldValidator8.Enabled = true;

            string usernameSI = userSI.Text;
            string passwordSI = passSI.Text;
            bool does_userid_pwd_exist = Check_If_UserID_pwd_Exist(usernameSI, passwordSI);

            if (does_userid_pwd_exist)
            {
                Response.Redirect("~/SignUpSuccessful.aspx");
            }
            else
            {
                Label2.Visible = true;

                ClientScript.RegisterStartupScript(this.GetType(), "Hidelable", "<script type=\"text/javascript\">setTimeout(\"document.getElementById('" + Label2.ClientID + "').style.display='none'\",120000)</script>");
            }
        }

        public bool Check_If_UserID_pwd_Exist(string usernameSI, string passwordSI)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["30DegreesToMars"].ConnectionString;
            bool SIisValid = false;
            int countSI = 0;
            try
            {
                using (SqlConnection con1 = new SqlConnection(connectionString))
                {
                    con1.Open();
                    using (SqlCommand cmd1 = new SqlCommand("SELECT COUNT (*) AS count " +
                        "FROM [30DegreesToMars].[dbo].[SignUp] " +
                        "WHERE [User_Name_SU] = @User_Name_SUparameter AND [Password_SU] = @Password_SUparameter", con1))
                    {
                        cmd1.Parameters.AddWithValue("@User_Name_SUparameter", usernameSI);
                        cmd1.Parameters.AddWithValue("@Password_SUparameter", passwordSI);

                        using (SqlDataReader reader = cmd1.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                countSI = reader.GetInt32(0);
                            }
                        }
                        cmd1.Dispose();
                        con1.Close();
                    }
                }
            }
            catch (Exception exception)
            {
                Debug.WriteLine(exception.ToString());
            }
            if (countSI > 0)
            {
                SIisValid = true;
            }
            else
            {
                SIisValid = false;
            }
            return SIisValid;
        }
    }
}
//just a comment
