using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtUsername.Text = "";
            
        }
        Session.Clear();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    SqlCommand cmd = new SqlCommand("AdminLoginCheck", Global.con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@Username", txtUsername.Text).DbType = DbType.String;
        //    cmd.Parameters.AddWithValue("@Password", txtPass.Text).DbType = DbType.String;
        //    SqlDataAdapter adp = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    adp.Fill(ds);

        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
               
        //        Session["UserID"] = ds.Tables[0].Rows[0]["UserId"].ToString();
        //        Session["Username"] = ds.Tables[0].Rows[0]["Username"].ToString();
        //        Response.Redirect("ProductMaster.aspx");
        //        //Server.Transfer("ProductMaster.aspx");
        //    }
        //    else
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "Opps!", "alert('Invalid Password')", true);
        //    }
        //}
        //catch (Exception ex)
        //{
        //}
        //finally
        //{
        //    if (Global.con.State == ConnectionState.Open)
        //        Global.con.Close();
        //}
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd1 = new SqlCommand("AdminLoginCheck", Global.con);
            SqlCommand cmd2 = new SqlCommand("select * from UserDetail where Username='"+txtUsername.Text+"' ", Global.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Username", txtUsername.Text).DbType = DbType.String;
            cmd1.Parameters.AddWithValue("@Password", txtPass.Text).DbType = DbType.String;
            SqlDataAdapter adp = new SqlDataAdapter(cmd2);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {

                Session["UserID"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                Session["Username"] = ds.Tables[0].Rows[0]["Username"].ToString();
                //Response.Redirect("ProductMaster.aspx");
                Response.Write("<script>setTimeout(() => window.open('ProductMaster.aspx'), 1000);</script>");
                //Server.Transfer("ProductMaster.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "Opps!", "alert('Invalid Password')", true);
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