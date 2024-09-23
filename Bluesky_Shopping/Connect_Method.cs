using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bluesky_Shopping
{
    public class Connect_Method
    {
        //string con = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BlueSky_Shopping;Persist Security Info=True;User ID=sa;Password=***********");
        

        SqlCommand cmd;
        SqlDataReader rd;// for execute reader

        public string ExecuteNonQueryfn(string a)
        {
           
            try
            {

                con.Close();
                cmd = new SqlCommand(a, con);
                con.Open();
                cmd.ExecuteNonQuery();
                string output = "True";
                return output;
            }
            catch (Exception er)
            {


                string output = er.ToString();
                return output;
            }
        }
        public string ExecuteScalarfn(string a)
        {
            string output = "";
            con.Close();
            cmd = new SqlCommand(a, con);
            con.Open();
            output = cmd.ExecuteScalar().ToString();

            return output;
        }
        public SqlDataReader ExecuteReaderfn(string a)
        {
            con.Close();
            cmd = new SqlCommand(a, con);
            con.Open();
            rd = cmd.ExecuteReader();

            return rd;
        }
    }
}