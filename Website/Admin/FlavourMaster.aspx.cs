using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_FlavourMaster : System.Web.UI.Page
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
    protected void fvFlavour_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvFlavour.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Flavour Added Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void fvFlavour_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvFlavour.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Flavour Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void gvFlavour_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvFlavour.ChangeMode(FormViewMode.Edit);
        fvFlavour.DataBind();
    }
    protected void gvFlavour_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvFlavour.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Flavour Deleted Successfully! ";
            success.Style.Add("display", "block");

        }
    }
    protected void fvFlavour_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        TextBox txtfv = (TextBox)fvFlavour.FindControl("FNameTextBox");
        SqlCommand cmd = new SqlCommand("select * from FlavourMaster where FName = '" + txtfv.Text + "'  ", Global.con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            ClosrMessages();
            lblError.Text = "Flavour already exists!";
            error.Style.Add("display", "block");
            e.Cancel = true;
        }
    }
}