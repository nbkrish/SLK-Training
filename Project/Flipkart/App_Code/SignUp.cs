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
public class SignUp
{
    SqlConnection mycon;
    SqlDataAdapter myadapter;
    SqlCommand mycmd;
    DataSet myds;
    string squery;
    string insert_query;
    string address;
    public SignUp()
    {
        //
        // TODO: Add constructor logic here
        //
        squery = ConfigurationManager.ConnectionStrings["FlipkartConnectionString1"].ConnectionString;
        mycon = new SqlConnection(squery);
    }
    
    public int signup(string fname, string lname, string phno, string pwd, string email, string addr, string landmark,string city, string state, string pincode)
    {
        
        address = addr + " " + landmark + " "+ city + " " + state;
    

        try
        {
            insert_query = "insert into customer(first_name, last_Name, phone_no, password, email_Id, address, zipcode) values('" + fname + "','" + lname + "','" + phno + "','" + pwd + "','" + email + "','" + address + "','" + pincode + "')";   // @fn, @ln, @pno, @pwd, @em, @add, @zip)";
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