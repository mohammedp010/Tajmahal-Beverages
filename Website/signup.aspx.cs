using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Global.con.Open();
            SqlCommand cmd3 = new SqlCommand("ClientSignUp", Global.con);
            cmd3.CommandType = CommandType.StoredProcedure;
            //SqlCommand cmd1 = new SqlCommand("insert into RegistrationDetails (FullName,Email,MobileNo,Password) values ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtMobile.Text + "','" + txtPass.Text + "')", Global.con);

            SqlCommand cmd2 = new SqlCommand("select Email from RegistrationDetails where Email='" + txtEmail.Text + "'", Global.con);
            SqlCommand cmd4 = new SqlCommand("select MobileNo from RegistrationDetails where MobileNo='" + txtMobile.Text + "'", Global.con);


            cmd2.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            SqlDataAdapter adp2 = new SqlDataAdapter(cmd4);
            DataSet ds2 = new DataSet();
            adp2.Fill(ds2);
            SqlDataAdapter adp1 = new SqlDataAdapter(cmd2);
            DataSet ds1 = new DataSet();
            adp1.Fill(ds1);

            //Response.Redirect("Login.aspx");

            if (ds1.Tables[0].Rows.Count > 0)
            {

                ClientScript.RegisterStartupScript(GetType(), "Opps!", "alert('Email already exits')", true);
            }
            else if (ds2.Tables[0].Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "Opps!", "alert('Mobile number already exists')", true);
            }
            else if (txtPass.Text != txtCnfPass.Text)
            {
                ClientScript.RegisterStartupScript(GetType(), "Opps!", "alert('Passwords do not match!')", true);
            }
            else
            {

                cmd3.Parameters.AddWithValue("@FullName", txtName.Text).DbType = DbType.String;
                cmd3.Parameters.AddWithValue("@Email", txtEmail.Text).DbType = DbType.String;
                cmd3.Parameters.AddWithValue("@MobileNo", txtMobile.Text).DbType = DbType.String;
                //cmd1.Parameters.AddWithValue("@Username", txtUsername.Text).DbType = DbType.String;
                cmd3.Parameters.AddWithValue("@Pwd", txtPass.Text).DbType = DbType.String;

                cmd3.ExecuteNonQuery();
                //Session["UserID"] = ds.Tables[0].Rows[0]["RId"].ToString();
                //Session["Username"] = ds.Tables[0].Rows[0]["Username"].ToString();
                //Response.Redirect("Product.aspx");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Done!", "swal('Now!', 'Login to proceed!', 'success'); window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
            
        }
        catch (Exception ex)
        {

        }
        finally
        {
            if (Global.con.State == ConnectionState.Open)
            {
                Global.con.Close();
            }
        }
    }
}