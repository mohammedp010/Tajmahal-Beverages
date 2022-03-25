using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_CategotyMaster : System.Web.UI.Page
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



    protected void fvCat_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvCat.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Category Added Successfully! ";
            success.Style.Add("display", "block");

        }
        

    }
    protected void fvCat_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvCat.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Category Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void gvCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvCat.ChangeMode(FormViewMode.Edit);
        fvCat.DataBind();
    }

    protected void gvCat_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvCat.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Category Deleted Successfully! ";
            success.Style.Add("display", "block");

        }
    }
    protected void fvCat_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        TextBox txtcat = (TextBox)fvCat.FindControl("CatNameTextBox");
        SqlCommand cmd = new SqlCommand("select * from CategoryMaster where CatName = '"+txtcat.Text+"'  ", Global.con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            ClosrMessages();
            lblError.Text = "Category already exists!";
            error.Style.Add("display", "block");
            e.Cancel = true;
        }
    }
}
