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
    public partial class AddProduct : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CmdAddItem_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            cmd = new SqlCommand("usp_InsertProd", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", TxtId.Text);
            cmd.Parameters.AddWithValue("@Name", TxtName.Text);
            cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);

            cmd.Parameters.AddWithValue("@Price", TxtPrice.Text);

            if (!FileProductImage.HasFile)
            {
                //  cmd.Parameters.AddWithValue("@ProductImage",DBNull.Value);
                cmd.Parameters.Add("@ProductImage", SqlDbType.VarBinary);
                cmd.Parameters["@ProductImage"].Value = DBNull.Value;

            }
            else
            {
                int length = FileProductImage.PostedFile.ContentLength;
                byte[] img = new byte[length];
                FileProductImage.PostedFile.InputStream.Read(img, 0, length);
                cmd.Parameters.AddWithValue("@ProductImage", img);
            }
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblStatus.Text = "Product Added Sucessfully";
                Page_Load(sender, e);
            }
            cmd.Dispose();
            con.Close();
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtName.Text = "";
            TxtDescription.Text = "";

            TxtPrice.Text = "";

        }

        protected void BtnOk_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}
