using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MainPage_HomePage : System.Web.UI.Page
{
    public int id;
    string squery;
    string imageControl;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("Select img, product_name, product_Desc,product_price from Product", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dlProducts.DataSource = dt;
                    dlProducts.DataBind();
                }
            }
        }

        if (Session["username"] != null)
        {
            lblWelcome.Text = "Welcome " + Session["username"].ToString();
        }
        else
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("~/Account/Login.aspx");
    }

    protected void btncart_Click(object sender, EventArgs e)
    {

        Response.Redirect("Cart.aspx");
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        getsearchprod gspobj = new getsearchprod();
        id = gspobj.getsid(tbsearch.Text, out dt);
        Response.Write(id);
        Session["sid"] = id;
        if (id != 0)
        {
            Response.Redirect("AfterSearch.aspx");
        }
    }
}