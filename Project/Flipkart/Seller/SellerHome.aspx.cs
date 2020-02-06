using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seller_SellerHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Selleruserid"]!= null)
        {
            Label1.Text= "Welcome "+ Session["username"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    

    protected void btnadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddProduct.aspx");
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["Selleruserid"] = null;
        Response.Redirect("Login.aspx");
    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewProduct.aspx");
    }
}