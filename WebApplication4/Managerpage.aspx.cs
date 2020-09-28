using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication4
{
    public partial class Managerpage : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd=null;
        private SqlDataAdapter adapter = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            adapter = new SqlDataAdapter("SELECT EmployeeId,FirstName,LastName,UserId,Password FROM EmployeeCredentials where Status is null or Status NOT IN ('Blocked') ", con);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "EmployeeCredentials");
            GridView1.DataSource = ds.Tables["EmployeeCredentials"];
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            cmd = new SqlCommand("Update EmployeeCredentials SET Status='Blocked' where UserId=@UserId", con);
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string UserId = row.Cells[4].Text;
            cmd.Parameters.AddWithValue("@UserId", UserId);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblStatus.Text = $"User Id{UserId} has been blocked";
            }

        }


    }
}