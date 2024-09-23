using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Login
{
    public partial class userreg : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        Connect_Method cm = new Connect_Method();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            string fname = TextBox1.Text;
            string lname = TextBox2.Text;
            string gender = RadioButtonListGender.SelectedValue;
            string dob = TextBox3.Text;
            string mail = TextBox4.Text;
            string contact = TextBox5.Text;
            string add = TextBox6.Text;
            string pwd = TextBox7.Text;
            string cmd = "select * from user_reg where Mail='" + mail + "'";
            ds = dm.Disconnect_FN(cmd);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Email id you entered is already registered with us. please use another mail id or login with this registered mail')</script>");

            }
            if (ds.Tables[0].Rows.Count == 0)
            {
                string cmd2 = "exec userreg'"+fname+ "','" + lname + "','" + gender + "','" + dob + "','" + mail + "','" + contact + "','" + add + "','" + pwd + "' ";
                dm.Disconnect_FN(cmd2);
                Response.Redirect("UserLogin.aspx");
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Registered Successfull')</script>");


            }

        }
    }
}