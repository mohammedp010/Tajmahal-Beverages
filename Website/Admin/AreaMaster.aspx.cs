using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AreaMaster : System.Web.UI.Page
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
    protected void fvArea_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvArea.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Area Added Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void fvArea_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvArea.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Area Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void gvArea_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvArea.ChangeMode(FormViewMode.Edit);
        fvArea.DataBind();
    }
    protected void gvArea_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        gvArea.DataBind();
        ClosrMessages();
        lblSuccess.Text = "Area Deleted Successfully! ";
        success.Style.Add("display", "block");
    }
}