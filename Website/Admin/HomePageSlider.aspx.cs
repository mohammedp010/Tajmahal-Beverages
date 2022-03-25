using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePageSlider : System.Web.UI.Page
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
    protected void fvHomePageSlider_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvHomePageSlider.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Image Added Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void fvHomePageSlider_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvHomePageSlider.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Image Updated Successfully! ";
            success.Style.Add("display", "block");
        }
    }
    protected void gvHomePageSlider_SelectedIndexChanged(object sender, EventArgs e)
    {
        fvHomePageSlider.ChangeMode(FormViewMode.Edit);
        fvHomePageSlider.DataBind();
    }
    protected void dsHomePageSlider_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        FileUpload fuImagePath = (FileUpload)fvHomePageSlider.FindControl("fuHomeSlider");
        string strGuID = Guid.NewGuid().ToString();

        if (fuImagePath.HasFile)
        {
            String extn = System.IO.Path.GetExtension(fuImagePath.PostedFile.FileName).ToLower();
            if (extn.Equals(".jpg") || extn.Equals(".jpeg") || extn.Equals(".gif") || extn.Equals(".png"))
            {
                String f1 = System.IO.Path.GetFileNameWithoutExtension(fuImagePath.PostedFile.FileName);
                string savefile1 = Server.MapPath("../HomeSliderImages/") + f1 + strGuID + extn;
                string strPhoto = "HomeSliderImages/" + f1 + strGuID + extn;
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
    protected void gvHomePageSlider_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            gvHomePageSlider.DataBind();
            ClosrMessages();
            lblSuccess.Text = "Image Deleted Successfully! ";
            success.Style.Add("display", "block");

        }
    }
}