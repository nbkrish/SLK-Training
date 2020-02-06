using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class MainPage_AfterSearch : System.Web.UI.Page
{
    public int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        int scid;
        getsearchprod obj = new getsearchprod();
        scid = int.Parse(Session["sid"].ToString());
        
        if (!this.IsPostBack)
        {
            string constr = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("Select img, product_name, product_Desc,product_price from Product where sub_category_id='" + scid + "'", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    Searchprod.DataSource = dt;
                    Searchprod.DataBind();
                }
            }
        }
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

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/Login.aspx");
    }
}


