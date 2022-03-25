using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_CityMaster : System.Web.UI.Page
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
    protected void fvCity_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvCity.DataBind();
            ClosrMessages();
            lblSuccess.Text = "City Added Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void fvCity_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvCity.DataBind();
            ClosrMessages();
            lblSuccess.Text = "City Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void gvCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvCity.ChangeMode(FormViewMode.Edit);
        fvCity.DataBind();
    }
    protected void gvCity_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        gvCity.DataBind();
        ClosrMessages();
        lblSuccess.Text = "City Deleted Successfully! ";
        success.Style.Add("display", "block");
    }
    protected void fvCity_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        TextBox txtcity = (TextBox)fvCity.FindControl("CityNameTextBox");
        SqlCommand cmd = new SqlCommand("select * from CityMaster where CityName = '" + txtcity.Text + "'  ", Global.con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            ClosrMessages();
            lblError.Text = "City already exists!";
            error.Style.Add("display", "block");
            e.Cancel = true;
        }
    }
}