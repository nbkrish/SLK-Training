using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Account_Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Login lObj = new Login();
        DataTable d = new DataTable();
        int check;
        string username;
        check = lObj.log_in(tbemail.Text, tbpswd.Text, out d);
        if (check == 1)
        {
            getUserName gun = new getUserName();
            username = gun.User(tbemail.Text, out d);
            Session["username"] = username;
            tbemail.Text = "";
            tbpswd.Text = "";
            Response.Redirect("~/MainPage/HomePage.aspx");
        }
        else
        {
            LoginMsg.Text = "Enter Valid Credentials";
        }
    }

}
