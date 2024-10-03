using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.User2
{
    public partial class Home : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        DataSet DS = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel1.Visible = true;


                // Dynamically set the image URL
                //ImageBanner.ImageUrl = "~/images/banner4.jpg";

                // Dynamically set text for the heading and paragraph
                LiteralEditorPick.Text = "Editor's";
                LiteralPick.Text = "Pick";
                LiteralMessage.Text = "Express your style now.";


                showmobile();
            }
        }

        public void showmobile()
        {
            string cmd = " select * from Products where Status='Active' ";
            DS = dm.Disconnect_FN(cmd);
            DataList2.DataSource = DS;
            DataList2.DataBind();
        }
    }
}