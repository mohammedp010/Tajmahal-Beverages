using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OfferMaster : System.Web.UI.Page
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
    protected void fvOffer_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvOffer.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Offer Added Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void fvOffer_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvOffer.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Offer Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void gvOffer_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvOffer.ChangeMode(FormViewMode.Edit);
        fvOffer.DataBind();
    }
    protected void dsOffer_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        FileUpload fuImagePath = (FileUpload)fvOffer.FindControl("FileUpload1");
        string strGuID = Guid.NewGuid().ToString();

        if (fuImagePath.HasFile)
        {
            String extn = System.IO.Path.GetExtension(fuImagePath.PostedFile.FileName).ToLower();
            if (extn.Equals(".jpg") || extn.Equals(".jpeg") || extn.Equals(".gif") || extn.Equals(".png"))
            {
                String f1 = System.IO.Path.GetFileNameWithoutExtension(fuImagePath.PostedFile.FileName);
                string savefile1 = Server.MapPath("../OfferImages/") + f1 + strGuID + extn;
                string strPhoto = "OfferImages/" + f1 + strGuID + extn;
                fuImagePath.SaveAs(savefile1);

                e.Command.Parameters["@ImagePath"].Value = strPhoto;
            }
            else
            {
                fuImagePath.Focus();
                e.Cancel = true;
            }
        }
    }
    protected void gvOffer_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvOffer.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Offer Deleted Successfully! ";
            success.Style.Add("display", "block");
        }
    }
}