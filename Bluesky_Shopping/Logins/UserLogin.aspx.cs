using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Bluesky_Shopping.Logins.User
{
    public partial class UserLogin : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        Connect_Method cm = new Connect_Method();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Write("clicked");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            // signup button

            string fname = TextBox3.Text;
            string lname = TextBox4.Text;
            string gender = CheckBoxList1.SelectedValue;
            string mail = TextBox5.Text;
            string contact = TextBox6.Text;
            string pwd = TextBox7.Text;
            string add = TextBox9.Text;
            string state = DropDownList1.Text;
            if (CheckBox2.Checked)
            {
                string cmd = "select * from user_reg where Mail='" + mail + "'";
                ds=dm.Disconnect_FN(cmd);
                if (ds.Tables[0].Rows.Count>0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Email id you entered is already registered with us. please use another mail id or login with this registered mail')</script>");

                }
                if (ds.Tables[0].Rows.Count == 0)
                {
                    string cmd2 = "insert into user_reg values"; 
                    
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Please accept the terms and Condition')</script>");

            }

        }



        protected void LinkButton5_Click(object sender, EventArgs e)
        {
           // reset button

        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            //login button

            string mail = TextBox1.Text;
            string pwd = TextBox2.Text;
            if (CheckBox1.Checked)
            {

                string cmd = "select * from user_reg where Mail='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'  ";
                ds = dm.Disconnect_FN(cmd);
                if (ds.Tables[0].Rows.Count == 1)
                {
                    string currentuser = ds.Tables[0].Rows[0][4].ToString();
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
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Please accept the terms and Condition')</script>");

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ShopLogin.aspx");

        }
    }
}