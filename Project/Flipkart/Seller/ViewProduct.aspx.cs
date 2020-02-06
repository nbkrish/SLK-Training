using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seller_ViewProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddProduct.aspx");
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}