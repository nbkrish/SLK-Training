using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Seller_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SellerLogin lObj = new SellerLogin();
        DataTable d = new DataTable();
        int check;
        string username;
        int Userid;
        check = lObj.log_in(tbemail.Text, tbpswd.Text, out d);
        if (check == 1)
        {

            getUserName gun = new getUserName();
            Userid = gun.Suser(tbemail.Text, out d);
            username = gun.Sname(tbemail.Text, out d);
            Session["username"] = username;
            tbemail.Text = "";
            tbpswd.Text = "";
            Session["SellerUserid"] = Userid;
            Response.Redirect("~/Seller/SellerHome.aspx");
        }
        else
        {
            LoginMsg.Text = "Enter Valid Credentials";
        }
    }
}
