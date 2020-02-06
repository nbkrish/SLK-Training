using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Seller_AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnaddprod_Click(object sender, EventArgs e)
    {
        string path = "";
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/Images/" + FileUpload1.FileName);
            path = "/Images/" + FileUpload1.FileName;
            //lblmsg.Text = FileUpload1.FileName + " upload done";
        }
        string con;
        con = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
        using (SqlConnection mycon = new SqlConnection(con))
        {
            //insert into Product values(100, 100, 'OnePlus7t', 'Never Settle', 40000.0, 2, '/Images/P1.jpg');
            SqlCommand cmd = new SqlCommand("insert into Product values('" + Session["SellerUserid"] + "','" + tbscid.Text + "','" + tbpn.Text + "','" + tbpdesc.Text + "','" + tbprice.Text + "','" + tbq.Text + "','" + path + "')", mycon);
            mycon.Open();
            cmd.ExecuteNonQuery();
            //lblMsg.Text = "Successfully registered";
            Response.Redirect("SellerHome.aspx");

        }
    }
}