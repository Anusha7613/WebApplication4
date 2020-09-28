using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Data;

namespace WebApplication4
{
   
    
    public partial class womenTshirts : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;

     

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            cmd = new SqlCommand("Select * from Prod where Name='t-shirts'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            DlProd.DataSource = dt;
            DlProd.DataBind();
            cmd.Dispose();
            con.Close();

        }
    }
}