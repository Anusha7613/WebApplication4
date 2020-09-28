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
    public partial class login_page : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string UserId = TxtUserId.Text;
            string Password1 = TxtPassword1.Text;
            if (TxtUserId.Text == UserId && TxtPassword1.Text == Password1)
            {
                LblMessage.Text = "Succesful LogIn";
            }
            else
            {
                LblMessage.Text = "Check Your Credentials";
            }
        }

        protected void CmdSignIn_Click(object sender, EventArgs e)
        {
            string UserName = TxtUserName.Text;
            string Password = TxtPassword.Text;
            if (TxtUserName.Text == UserName && TxtPassword.Text == Password)
            {
                LblMessageBox.Text = "Succesful LogIn";
            }
            else
            {
                LblMessageBox.Text = "Check Your Credentials";
            }
        }
    }
}


