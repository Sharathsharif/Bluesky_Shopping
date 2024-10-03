using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Shoppers
{
    public partial class Shop_home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            string script = "alert('Logout Successful'); window.location.href='../Login/ShopLogin.aspx';";
            ScriptManager.RegisterStartupScript(this, GetType(), "LogoutScript", script, true);

        }
    }
}