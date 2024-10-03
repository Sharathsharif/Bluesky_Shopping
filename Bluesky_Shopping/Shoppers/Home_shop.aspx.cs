using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Bluesky_Shopping.Shoppers
{
    public partial class Home_shop : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet DS= new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            showgrid();

            }
        }

        public void showgrid()
        {
            string Currentuser = Session["CurrentUser"].ToString();
            string cmd = "Select * from Products where Seller= '" + Currentuser + "' ";
            DS = dm.Disconnect_FN(cmd);
            GridView1.DataSource = DS;
            GridView1.DataBind();
        }

        protected void edit(object sender, CommandEventArgs e)
        {
           
            showgrid();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            showgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;

            showgrid();

        }

    }
}