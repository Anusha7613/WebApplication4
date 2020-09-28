using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace WebApplication4
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            //string UserId = TxtUserId.Text;
            //string Password1 = TxtPassword1.Text;
            //if (TxtUserId.Text == UserId && TxtPassword1.Text == Password1)
            //{
            //    LblMessage.Text = "Succesful LogIn";
            //    Response.Redirect("WebForm1.aspx");
            //}
            //else
            //{
            //    LblMessage.Text = "Check Your Credentials";
            //}
            string UserId = TxtUserId.Text;
            string Password1 = TxtPassword1.Text;
            if (FormsAuthentication.Authenticate(UserId, Password1))
            {
                FormsAuthentication.RedirectFromLoginPage(UserId, false);
            }
            else
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
                cmd = new SqlCommand("Select * from EmployeeCredentials where UserId=@UserId and Password=@Password ", con);
               // cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@UserId", TxtUserId.Text);
                cmd.Parameters.AddWithValue("@Password", TxtPassword1.Text);
                con.Open();
                string Status = "";
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.HasRows)
                {
                    reader.Read();
                   Status = reader["Status"].ToString();
                    Session["UserId"] = TxtUserId.Text;
                  
                    // LblMessage.Text = "Successfull LogIn";
                    //  Response.Redirect("WebForm1.aspx");
                }
                
                //if (Status == null)
                else
                {
                    LblMessage.Text = "Check Your Credentials";
                }

               if (Status != null && Status == "Blocked")
                {
                    LblMessage.Text = $"{UserId} UserId has blocked, kindly Contact CustomerCare";
                }
                else
                {
                    Response.Redirect("WebForm1.aspx");
                }
            }
        }


        protected void CmdSignIn_Click(object sender, EventArgs e)
        {
            //string UserName = TxtUserName.Text;
            //string Password = TxtPassword.Text;
            //if (TxtUserName.Text == UserName && TxtPassword.Text == Password)
            //{
            //    LblMessageBox.Text = "Succesful SignIn";
            //    Response.Redirect("WebForm1.aspx");
            //}
            //else
            //{
            //    LblMessageBox.Text = "Check Your Credentials";
            //}
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * from UserDetails where UserName=@UserName and Password=@Password", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@UserName", TxtUserName.Text);
            cmd.Parameters.AddWithValue("@Password", TxtPassword.Text);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            reader.Read();

            if (reader.HasRows)
            { 
                Session["UserName"] = TxtUserName.Text;
            LblMessage.Text = "Login SuccessFull";
            }
            else
            {
                LblMessageBox.Text = "Check Your Credentials";
            }
            Response.Redirect("WebForm1.aspx");
        }


    }
    }

