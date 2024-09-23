using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Login
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the current page name
            string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);

            // Remove 'active' class from all links initially

            userLoginLink.Attributes["class"] = "";
            shopLoginLink.Attributes["class"] = "";
            contactLink.Attributes["class"] = "";

            // Set 'active' class based on the current page
            switch (currentPage)
            {
                case "UserLogin.aspx":
                    userLoginLink.Attributes["class"] = "active";
                    break;
                case "ShopLogin.aspx":
                    shopLoginLink.Attributes["class"] = "active";
                    break;
                case "Contact.aspx":
                    contactLink.Attributes["class"] = "active";
                    break;
                default:
                    break;
            }
        }
    }
}