using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;

namespace WebApplication4
{
    public partial class searchImplementation : System.Web.UI.Page
    {
        
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        private DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["id"].ToString();
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
                cmd = new SqlCommand("usp_SearchProd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", name);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                dt = new DataTable();
                dt.Load(rd);
                int rows = dt.Rows.Count;
                DlProd.DataSource = dt;
                DlProd.DataBind();
                LblMessage.Text = rows + " Items found";
            }
        }

      
    }
