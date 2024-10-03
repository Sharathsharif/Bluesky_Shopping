using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            string user = Session["CurrentUser"].ToString();
            Label2.Text = user;

            }
            catch (Exception)
            {

                Response.Redirect("~/Errors/loginagain.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Login/UserLogin.aspx");
        }
    }
}