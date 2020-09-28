using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication4
{
    public partial class Sign_Up : System.Web.UI.Page
    { private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {    
        }
        protected void cmdSignUp_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            cmd = new SqlCommand("usp_InsertUserDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
           // cmd.Parameters.AddWithValue("@Id", TxtId.Text);
            cmd.Parameters.AddWithValue("@FirstName", TxtFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", TxtLastName.Text);
            cmd.Parameters.AddWithValue("@UserName", TxtUserName.Text);
            cmd.Parameters.AddWithValue("@Password", TxtPassword.Text);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblMessage1.Text = "Registered Successfully";
                Response.Redirect("login.aspx");
            }
            else
            {
                LblMessage1.Text = " UnSuccessfull";
            }  // Response.Redirect("WebForm1.aspx");
            cmd.Dispose();
            con.Close();
        }
       
        
    }
}