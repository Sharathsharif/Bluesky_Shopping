using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Admin
{
    public partial class Home : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            sellerlist();
            userlist();
            ActiveProduct();

            
        }
        public void sellerlist()
        {
            string cmd = "Select * from shop_reg where Approve= 'Approved'and Account='shop'";
            ds = dm.Disconnect_FN(cmd);

            if (ds != null && ds.Tables.Count > 0)
            {
                int rowCount = ds.Tables[0].Rows.Count;
                string totalRows = rowCount.ToString();
                Label1.Text = totalRows;
            }
            else
            {
                Console.WriteLine("No data found.");
            }
        }

        public void userlist()
        {
            ds.Clear();

            string cmd = "Select * from user_reg ";
            ds = dm.Disconnect_FN(cmd);

            if (ds != null && ds.Tables.Count > 0)
            {
                int rowCount = ds.Tables[0].Rows.Count;
                string totalRows = rowCount.ToString();
                Label2.Text = totalRows;
            }
            else
            {
                Console.WriteLine("No data found.");
            }
        }
        public void ActiveProduct()
        {
            ds.Clear();
            string cmd = "Select * from Products where Status='Active' ";
            ds = dm.Disconnect_FN(cmd);

            if (ds != null && ds.Tables.Count > 0)
            {
                int rowCount = ds.Tables[0].Rows.Count;
                string totalRows = rowCount.ToString();
                Label3.Text = totalRows;
            }
            else
            {
                Console.WriteLine("No data found.");
            }
        }

    }
}