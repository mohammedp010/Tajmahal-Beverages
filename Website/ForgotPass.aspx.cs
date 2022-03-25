using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;



public partial class ForgotPass : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        //String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(CS))
		{
            
			SqlCommand cmd = new SqlCommand("select * from RegistrationDetails where Email='" + txtEmail.Text + "'", Global.con);
            
			SqlDataAdapter sda = new SqlDataAdapter(cmd);
			DataTable dt = new DataTable();
			sda.Fill(dt);
			if (dt.Rows.Count != 0)
			{
				String myGUID = Guid.NewGuid().ToString();
				int Uid = Convert.ToInt32(dt.Rows[0][0]);
                Global.con.Open();
				SqlCommand cmd1 = new SqlCommand("insert into ForgotPassReq values('" + myGUID + "','" + Uid + "',getdate())", Global.con);
                
				cmd1.ExecuteNonQuery();
				//send email
				
					String ToEmailAddress = dt.Rows[0][4].ToString();
					String Username = dt.Rows[0][1].ToString();
					String EmailBody = "Hi " + Username + ",<br/><br/> Click the link below to reset your password <br/><br/> http://localhost:24820/ResetPassword.aspx?Uid=" + myGUID;
					MailMessage PassRecMail = new MailMessage("patrawala786110@gmail.com", txtEmail.Text);
					PassRecMail.Body = EmailBody;
					PassRecMail.IsBodyHtml = true;
					PassRecMail.Subject = "Reset Password";
					PassRecMail.Priority = MailPriority.High;
					SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
					SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
					SMTP.UseDefaultCredentials = false;
					SMTP.Credentials = new NetworkCredential()
					{
						UserName = "patrawala786110@gmail.com",
						Password = "Thegreat@890"
					};
					SMTP.EnableSsl = true;
					SMTP.Send(PassRecMail);
					Response.Write("<script>alert('Check your email to reset your password.');</script>");
					txtEmail.Text = "";
                    Global.con.Close();
				}
                //catch (Exception)
                //{
                //    Response.Write("<script>alert('Message not sent !');</script>");
                //}
                //finally
                //{
                //    if (Global.con.State == ConnectionState.Open)
                //        Global.con.Close();
                //}
			
			else
			{
				Response.Write("<script>alert('OOPS This email id DOES NOT  exist in our database !');</script>");
			}
		}
	}
}

    