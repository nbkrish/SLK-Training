using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Account_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnsignup_Click(object sender, EventArgs e)
    {


        SignUp cdl = new SignUp();
        int check;
        string city = ddcity.SelectedItem.Value;
        string state = ddstate.SelectedItem.Value;
        
        check = cdl.signup(tbfn.Text, tbln.Text, tbphno.Text, tbpswd.Text, tbemail.Text, tbaddr.Text,tblmark.Text, city, state, tbpcode.Text);
        if (check == 1)
        {
            tbfn.Text = "";
            tbln.Text = "";
            tbphno.Text = "";
            tbconpswd.Text = "";   
            tbemail.Text = "";
            tbaddr.Text = "";
            //ddcity.Text = "";
            //ddstate.SelectedValue = "Andhara Pradesh";
            tbaddr.Text = "";
            SignUpMsg.Text = "Signup Successfull";
            // System.Threading.Thread.Sleep(5000);
            // Response.Redirect("Cust_SignUp.aspx");
            // SU_Label.Text = "Signup Successfull";
        }
        else
        {
            SignUpMsg.Text = "Signup Failed";
        }
    }
           
    



    protected void btnLogin1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddcity.Items.Clear();
        if (ddstate.SelectedValue.Equals("Karnataka"))
        {
            ddcity.Items.Add("Bagalkot");
            ddcity.Items.Add("Bengaluru");
            ddcity.Items.Add("Belagavi");
            ddcity.Items.Add("Bellary");
            ddcity.Items.Add("Bidar");
            ddcity.Items.Add("Chamarajanagar");
            ddcity.Items.Add("Chikkaballapura");
            ddcity.Items.Add("Chikkamagaluru");
            ddcity.Items.Add("Chithradurga");
            ddcity.Items.Add("Dakshina Kannada");
            ddcity.Items.Add("Davanagere");
            ddcity.Items.Add("Dharwad");
            ddcity.Items.Add("Gadag");
            ddcity.Items.Add("Kalaburgi");
            ddcity.Items.Add("Hassan");
            ddcity.Items.Add("Haveri");
            ddcity.Items.Add("Kodagu");
            ddcity.Items.Add("Kolar");
            ddcity.Items.Add("Koppal");
            ddcity.Items.Add("Mandya");
            ddcity.Items.Add("Mysuru");

        }
    }
}