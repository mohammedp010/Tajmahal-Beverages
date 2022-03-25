using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_StateMaster : System.Web.UI.Page
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
    protected void fvState_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvState.DataBind();
            ClosrMessages();
            lblSuccess.Text = "State Added Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void fvState_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvState.DataBind();
            ClosrMessages();
            lblSuccess.Text = "State Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void gvState_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvState.ChangeMode(FormViewMode.Edit);
        fvState.DataBind();
    }
    protected void gvState_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvState.DataBind();
            ClosrMessages();
            lblSuccess.Text = "State Deleted Successfully! ";
            success.Style.Add("display", "block");
        }
    }
}