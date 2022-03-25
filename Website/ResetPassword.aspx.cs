using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


public partial class ResetPassword : System.Web.UI.Page
{
    
    string GUIDvalue;
    DataTable dt = new DataTable();
    int Uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        //using (Global.con)
		{
			GUIDvalue = Request.QueryString["Uid"];
			if (GUIDvalue != null)
			{
				SqlCommand cmd = new SqlCommand("select * from ForgotPassReq where FgId='" + GUIDvalue + "'", Global.con);
				Global.con.Open();
				SqlDataAdapter sda = new SqlDataAdapter(cmd);
				sda.Fill(dt);
				if (dt.Rows.Count != 0)
				{
					Uid = Convert.ToInt32(dt.Rows[0][1]);
				}
				else
				{
					Response.Write("<script>alert('Your Password Reset Link is Expired or Invalid !');</script>");
				}
			}
			else
			{
				Response.Redirect("ForgotPass.aspx");
			}
		}
		if (!IsPostBack)
		{
			if (dt.Rows.Count != 0)
			{
				txtPass.Visible = true;
				txtcnfPass.Visible = true;
				btnSend.Visible = true;
			}
			else
			{
				Response.Write("<script>alert('Your Password Reset Link is Expired or Invalid !');</script>");
			}
		}
        Global.con.Close();
    
	}
    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (txtPass.Text != "" && txtcnfPass.Text != "" && txtPass.Text == txtcnfPass.Text)
        {
            //using (Global.con)
            {
                Global.con.Open();
                SqlCommand cmd = new SqlCommand("update RegistrationDetails set Pwd='" + txtPass.Text + "' where Rid='" + Uid + "'", Global.con);
                Global.con.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmd2 = new SqlCommand("delete from ForgotPassReq where Rid='" + Uid + "'", Global.con);
                cmd2.ExecuteNonQuery();
                Response.Write("<script>alert('Password Successfully Changed');</script>");
                Response.Write("<script>setTimeout(() => window.open('Login.aspx'), 1000);</script>");
                
            }
        }
        else
        {
            Response.Write("<script>alert('All fields are mandatory');</script>");
        }
        Global.con.Close();
    }
}
    
