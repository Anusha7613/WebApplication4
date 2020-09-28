using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using WebApplication4.datalistServiceReference;

namespace WebApplication4
{
    public partial class datalist : System.Web.UI.Page
    {
        //private SqlConnection con = null;
        //private SqlCommand cmd = null;
        //private DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            AdminPageService admin = new AdminPageService();
            DataSet ds = admin.GetProductDisplay();
            //con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            //cmd = new SqlCommand("Select Id,Name,Description,Price,ProductImage from Prod", con);
            //con.Open();
            //SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
         //  dt = new DataTable();
            // dt.Load(reader);
           DlProd.DataSource = ds;
            DlProd.DataBind();

        }

      
    }
}