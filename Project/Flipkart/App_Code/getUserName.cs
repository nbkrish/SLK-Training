using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for getUserName
/// </summary>
public class getUserName
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    string user_query;
    string name = "";
    public string sname;
    public int id;
    public getUserName()
    {
        //
        // TODO: Add constructor logic here
        //
        squery = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
        mycon = new SqlConnection(squery);
    }

    public string User(string email, out DataTable dt)
    {
        user_query = "select first_name from customer where email_Id = '" + email + "'";
        myadapter = new SqlDataAdapter(user_query, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "getUserName");

        dt = myds.Tables["getUserName"];

        if (dt.Rows.Count != 0)
        {
            foreach (DataRow row in dt.Rows)
            {
                name = row[0].ToString();
            }
            return name;

        }
        else
        {
            return name;
        }
    }

    public int Suser(string email, out DataTable dt)
    {
        user_query = "select seller_id from seller where email_Id = '" + email + "'";
        myadapter = new SqlDataAdapter(user_query, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "getsellerid");

        dt = myds.Tables["getsellerid"];

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
            return id;
        }
    }

    public string Sname(string email, out DataTable dt)
    {
        
        user_query = "select seller_name from seller where email_Id = '" + email + "'";
        myadapter = new SqlDataAdapter(user_query, mycon);
        myds = new DataSet();
        myadapter.Fill(myds, "getsellername");

        dt = myds.Tables["getsellername"];

        if (dt.Rows.Count != 0)
        {
            foreach (DataRow row in dt.Rows)
            {
                sname = row[0].ToString();
            }
            return sname;

        }
        else
        {
            return sname;
        }
    }
}