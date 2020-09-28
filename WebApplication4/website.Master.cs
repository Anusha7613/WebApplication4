using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class website : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CmdAddProduct.Visible = false;
            CmdCheckOut.Visible = false;

            CmdSignIn.Visible = true;
            CmdSignUp.Visible = true;
            //CmdCheckOut.Visible = false;
            //if (Session["UserId"] != null)
            //{
            //    CmdAddProduct.Visible = true;
            //    CmdCheckOut.Visible = true;
            //}
            //else
            //{
            //    CmdAddProduct.Visible = false;
            //    CmdCheckOut.Visible = true;
            //}

            if (Session["UserId"] != null)
            {

                CmdAddProduct.Visible = true;
                CmdSignIn.Visible = false;
                CmdSignUp.Visible = false;
                CmdCheckOut.Visible = true;

            }

            if (Session["UserName"] != null)
            {
                CmdAddProduct.Visible = false;
                CmdSignIn.Visible = false;
                CmdSignUp.Visible = true;
                CmdCheckOut.Visible = true;

            }
        }

        protected void cmdSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchImplementation.aspx?id=" + TxtSearch.Text);
            Response.Redirect("WebForm1.aspx");
        }

        protected void CmdAddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void CmdSignIn_Click(object sender, EventArgs e)
        {
             Response.Redirect("login.aspx");
        }

        protected void CmdSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx"); 

        }

       

        protected void CmdCheckOut_Click(object sender, EventArgs e)
        {

            Response.Redirect("WebForm1.aspx");
        }

       
    }
}