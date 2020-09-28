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
    public partial class WebForm1 : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        private DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            cmd = new SqlCommand("Select Id,Name,Price,Description,ProductImage from Prod", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            dt = new DataTable();
            dt.Load(reader);
            DlProd.DataSource = dt;
            DlProd.DataBind();

           

        }

       
    }
}













//con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
//cmd = new SqlCommand("select id,Name,Description,Price from Prod where Name like'%'+@Name+'%'", con);
//con.Open();
//SqlDataReader rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
//dt = new DataTable();
//dt.Load(rd);
//DlProd.DataSource = dt;
//DlProd.DataBind();














