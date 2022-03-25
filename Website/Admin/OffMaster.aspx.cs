using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_OffMaster : System.Web.UI.Page
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
    protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        TextBox txtfv = (TextBox)FormView1.FindControl("TextBox1");
        SqlCommand cmd = new SqlCommand("select * from OfferDetails where OffName = '" + txtfv.Text + "'  ", Global.con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            ClosrMessages();
            lblError.Text = "Offer already exists!";
            error.Style.Add("display", "block");
            e.Cancel = true;
        }
    }
}