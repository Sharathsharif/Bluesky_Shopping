using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Shoppers
{
    public partial class ContactUs : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet DS = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string user = Session["CurrentUser"].ToString();
            string sub = TextBox2.Text;
            string brief = TextBox1.Text;
            string cmd = "insert into Shop_Query values ('" + user + "', '" + sub + "', '" + brief + "', '" + "Pending" + "')";
            DS = dm.Disconnect_FN(cmd);

            TextBox1.Text = TextBox2.Text = "";
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Submitted Successfully')</script>");

        }
    }
}