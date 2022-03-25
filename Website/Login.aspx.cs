using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void transfer()
    {
        Server.Transfer("Product.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd1 = new SqlCommand("ClientLoginCheck", Global.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Email", txtEmail.Text).DbType = DbType.String;
            cmd1.Parameters.AddWithValue("@Pwd", txtPassword.Text).DbType = DbType.String;
            cmd1.Parameters.AddWithValue("@MobileNo", txtEmail.Text).DbType = DbType.String;
            SqlDataAdapter adp = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                //ClientScript.RegisterStartupScript(GetType(), "Opps!", "alert('Login Successfully!')", true);
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Done!", "swal('Welcome!', 'Login Sucessful!', 'success'); window.location='" + Request.ApplicationPath + "Product.aspx';", true);
                //ClientScript.RegisterStartupScript(GetType(), "Done!", "swal('Done!', 'Login Successfull!', 'success'); window.location='"+Request.ApplicationPath + "Product.aspx';", true);
                
                Session["UserID"] = ds.Tables[0].Rows[0]["RId"].ToString();
                Session["Username"] = ds.Tables[0].Rows[0]["Username"].ToString();
                Response.Redirect("Product.aspx");
                //transfer();
                //Server.Transfer("ProductMaster.aspx");
            }

            else
            {
                ClientScript.RegisterStartupScript(GetType(), "Opps!", "swal('Oops!', 'Invalid Email or Password!', 'error')", true);
            }
        }
        catch (Exception ex)
        {
        }
        finally
        {
            if (Global.con.State == ConnectionState.Open)
                Global.con.Close();
        }
    }
}