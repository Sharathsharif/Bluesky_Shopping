using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bluesky_Shopping.Shoppers
{
    public partial class Sell_Product : System.Web.UI.Page
    {
        Disconnect_Method dm = new Disconnect_Method();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string user = Session["CurrentUser"].ToString();
            string category = DropDownList1.SelectedValue;
            string Product_Name = TextBox1.Text;
            string Product_Price = TextBox2.Text;
            string Original_Price = TextBox3.Text;
            string Description = TextBox4.Text;
            string stock = TextBox5.Text;
            string img1="";
            string img2= "";
            string img3 = "";
            string Status = "Active";


            // Generate unique file names using a timestamp
            string timestamp = DateTime.Now.ToString("yyyyMMddHHmmssfff");

            //To locate the path
            string path1 = Server.MapPath("~/ProductImg/" + user + "/" + category + "_" + Product_Name + "_" + timestamp + "_" + "1" + "_" + FileUpload1.FileName);

            string path2 = Server.MapPath("~/ProductImg/" + user + "/" + category + "_" + Product_Name + "_" + timestamp + "_" + "2" + "_" + FileUpload1.FileName);
            string path3 = Server.MapPath("~/ProductImg/" + user + "/" + category + "_" + Product_Name + "_" + timestamp + "_" + "3" + "_" + FileUpload1.FileName);

            if (FileUpload1.HasFile)
            {
                //To save the file in folder
                FileUpload1.SaveAs(path1);
                // this will allocate the path in variable to sent the path to database if exisit (we have not included the server.mappath bcz it is not needed )
                img1 = "~/ProductImg/" + user + "/" + category + "_" + Product_Name + "_" + timestamp + "_" + "1" + "_" + FileUpload1.FileName;
            }
            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(path2);
                img2 = "~/ProductImg/" + user + "/" + category + "_" + Product_Name + "_" + timestamp + "_" + "2" + "_" + FileUpload1.FileName;
            }

            if (FileUpload3.HasFile)
            {
                //To save the file in folder
                FileUpload3.SaveAs(path3);
                img3 = "~/ProductImg/" + user + "/" + category + "_" + Product_Name + "_" + timestamp + "_" + "3" + "_" + FileUpload1.FileName;
            }
            

            string cmd = "insert into Products values ('"+category+ "', '" + Product_Name + "','" + Product_Price + "','" + Original_Price + "','" + Description + "','" + user + "','" + stock + "','" + img1 + "','" + img2 + "','" + img3 + "','"+Status+"')";

           string result= dm.insert(cmd);
            if (result == "true")
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Product Published Successfull')</script>");

            }
            if (result == "false")
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(' Product Not Published Successfull, Please Try again later')</script>");

            }

        }
    }
}