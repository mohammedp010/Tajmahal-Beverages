using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OfferMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("/Admin/AdminLogin.aspx");
        }

    }
    private void ClosrMessages()
    {
        error.Style.Add("display", "none");
        info.Style.Add("display", "none");
        success.Style.Add("display", "none");
        attention.Style.Add("display", "none");
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            GridView1.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Offer Added Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            GridView1.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Offer Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            GridView1.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Offer Deleted Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView1.ChangeMode(FormViewMode.Edit);
        FormView1.DataBind();
    }
}