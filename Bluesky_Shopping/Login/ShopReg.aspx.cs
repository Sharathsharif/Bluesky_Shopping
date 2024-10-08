﻿using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Login
{
    public partial class ShopReg : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        Connect_Method cm = new Connect_Method();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {

            string shopname = TextBox1.Text;
            string shopmail = TextBox2.Text;
            string Contact = TextBox3.Text;
            string Address = TextBox4.Text;
            string category = DropDownCategory.Text;
            string Name = TextBox5.Text;
            string PersoanalEmail = TextBox6.Text;
            string Gender = RadioButtonListGender.Text;
            string dob = TextBox7.Text;
            string pwd = TextBox8.Text;

            string cmd = "select * from shop_reg where Shop_Mail='" + shopmail + "'";
            ds = dm.Disconnect_FN(cmd);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Email id you entered is already registered with us. please use another mail id or login with this registered mail')</script>");

            }
            if (ds.Tables[0].Rows.Count == 0)
            {
                string cmd2 = "exec shopreg'" + shopname + "','" + shopmail + "','" + Contact + "','" + Address + "','" + category + "','" + Name + "','" + PersoanalEmail + "','" + Gender + "','" + dob + "','" + pwd + "' ";
                dm.Disconnect_FN(cmd2);
                createuserfolder(shopmail);

                Response.Redirect("ShopLogin.aspx");
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Registered Successfull')</script>");


            }

        }
        private void createuserfolder( string foldername)
        {
            //to Locate the path
            string imgfolderpath = Server.MapPath("~/ProductImg/" + foldername);

            // Check if the folder already exists
            if (!Directory.Exists(imgfolderpath))
            {
                // to create the folder
                Directory.CreateDirectory(imgfolderpath);
            }
        }
    }
}