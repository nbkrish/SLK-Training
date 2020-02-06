using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for Login
/// </summary>
public class SellerLogin
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    string log_query;
    string address;
    public SellerLogin()
    {
        //
        // TODO: Add constructor logic here
        //

        squery = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
        mycon = new SqlConnection(squery);
    }

    public int log_in(string email, string pwd, out DataTable dt)
    {

        log_query = "select email_Id from seller where email_Id = '" + email + "' and password = '" + pwd + "'";
        //mycmd = new SqlCommand(log_query, mycon);
        //mycmd.Connection.Open();
        myadapter = new SqlDataAdapter(log_query, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "Login");

        dt = myds.Tables["Login"];

        if (dt.Rows.Count != 0)
        {
            return 1;

        }
        else
        {
            return 0;
        }
    }
}