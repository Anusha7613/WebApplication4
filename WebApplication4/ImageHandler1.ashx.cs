using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4
{
    /// <summary>
    /// Summary description for ImageHandler1
    /// </summary>
    public class ImageHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["id"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DXC"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select ProductImage from Prod Where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            rd.Read();
            context.Response.BinaryWrite((byte[])rd["ProductImage"]);
            rd.Close();
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}