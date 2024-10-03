using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Admin
{
    public partial class Users : System.Web.UI.Page
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
            string cmd = "select * from user_reg ";
            DS = dm.Disconnect_FN(cmd);
            GridView1.DataSource = DS;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }
    }
}