using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _30DegreesToMars_v2
{
    public partial class summary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }

        }
        private void BindGridView(string filter = null)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    if (!string.IsNullOrEmpty(filter))
                    {
                        cmd.CommandText = "select ControlParameter, CurrentValue, Unit, Dateupdated from project_MIS332.dbo.current_control_values where AdminId = 'admin' and ControlParameter LIKE @Filter";

                        cmd.Parameters.AddWithValue("@Filter", "%" + filter + "%");
                    }
                    else
                    {
                        cmd.CommandText = "select ControlParameter, CurrentValue, Unit, Dateupdated from project_MIS332.dbo.current_control_values where AdminId = 'admin'";
                    }

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        ViewState["CurrentData"] = dt;
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }

        protected void ButtonFilter_Click(object Sender, EventArgs e)
        {
            BindGridView(TextBoxName.Text);
        }

        protected void ButtonClear_Click(object Sender, EventArgs e)
        {
            TextBoxName.Text = "";
            BindGridView();
        }

        protected void GridView1_Sorting(object Sender, GridViewSortEventArgs e)
        {
            DataTable dt = ViewState["CurrentData"] as DataTable;
            if (dt != null)
            {
                string sortExpression = e.SortExpression;
                string sortDirection = GetSortDirection(sortExpression);

                //Linq <>
                var sorted = (sortDirection == "ASC") ?
                    from row in dt.AsEnumerable()
                    orderby row[sortExpression] ascending
                    select row :
                    from row in dt.AsEnumerable()
                    orderby row[sortExpression] descending
                    select row;

                DataTable newDataTable = sorted.CopyToDataTable();
                ViewState["CurrentData"] = newDataTable;
                GridView1.DataSource = newDataTable;
                GridView1.DataBind();
            }
            else
            {
                BindGridView();
            }

        }
        private string GetSortDirection(string currentSortExpression)
        {
            string previousSortExpression = ViewState["SortExpression"] as string;
            string previousSortDirection = ViewState["SortDirection"] as String;

            string newSortDirection;
            if (previousSortExpression != null && currentSortExpression == previousSortExpression)
            {
                newSortDirection = previousSortDirection == "ASC" ? "DES" : "ASC";
            }
            else
            {
                newSortDirection = "ASC";
            }
            ViewState["SortExpression"] = currentSortExpression;
            ViewState["SortDirection"] = newSortDirection;

            return newSortDirection;
        }
    }
}