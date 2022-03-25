using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_UserMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    private void ClosrMessages()
    {
        error.Style.Add("display", "none");
        info.Style.Add("display", "none");
        success.Style.Add("display", "none");
        attention.Style.Add("display", "none");
    }
    protected void fvUser_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvUser.DataBind();
            ClosrMessages();
            lblSuccess.Text = "New Admin Added Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void fvUser_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvUser.DataBind();
            ClosrMessages();
            lblSuccess.Text = " Admin Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void gvUser_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvUser.ChangeMode(FormViewMode.Edit);
        fvUser.DataBind();
    }
    protected void gvUser_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvUser.DataBind();
            ClosrMessages();
            lblSuccess.Text = " Admin Deleted Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void fvUser_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        TextBox txtus = (TextBox)fvUser.FindControl("UsernameTextBox");
        SqlCommand cmd = new SqlCommand("select * from UserDetail where Username = '" + txtus.Text + "'  ", Global.con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            ClosrMessages();
            lblError.Text = "User already exists!";
            error.Style.Add("display", "block");
            e.Cancel = true;
        }
    }
}