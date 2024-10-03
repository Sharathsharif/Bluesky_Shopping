﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Admin
{
    public partial class Allsellerlist : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet DS = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            showgrid();

            }
        }
        public void showgrid()
        {
            string cmd = "select * from shop_reg where Account='shop'";
            DS = dm.Disconnect_FN(cmd);
            GridView1.DataSource = DS;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Approve")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowIndex];
                string id = row.Cells[0].Text;

                string cmd = "update shop_reg set Approve='Approve' where Sho_Id='" + id + "'";
                dm.Disconnect_FN(cmd);
                showgrid();

            }
            if (e.CommandName=="Reject")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowIndex];
                string id = row.Cells[0].Text;

                string cmd = "update shop_reg set Approve='Reject' where Sho_Id='" + id + "'";
                dm.Disconnect_FN(cmd);

                showgrid();

            }
        }
    }
}