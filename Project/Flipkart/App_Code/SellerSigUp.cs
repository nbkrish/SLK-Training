using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for SignUp
/// </summary>
public class SellerSignUp
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    string insert_query;
   
    public SellerSignUp()
    {
        //
        // TODO: Add constructor logic here
        //
        squery = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
        mycon = new SqlConnection(squery);
    }

    public int signup(string fname, string pwd, string phno, string email, string acnt, string ifsc, string gstin)
    {
        

        try
        {
            insert_query = "insert into seller(seller_name, password, phone_no, email_Id, account_no, ifsc_code,gstin) values('" + fname + "','" + pwd + "','" + phno + "','" + email + "','" + acnt + "','" + ifsc + "','" + gstin + "')";   // @fn, @ln, @pno, @pwd, @em, @add, @zip)";
            mycmd = new SqlCommand(insert_query, mycon);


            mycmd.Connection.Open();
            mycmd.ExecuteNonQuery();
            mycmd.Connection.Close();
            return 1;
        }
        catch (Exception)
        {
            return 0;
        }
    }
}