using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Logins
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Handle login logic here
            string email = TextBox1.Text;
            string password = TextBox2.Text;

            // Perform login validation here
            // Redirect if successful
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            // Handle sign up logic here
            string firstName = TextBox3.Text;
            string email = TextBox5.Text;
            string password = TextBox7.Text;

            // Insert new user into the database here
            // Redirect if successful
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // Logic for User Login
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            // Logic for Shop Login
        }
    }
}