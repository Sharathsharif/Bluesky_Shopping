using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace Bluesky_Shopping
{
    public class Disconnect_Method
    {
        string con = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlDataAdapter adp;
        DataSet ds = new DataSet();

        public DataSet Disconnect_FN( string a)
        {
            adp = new SqlDataAdapter(a , con);
            adp.Fill(ds);
            return ds;
        }
    }
}