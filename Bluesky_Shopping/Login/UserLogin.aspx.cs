using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Login
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        Connect_Method cm = new Connect_Method();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Login Button

            string mail = TextBox1.Text;
            string pwd = TextBox2.Text;
            string cmd = "select * from user_reg where Mail='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'  ";
            ds = dm.Disconnect_FN(cmd);
            if (ds.Tables[0].Rows.Count == 1)
            {
                string currentuser = ds.Tables[0].Rows[0][5].ToString();
                Session["CurrentUser"] = currentuser;
                Response.Redirect("~/Users/Home.aspx");
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Login successfull')</script>");
            }
            else
            {
                string cmd2 = "select * from user_reg where Mail='" + TextBox1.Text + "'  ";
                ds = dm.Disconnect_FN(cmd2);
                if (ds.Tables[0].Rows.Count == 1)
                {

                    ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Invalid MailId or Password')</script>");
                }
                else
                {

                    ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Email id you entered is Not registered with us!! Please Register!!!')</script>");
                }

            }
        }
    }
}