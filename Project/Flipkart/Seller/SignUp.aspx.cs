using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seller_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsignup_Click(object sender, EventArgs e)
    {
        SellerSignUp cdl = new SellerSignUp();
        int check;
     

        check = cdl.signup(tbfn.Text, tbpswd.Text, tbphno.Text, tbemail.Text, tbacnt.Text, tbifsc.Text, tbgstin.Text);
        if (check == 1)
        {
            tbfn.Text = "";
            
            tbphno.Text = "";
            tbconpswd.Text = "";
            tbemail.Text = "";
            tbacnt.Text = "";
            
            tbifsc.Text = "";
            tbifsc.Text = "";
            Response.Redirect("Login.aspx");
            // System.Threading.Thread.Sleep(5000);
            // Response.Redirect("Cust_SignUp.aspx");
            // SU_Label.Text = "Signup Successfull";
        }
        else
        {
            SignUpMsg.Text = "Signup Failed";
        }
    }
}