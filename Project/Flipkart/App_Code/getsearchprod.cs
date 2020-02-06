using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.ClientServices;
using System.Configuration;
/// <summary>
/// Summary description for getUname
/// </summary>


/// <summary>
/// Summary description for Class1
/// </summary>
public class getsearchprod
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    string user_query;
    public int id = 0;
    public getsearchprod()
    {
        squery = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
        mycon = new SqlConnection(squery);
    }
    public int getsid(string search, out DataTable dt)
    {//select sub_category_id from sub_category where category_id ='" + fid + "' ";
        user_query = "select sub_category_id from sub_category where sub_category_name = '" + search + "'";
        myadapter = new SqlDataAdapter(user_query, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "searchvalue");

        dt = myds.Tables["searchvalue"];

        if (dt.Rows.Count != 0)
        {
            foreach (DataRow row in dt.Rows)
            {
                id = int.Parse(row[0].ToString());
            }
            return id;

        }
        else
        {
            return 0;
        }

    }
}